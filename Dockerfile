##
# geojackass/mapserver-jpltd
#
# MapServer compiled with a broad range of options enabled including a
# comprehensive GDAL library.
#

FROM geojackass/mapserver-jpltd:latest

LABEL MAINTAINER SHOICHI OTOMO <geojackass.shoichi0129@gmail.com>

USER root

EXPOSE 80

# COPY DATA SETS
COPY data/ /usr/local/share/mapserver/examples/
COPY fonts/ /usr/local/share/mapserver/examples/
COPY geojackass.map /usr/local/share/mapserver/examples/

# Start the fcgi and web servers.
CMD ["/usr/local/bin/run.sh"]