#!/bin/bash
cd "$(dirname "$0")/.."

AREA=${1:-romania}
MEMORY=${2:-48g}

echo "🏔️ Building Romania with FORCED Topo Features..."

JAR_PATH="/home/ovisopa/osm-station/src/planetiler-openmaptiles/target/planetiler-openmaptiles-3.16.1-SNAPSHOT-with-deps.jar"

java -Xmx48g -jar $JAR_PATH \
  --osm-path=data/$AREA-latest.osm.pbf \
  --output=data/${AREA}_custom_topo.pmtiles \
  --area=$AREA \
  --force \
  --transportation-z13-paths=true
