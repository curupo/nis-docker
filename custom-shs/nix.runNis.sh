#!/bin/bash

cd nis
#java -Xms4G -Xmx6G -cp ".:./*:../libs/*" org.nem.deploy.CommonStarter
nohup java -Xms8G -Xmx10G -cp ".:./*:../libs/*" org.nem.deploy.CommonStarter &
cd -
