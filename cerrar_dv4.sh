#!/bin/bash
cd /home/pi/SCRIPTS
sudo sh popus_DV4.sh
cd /home/pi/Desktop/
sudo mv DV4_ON /home/pi/
cd /home/pi/
sudo mv DV4_OFF /home/pi/Desktop/

sudo su | ps aux | grep dv4mini.exe | grep -v grep | awk '{print $2}' | xargs kill
sudo killall dv_serial
sudo killall python
