#!/bin/sh
cpuTemp0=$(cat /sys/class/thermal/thermal_zone0/temp)
cpuTemp1=$(($cpuTemp0/1000))
cpuTemp2=$(($cpuTemp0/100))
cpuTempM=$(($cpuTemp2 % $cpuTemp1))

echo "cpuTemp1: " + $cpuTemp1
if [ $cpuTemp1 -ge 40 ]
then
    sudo /home/pi/workspace/cooling/cooling_switch o
else
    sudo /home/pi/workspace/cooling/cooling_switch x
fi
