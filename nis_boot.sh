#!/usr/bin/env bash

# NIS Boot
docker exec --user=nem -i my_nis_container bash -c "cd /home/nem/package && ./nix.runNis.sh"
