# docker_Qgis3
https://hub.docker.com/r/copernic1024/qgis3-desktop/

Docker Image to launch qgis3 on différents linux platform.
Tested on CentOS 7.4.
To use it:

Create a script in /usr/bin or /usr/local/bin with the following content:

#!/bin/sh
username=basename $HOME

docker run --rm \
-i -t \
-v ${HOME}:/home/${USER_NAME} \
-v /tmp/.X11-unix:/tmp/.X11-unix \
-e DISPLAY=unix$DISPLAY \
-e VHOME=${HOME} \
--net=host \
copernic1024/qgis3-desktop



