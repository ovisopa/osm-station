#!/bin/bash
set -e

# Tracking start time
START_TIME=$(date +%s)

BASE_DIR="/home/ovisopa/osm-station"
SRC_DIR="$BASE_DIR/src/planetiler-openmaptiles"
JAR="$SRC_DIR/target/planetiler-openmaptiles-3.16.1-SNAPSHOT-with-deps.jar"
OSM_PBF="$BASE_DIR/data/europe-latest.osm.pbf"
OUTPUT="$BASE_DIR/data/europe_custom.pmtiles"
TMP_DIR="$BASE_DIR/data/tmp"

echo "============================================="
echo " Step 1: Pre-run Checks"
echo "============================================="
# Clear old temp files to ensure 1TB NVMe has full space
if [ -d "$TMP_DIR" ]; then
    echo "Cleaning old temporary files..."
    rm -rf "$TMP_DIR"
fi
mkdir -p "$TMP_DIR"

# Verify MD5 before starting
echo "Verifying MD5..."
cd "$BASE_DIR/data"
echo "$(awk '{print $1}' europe-latest.osm.pbf.md5)  europe-latest.osm.pbf" | md5sum -c - || { echo "MD5 Failed! Aborting."; exit 1; }

echo "============================================="
echo " Step 2: Building planetiler jar..."
echo "============================================="
cd "$SRC_DIR"
mvn clean package -DskipTests

echo "============================================="
echo " Step 3: Generating Europe PMTiles (Estimated 1-1.5h)"
echo "============================================="
cd "$BASE_DIR"
java -Xmx50g -jar "$JAR" \
  --osm-path="$OSM_PBF" \
  --output="$OUTPUT" \
  --force \
  --tmpdir="$TMP_DIR" \
  --transportation-z13-paths=true

# Cleanup temp files after success
rm -rf "$TMP_DIR"

END_TIME=$(date +%s)
DURATION=$(( (END_TIME - START_TIME) / 60 ))

echo "============================================="
echo " Done! Europe build completed in $DURATION minutes."
echo " Restarting martin..."
sudo systemctl restart martin
