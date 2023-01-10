#!/bin/bash

echo "WELCOME $USER on $HOSTNAME"
echo "#########################################"

FREERAM=$(free -m | grep Mem | awk '{print $4}')
LOAD=`uptime | awk '{print $9}'`
ROOTFREE=$(df -h | grep '/dev/sdal' | awk '{print $4}')



echo "#####################################################"
echo "AVAILABLE free RAM is $FREERAM MB "
echo "#####################################################"
echo "CURRENT LOAD Average $LOAD"
echo "#####################################################"
echo "Free ROOT partition size is $ROOTFREE"
