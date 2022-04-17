#!/bin/bash

echo "***********************"
echo "*****PUSHING IMAGE*****"
echo "***********************"

IMAGE="maven-project"
PASS="@Pratik12"
BUILD_TAG=2780

echo "***LOGGING IN TO DOCKER***"
docker login -u pratikm2021 -p $PASS

echo "***TAGGING IMAGE***"
docker tag $IMAGE:$BUILD_TAG pratikm2021/$IMAGE:$BUILD_TAG

echo "***PUSHING IMAGE***"
docker push pratikm2021/$IMAGE:$BUILD_TAG
