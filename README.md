Simple example demonstrating the conversion of an [Ordnance Survey](1) OpenData
ESRI shapefile into Mapbox Vector Tiles using [tippecanoe](2).

```bash
   cd polygons
   ./run.sh

   mbview Boundary-line-historic-counties_region.mbtiles
```

Note:

1) the polygons/generated directory contains precomputed output

2) ogr2ogr is required for run.sh

3) [tippecanoe](2) creates an mbtiles (SQLite) file that can be viewed using
[mbview](3).

Contains OS data © Crown copyright and database right 2016

[1]: https://www.ordnancesurvey.co.uk/
[2]: https://github.com/mapbox/tippecanoe/
[3]: https://github.com/mapbox/mbview/
