#!/bin/bash

docker pull azul/zulu-openjdk:10
docker-compose build --pull
