#!/bin/bash

docker pull azul/zulu-openjdk:11
docker-compose build --pull
