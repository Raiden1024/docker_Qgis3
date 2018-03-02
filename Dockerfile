FROM ubuntu:artful

MAINTAINER Franck WIATROWSKI

RUN apt-get update -y
RUN apt-get upgrade -y
RUN apt-get install gnupg apt-transport-https ca-certificates -y
RUN echo "deb [trusted=yes] http://qgis.org/debian artful main" >> /etc/apt/sources.list

RUN apt-get update
RUN apt-get install -y --allow-unauthenticated qgis python-qgis qgis-provider-grass locales locales-all 
RUN rm -rf /var/lib/apt/lists/*

ADD qgis-launch.sh /qgis-launch.sh

CMD /qgis-launch.sh
