#!/usr/bin/env bash

# we rebuild and remove existing container every time. 
# The benefits: upgrades are automatic after the git pull
docker build --rm=false -t my_servant_image .
docker ps -a | grep my_servant_container > /dev/null && docker rm my_servant_container

# Build
docker build -t my_servant_image ./.docker/servant

