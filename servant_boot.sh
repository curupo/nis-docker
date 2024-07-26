#!/usr/bin/env bash

# Servant Boot
docker exec --user=nem my_nis_container /bin/bash -c "cd /home/nem/servant && ./startservant.sh"

