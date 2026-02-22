#!/bin/bash

BUILD_DIR=~/osm-station/icons/_build

rm -rf $BUILD_DIR
mkdir -p $BUILD_DIR

cp ~/osm-station/icons/openmaptiles/*.svg $BUILD_DIR/
cp ~/osm-station/icons/temaki/*.svg $BUILD_DIR/

spreet $BUILD_DIR ~/osm-station/sprites/sprite.png
spreet --retina $BUILD_DIR ~/osm-station/sprites/sprite@2x.png
