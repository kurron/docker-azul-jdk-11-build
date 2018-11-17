#!/bin/bash

# use the time as a tag
UNIXTIME=$(date +%F)

# docker tag SOURCE_IMAGE[:TAG] TARGET_IMAGE[:TAG]
docker tag docker-azul-jdk-11-build_azul-jdk-11:latest kurron/docker-azul-jdk-11-build:latest
docker tag docker-azul-jdk-11-build_azul-jdk-11:latest kurron/docker-azul-jdk-11-build:${UNIXTIME}
docker images

# Usage:  docker push [OPTIONS] NAME[:TAG]
docker push kurron/docker-azul-jdk-11-build:latest
docker push kurron/docker-azul-jdk-11-build:${UNIXTIME}
