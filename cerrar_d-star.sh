#!/bin/bash
cd /home/pi/Desktop/
sudo mv D-STAR_ON /home/pi/

cd /home/pi/
sudo mv D-STAR_OFF /home/pi/Desktop/

sudo killall ircddbgateway
sudo killall dstarrepeater
sudo killall remotecontrol
sed -i "9c dstarrepeater=OFF" /home/pi/status.ini

