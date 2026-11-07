#!/bin/sh
# Rebuild responsive browser images from the original artwork.
set -eu
cd "$(dirname "$0")"
cwebp -q 82 -m 6 -metadata none assets/map-tiles.png -o assets/map-tiles.webp
cwebp -q 82 -m 6 -metadata none -resize 640 0 assets/map-tiles.png -o assets/map-tiles-640.webp
