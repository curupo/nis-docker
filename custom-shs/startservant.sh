#!/bin/bash

#java -Xms256M -Xmx256M -cp ".:jars/*" org.nem.rewards.servant.NodeRewardsServant
nohup java -Xms256M -Xmx256M -cp ".:jars/*" org.nem.rewards.servant.NodeRewardsServant &
