#!/bin/bash

# geojson conversion
function shp2geojson() {
  ogr2ogr -f GeoJSON -t_srs crs:84 "$1.geojson" "$1.shp"
}

# unzip all files in a directory
for var in *.zip; do unzip "$var"; done

# convert all shapefiles
for var in *.shp; do shp2geojson ${var%\.*}; done

# convert geojson to mbtiles
for var in *.geojson; do tippecanoe -o ${var%\.*}.mbtiles ${var}; done

# convert geojson to z12 mbtiles
for var in *.geojson; do tippecanoe -Z12 -z12 -o ${var%\.*}z12.mbtiles ${var}; done

# cleanup intermediary files
rm *.geojson *.dbf *.shp *.shx *.prj
