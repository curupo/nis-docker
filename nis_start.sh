#!/usr/bin/env bash

# Container Start
docker run --name my_nis_container -d -p 7778:7778 -p 7890:7890 my_nis_image

