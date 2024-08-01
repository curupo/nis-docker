#!/usr/bin/env bash

nis_ps_count=`ps aux | grep org.nem.deploy.CommonStarter | grep -v grep | wc -l`
if [ $nis_ps_count = 0 ]; then
  /home/nem/nis-docker/nis_boot.sh
fi

servant_ps_count=`ps aux | grep org.nem.rewards.servant.NodeRewardsServant | grep -v grep | wc -l`
if [ $servant_ps_count = 0 ]; then
  /home/nem/nis-docker/servant_boot.sh
fi
