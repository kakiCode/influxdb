#!/bin/sh

NAME=influxdb
IMAGE=$NAME
DOCKER_HUB_IMG=caquicode/$NAME


echo "going to use a third party image\n...pulling it "
docker pull $IMAGE

echo "going to push image $IMAGE to docker hub..."
docker tag $IMAGE $DOCKER_HUB_IMG
docker push $DOCKER_HUB_IMG

echo "... done."