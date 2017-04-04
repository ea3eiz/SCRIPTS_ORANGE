#!/bin/bash


cd /home/pi/SCRIPTS
sudo sh popus_BLUEDV.sh
cd /home/pi/Desktop/
sudo mv BLUEDV_ON /home/pi/
cd /home/pi/
sudo mv BLUEDV_OFF /home/pi/Desktop/

sed -i "2c BlueDV=OFF" /home/pi/status.ini

sudo su | ps aux | grep BlueDV.exe | grep -v grep | awk '{print $2}' | xargs kill

 
