#!/bin/bash

BUILD_TAG=2780
PASS="@Pratik12@"

echo maven-project > /tmp/.auth
echo $BUILD_TAG >> /tmp/.auth
echo $PASS >> /tmp/.auth

#WORKSPACE=/home/administrator/jenkins-data/jenkins_home/workspace/pipeline-docker-maven

scp -i /opt/ubuntu.pem /tmp/.auth ubuntu@13.126.149.60:/tmp/.auth
scp -i /opt/ubuntu.pem ./jenkins/deploy/publish.sh ubuntu@13.126.149.60:/tmp/publish.sh
