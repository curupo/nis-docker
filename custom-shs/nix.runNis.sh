#!/bin/bash

cd nis
nohup java -XX:InitialRAMPercentage=75 -XX:MaxRAMPercentage=75 -cp ".:./*:../libs/*" org.nem.deploy.CommonStarter &
cd -
