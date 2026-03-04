#!/bin/bash

# 1. Define the absolute paths (Make sure these folders exist!)
BUILD_DIR="/home/ovisopa/osm-station/icons/_build"
OUTPUT_DIR="/home/ovisopa/osm-station/sprites"

# 2. Cleanup and Copy
rm -rf "$BUILD_DIR"
mkdir -p "$BUILD_DIR"

cp /home/ovisopa/osm-station/icons/openmaptiles/*.svg "$BUILD_DIR/"
cp /home/ovisopa/osm-station/icons/temaki/*.svg "$BUILD_DIR/"
cp /home/ovisopa/osm-station/icons/osmc/*.svg "$BUILD_DIR/"

# 3. Generate Sprites (Note: no .png at the end)
echo "Building sprites into $OUTPUT_DIR..."
spreet "$BUILD_DIR" "$OUTPUT_DIR/sprite"
spreet --retina "$BUILD_DIR" "$OUTPUT_DIR/sprite@2x"

# 4. Final Verification
echo "Verification: Does spring exist in the new JSON?"
grep "spring" "$OUTPUT_DIR/sprite.json"
