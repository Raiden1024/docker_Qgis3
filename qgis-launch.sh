#!/bin/bash

USERNAME=`basename $VHOME`
HOMENAME=`dirname $VHOME`

USERID=`ls -lahn $HOMENAME | grep $USERNAME | awk {'print $3'}`
GROUPID=`ls -lahn $HOMENAME | grep $USERNAME | awk {'print $4'}`

groupadd -g $GROUPID qgis
useradd --shell /bin/bash --uid $USERID --gid $GROUPID $USERNAME
su $USERNAME -c "/usr/bin/qgis"
