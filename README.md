# Mapserver in Docker Japan Limited

This is an Ubuntu derived image containing
[MapServer](http://www.mapserver.org/) running under the Nginx web server as a
FastCGI service.  Mapserver is compiled with a broad range of options, including
a comprehensive version of GDAL.

Each branch in the git repository corresponds to a supported Map server version
(e.g. `7.0.1`) with the master branch following MapServer master. These branch
names are reflected in the image tags on the Docker Hub.

## Usage

The HTTP endpoint for the MapServer `mapserv` CGI binary is the root URL at
`/`. This can be tested by mapping the web server's port `80` on the container
to port `8080` on the host:
```
# docker run -p 8080:80 geojackass/mapserver-jpltd
```

### Setup

You can then test using the included example mapfile by pointing your browser at
```
http://localhost:8080/?map=/usr/local/share/mapserver/examples/geojackass.map&mode=map
```

Destination URL, Using QGIS, Tableau, ArcGIS and more
```
http://localhost:8080/?map=/usr/local/share/mapserver/examples/geojackass.map
```

### Data Source Origin
- Hydrographic and Oceanographic Department(MLIT) <https://www1.kaiho.mlit.go.jp/copyright.html>.
-  National Land Information Division(MLIT) <https://nlftp.mlit.go.jp/index.html>.

License
=======
### Released under the MIT license
##### Copyright (c) 2021 Shoichi Otomo [@geojackass](https://twitter.com/geojackass)

- read under the MIT LICENSE  
[Open Source Initiative](http://opensource.org/licenses/mit-license.php)  

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:  

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.  

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
