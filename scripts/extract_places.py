#!/home/ovisopa/osm-station/venv/bin/python3

import osmium
import json
import requests
import sys
import time

MEILISEARCH_URL  = 'http://127.0.0.1:7700'
MEILISEARCH_KEY  = 'O8Plk_1VtO-UY3w9Jk4szgISvdok'
INDEX            = 'places'
BATCH_SIZE       = 5000
PBF_FILE         = sys.argv[1] if len(sys.argv) > 1 else \
                   '/home/ovisopa/osm-station/data/romania-latest.osm.pbf'

# OSM tags we care about — anything with a name + one of these keys
WANTED = {
    'place':    ['city','town','village','hamlet','suburb','neighbourhood','island'],
    'natural':  ['peak','saddle','spring','waterfall','cave_entrance','cliff','volcano','glacier'],
    'tourism':  ['viewpoint','alpine_hut','camp_site','hotel','attraction','museum','information'],
    'amenity':  ['restaurant','shelter','charging_station','fuel','parking','hospital','pharmacy'],
    'waterway': ['river','stream','waterfall'],
    'highway':  ['motorway','trunk','primary','secondary','pass'],
    'leisure':  ['nature_reserve','park','sports_centre'],
    'sport':    ['climbing'],
    'man_made': ['communications_tower'],
    'historic': ['castle','ruins','monument','memorial'],
    'mountain_pass': ['yes'],
}

def wanted_type(tags):
    for key, values in WANTED.items():
        if key in tags and (tags[key] in values or values == ['yes']):
            return key, tags[key]
    return None, None

def category_for(key):
    return {
        'place':    'place',
        'natural':  'natural',
        'tourism':  'tourism',
        'amenity':  'amenity',
        'waterway': 'water',
        'highway':  'road',
        'leisure':  'leisure',
        'sport':    'sport',
        'man_made': 'infrastructure',
        'historic': 'historic',
        'mountain_pass': 'natural',
    }.get(key, key)


class PlaceExtractor(osmium.SimpleHandler):
    def __init__(self):
        super().__init__()
        self.batch   = []
        self.total   = 0
        self.skipped = 0

    def _flush(self):
        if not self.batch:
            return
        headers = {
            'Authorization': f'Bearer {MEILISEARCH_KEY}',
            'Content-Type':  'application/json',
        }
        r = requests.post(
            f'{MEILISEARCH_URL}/indexes/{INDEX}/documents',
            headers=headers,
            data=json.dumps(self.batch),
        )
        if r.status_code not in (200, 202):
            print(f'  [!] Meilisearch error: {r.status_code} {r.text[:200]}')
        self.batch = []

    def _add(self, doc):
        self.batch.append(doc)
        self.total += 1
        if len(self.batch) >= BATCH_SIZE:
            print(f'  Flushing batch — total so far: {self.total}')
            self._flush()

    def node(self, n):
        if not n.location.valid():
            return
        name = n.tags.get('name')
        if not name:
            return
        key, value = wanted_type(n.tags)
        if not key:
            return
        doc = {
            'id':       f'n{n.id}',
            'name':     name,
            'type':     value,
            'category': category_for(key),
            '_geo':     {'lat': round(n.location.lat, 6),
                         'lng': round(n.location.lon, 6)},
        }
        alt = n.tags.get('alt_name') or n.tags.get('name:en')
        if alt:
            doc['alt_name'] = alt
        ele = n.tags.get('ele')
        if ele:
            try:
                doc['ele'] = int(float(ele))
            except ValueError:
                pass
        self._add(doc)

    def way(self, w):
        name = w.tags.get('name')
        if not name:
            return
        key, value = wanted_type(w.tags)
        if not key:
            return
        # Centroid: average of available node locations
        lats, lons = [], []
        for n in w.nodes:
            if n.location.valid():
                lats.append(n.location.lat)
                lons.append(n.location.lon)
        if not lats:
            self.skipped += 1
            return
        doc = {
            'id':       f'w{w.id}',
            'name':     name,
            'type':     value,
            'category': category_for(key),
            '_geo':     {'lat': round(sum(lats)/len(lats), 6),
                         'lng': round(sum(lons)/len(lons), 6)},
        }
        alt = w.tags.get('alt_name') or w.tags.get('name:en')
        if alt:
            doc['alt_name'] = alt
        self._add(doc)

    def done(self):
        self._flush()
        print(f'\nDone. Extracted: {self.total}  Skipped (no coords): {self.skipped}')


if __name__ == '__main__':
    print(f'Reading: {PBF_FILE}')
    print(f'Target:  {MEILISEARCH_URL}/indexes/{INDEX}')
    start = time.time()
    h = PlaceExtractor()
    # locations=True needed for way centroids
    h.apply_file(PBF_FILE, locations=True, idx='flex_mem')
    h.done()
    print(f'Time: {int(time.time()-start)}s')

