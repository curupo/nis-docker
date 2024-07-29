#!/bin/bash

cd nis
java -XX:InitialRAMPercentage=75 -XX:MaxRAMPercentage=75 -cp ".:./*:../libs/*" org.nem.deploy.CommonStarter
cd -
