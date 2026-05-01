#!/bin/bash
# =============================================================================
# generate-tiles.sh
# Builds the planetiler jar and generates Romania PMTiles
# =============================================================================

set -e  # exit on any error

BASE_DIR="/home/ovisopa/osm-station"
SRC_DIR="$BASE_DIR/src/planetiler-openmaptiles"
JAR="$SRC_DIR/target/planetiler-openmaptiles-3.16.1-SNAPSHOT-with-deps.jar"
OSM_PBF="$BASE_DIR/data/romania-latest.osm.pbf"
OUTPUT="$BASE_DIR/data/romania_custom_v2.pmtiles"

echo "============================================="
echo " Step 1: Building planetiler jar..."
echo "============================================="
cd "$SRC_DIR"
mvn clean package -DskipTests

echo ""
echo "============================================="
echo " Step 2: Generating PMTiles..."
echo "============================================="
cd "$BASE_DIR"
java -Xmx48g -jar "$JAR" \
  --osm-path="$OSM_PBF" \
  --output="$OUTPUT" \
  --force \
  --transportation-z13-paths=true

echo ""
echo "============================================="
echo " Done! Output: $OUTPUT"
echo "============================================="
echo ""
echo "Restarting martin tile server..."
sudo systemctl restart martin
echo "Martin restarted successfully!"
