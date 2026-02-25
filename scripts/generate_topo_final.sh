#!/bin/bash
cd "$(dirname "$0")/.."

AREA=${1:-romania}
MEMORY=${2:-48g}

echo "🏔️ Building Romania with FORCED Topo Features..."

java -Xmx$MEMORY -jar bin/planetiler.jar \
  --osm-path=data/$AREA-latest.osm.pbf \
  --output=data/${AREA}_final.pmtiles \
  --nodemap-type=sparsearray \
  --storage=mmap \
  --area=$AREA \
  --force \
  --transportation-z13-paths=true \
  --extra-name-tags=natural,man_made,waterway,amenity,historic \
  --include-tags=true \
  --keep-tags=natural,man_made,waterway,amenity,historic \
  --all-names=true \
  --schema=configs/topo.yml
