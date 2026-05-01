#!/bin/bash

# ==============================================================================
# "Track the Wild" Tile Generation & Atomic Swap Script
# Purpose: Generate PMTiles on staging and swap symlinks to avoid downtime.
# ==============================================================================

# Exit immediately if a command exits with a non-zero status
set -e

# --- Configuration ---
BASE_DIR="/home/ovisopa/osm-station"
SRC_DIR="$BASE_DIR/src/planetiler-openmaptiles"
JAR="$SRC_DIR/target/planetiler-openmaptiles-3.16.1-SNAPSHOT-with-deps.jar"
OSM_PBF="$BASE_DIR/data/europe-latest.osm.pbf"
TMP_DIR="$BASE_DIR/data/tmp"

# Naming Logic
TIMESTAMP=$(date +%Y%m%d_%H%M%S)
NEW_OUTPUT="$BASE_DIR/data/europe_custom_$TIMESTAMP.pmtiles"
STABLE_LINK="$BASE_DIR/data/europe_custom.pmtiles"

# Tracking start time
START_TIME=$(date +%s)

echo "============================================="
echo " Step 1: Pre-run Checks & Cleanup"
echo "============================================="
if [ -d "$TMP_DIR" ]; then
    echo "Cleaning old temporary files..."
    rm -rf "$TMP_DIR"
fi
mkdir -p "$TMP_DIR"

# Verify MD5 before starting
echo "Verifying MD5 for $OSM_PBF..."
cd "$BASE_DIR/data"
# Assumes the md5 file contains: hash  filename
echo "$(awk '{print $1}' europe-latest.osm.pbf.md5)  europe-latest.osm.pbf" | md5sum -c - || { 
    echo "CRITICAL: MD5 Verification Failed! Your source PBF might be corrupted."; 
    exit 1; 
}

echo "============================================="
echo " Step 2: Building Planetiler Jar"
echo "============================================="
cd "$SRC_DIR"
mvn clean package -DskipTests

echo "============================================="
echo " Step 3: Generating Tiles (Staging)"
echo " Target: $NEW_OUTPUT"
echo "============================================="
cd "$BASE_DIR"
java -Xmx40g -jar "$JAR" \
  --osm-path="$OSM_PBF" \
  --output="$NEW_OUTPUT" \
  --force \
  --tmpdir="$TMP_DIR" \
  --transportation-z13-paths=true

echo "============================================="
echo " Step 4: Atomic Swap & Service Restart"
echo "============================================="
# Create or update the symbolic link to point to the new file
# -s: symbolic, -f: force, -n: treat link as a normal file
ln -sfn "$NEW_OUTPUT" "$STABLE_LINK"

echo "Restarting Martin Tile Server..."
sudo systemctl restart martin

echo "============================================="
echo " Step 5: Post-Success Cleanup"
echo "============================================="
# Remove the temp directory
rm -rf "$TMP_DIR"

# Optional: Keep only the 3 most recent pmtiles files to save NVMe space
echo "Cleaning up old pmtiles files (keeping 3 latest)..."
cd "$BASE_DIR/data"
ls -t europe_custom_*.pmtiles | tail -n +4 | xargs -r rm --

END_TIME=$(date +%s)
DURATION=$(( (END_TIME - START_TIME) / 60 ))

echo "============================================="
echo " SUCCESS: Build and Swap completed in $DURATION minutes."
echo " Active File: $(readlink -f $STABLE_LINK)"
echo "============================================="