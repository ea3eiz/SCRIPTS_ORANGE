#!/bin/bash
cd /home/orangepi/Desktop/
sudo mv DMR+_ON.desktop /home/orangepi/botones_on

cd /home/pi/botones_off
sudo mv DMR+_OFF.desktop /home/orangepi/Desktop/

sudo killall MMDVMPLUS
sed -i "6c MMDVMPLUS=OFF" /home/orangepi/status.ini
