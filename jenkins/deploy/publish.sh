#!/bin/bash

IMAGE='maven-project'
TAG=2780
PASS='@Pratik12@'

docker login -u pratikm2021 -p $PASS
cd ~/maven && docker-compose up -d
