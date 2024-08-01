#!/bin/bash

nohup java -Xms256M -Xmx256M -cp ".:jars/*" org.nem.rewards.servant.NodeRewardsServant &
