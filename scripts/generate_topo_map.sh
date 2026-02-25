#!/bin/bash
cd "$(dirname "$0")/.."

AREA=${1:-romania}
MEMORY=${2:-48g}

echo "🔥 Starting DEEP TOPO BUILD for $AREA..."

# 1. We use 'sparsearray' (supported) instead of 'sparsehash'
# 2. We enable built-in outdoor flags like 'transportation_z13_paths'
java -Xmx$MEMORY -jar bin/planetiler.jar \
  --osm-path=data/$AREA-latest.osm.pbf \
  --output=data/${AREA}_topo.pmtiles \
  --nodemap-type=sparsearray \
  --storage=mmap \
  --area=$AREA \
  --force \
  --transportation-z13-paths=true \
  --transportation-name-limit-merge=false \
  --building-merge-z13=false
