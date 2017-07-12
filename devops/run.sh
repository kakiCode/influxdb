#!/bin/sh

devops_folder=$(dirname $(readlink -f $0))
base_folder=$(dirname $devops_folder)

. $devops_folder/VARS.sh

docker stop $CONTAINER
docker rm $CONTAINER
docker pull $IMAGE
docker run -d -h $HOST --name $CONTAINER -p $PORT:$PORT -v $VOLUME:/var/lib/influxdb $IMAGE
docker logs -f $CONTAINER
