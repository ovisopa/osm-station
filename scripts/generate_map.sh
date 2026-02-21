#!/bin/bash
# Move to the project root
cd "$(dirname "$0")/.."

# Default to Bucharest for the test, but we can change this later
AREA=${1:-bucharest}
MEMORY=${2:-4g}

echo "Building map for: $AREA with $MEMORY RAM..."

java -Xmx$MEMORY -jar bin/planetiler.jar \
  --osm-path=data/$AREA-latest.osm.pbf \
  --output=data/$AREA.pmtiles \
  --area=$AREA \
  --force

echo "Done! Output saved to data/$AREA.pmtiles"
