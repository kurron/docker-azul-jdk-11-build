#!/bin/bash

# use the time as a tag
UNIXTIME=$(date +%s)

# docker tag SOURCE_IMAGE[:TAG] TARGET_IMAGE[:TAG]
docker tag docker-azul-jdk-10-build_azul-jdk-10:latest kurron/docker-azul-jdk-10-build:latest
docker tag docker-azul-jdk-10-build_azul-jdk-10:latest kurron/docker-azul-jdk-10-build:${UNIXTIME}
docker images

# Usage:  docker push [OPTIONS] NAME[:TAG]
docker push kurron/docker-azul-jdk-10-build:latest
docker push kurron/docker-azul-jdk-10-build:${UNIXTIME}
