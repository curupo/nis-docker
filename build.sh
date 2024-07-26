#!/usr/bin/env bash

# we rebuild and remove existing container every time. 
# The benefits: upgrades are automatic after the git pull
docker build --rm=false -t my_nis_image  .
docker ps -a | grep my_nis_container > /dev/null && docker rm my_nis_container

# Build
docker build -t my_nis_image .

# Container Boot
docker run --restart always --name my_nis_container -t -d -p 7778:7778 -p 7880:7880 -p 7890:7890 my_nis_image

