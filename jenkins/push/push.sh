#!/bin/bash

echo "******************************"
echo "*** Pushing Docker Image *****"
echo "******************************"

IMAGE="maven-project"

echo "******Loggin in*********"
docker login -u littoa13 -p $PASS

echo "*******Tagging Image*********"
docker tag $IMAGE:$BUILD_TAG littoa13/$IMAGE:$BUILD_TAG

echo "******Pushing Image*********"
docker push littoa13/$IMAGE:$BUILD_TAG 


