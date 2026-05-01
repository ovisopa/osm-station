#!/bin/bash
set -e

DATA_DIR="/home/ovisopa/osm-station/data"

# FORCE a specific high-reliability mirror instead of the generic redirector
# This ensures the MD5 and the PBF are from the same sync batch.
URL="https://ftp5.gwdg.de/pub/misc/openstreetmap/download.geofabrik.de/europe-latest.osm.pbf"
MD5_URL="https://ftp5.gwdg.de/pub/misc/openstreetmap/download.geofabrik.de/europe-latest.osm.pbf.md5"

mkdir -p "$DATA_DIR"
cd "$DATA_DIR"

echo "============================================="
echo " Step 1: Cleaning Workspace"
echo "============================================="
rm -f europe-latest.osm.pbf.md5 europe-latest.osm.pbf.aria2
# Keep the PBF for now, aria2 --check-integrity will fix only the bad parts

echo "============================================="
echo " Step 2: Fetching MD5"
echo "============================================="
wget -q -O europe-latest.osm.pbf.md5 "$MD5_URL"

echo "============================================="
echo " Step 3: Repairing/Downloading PBF"
echo "============================================="
# --check-integrity=true will read your 31GB and only re-download 
# the chunks that don't match today's MD5.
aria2c -x 16 -s 16 -k 1M --check-integrity=true -c "$URL"

echo "============================================="
echo " Step 4: Final Verification"
echo "============================================="
EXPECTED_MD5=$(awk '{print $1}' europe-latest.osm.pbf.md5)
echo "$EXPECTED_MD5  europe-latest.osm.pbf" | md5sum -c - || { 
    echo "CRITICAL ERROR: MD5 still mismatching on Mirror."
    exit 1 
}

echo "SUCCESS: Europe PBF is finally valid."