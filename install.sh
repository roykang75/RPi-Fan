#!/bin/bash

chmod +x *.sh

echo "building.."
./build.sh

echo "registing to crontab."
SCRIPTPATH=$( cd "$(dirname "$0")" ; pwd )

echo $SCRIPTPATH

CRONTABPARAM=$("*/1 * * * * ")
#CRONTABPARAM="*/1 * * * * sh "+$SCRIPTPATH
#CRONTABPARAM=$CRONTABPARAM$SCRIPTPATH"/temperature.sh"
echo $CRONTABPARAM

