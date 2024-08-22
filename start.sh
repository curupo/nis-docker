#!/usr/bin/env bash

# Container Start
# Specify the memory to be allocated to nis docker for your environment.
docker run --memory="8G" --memory-swap="8G" --mount type=bind,source=/host/path/nis-docker/data,target=/home/nem/nem --restart always --name my_nis_container -t -d -p 7778:7778 -p 7880:7880 -p 7890:7890 my_nis_image

