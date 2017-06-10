#!/bin/sh

devops_folder=$(dirname $(readlink -f $0))
base_folder=$(dirname $devops_folder)

. $devops_folder/VARS.sh

docker stop $CONTAINER
docker rm $CONTAINER

docker run -d -h $HOST --name  $CONTAINER -p $DB_PORT:$DB_PORT -v $VOLUME:/var/lib/influxdb influxdb
docker logs -f $CONTAINER
