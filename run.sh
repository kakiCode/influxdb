#!/bin/sh

NAME=influxdb
VOLUME=/tmp
PORT=8086
CONTAINER=$NAME
HOST=$CONTAINER
IMAGE=$NAME
DOCKER_HUB_IMG=caquicode/$NAME

docker stop $CONTAINER
docker rm $CONTAINER

docker run -d -h $HOST --name $CONTAINER -p $PORT:$PORT -v $VOLUME:/var/lib/influxdb $DOCKER_HUB_IMG
#docker logs -f $CONTAINER
