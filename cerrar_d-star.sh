#!/bin/bash
cd /home/orangepi/Desktop/
sudo mv D-STAR-ON.desktop /home/orangepi/botones_on

cd /home/orangepi/botones_off
sudo mv D-STAR-OFF.desktop /home/orangepi/Desktop/

sudo killall ircddbgateway
sudo killall dstarrepeater
sudo killall remotecontrol
sed -i "9c dstarrepeater=OFF" /home/orangepi/status.ini

