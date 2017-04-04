#!/bin/bash
cd /home/pi/Desktop/
sudo mv PLUS_ON /home/pi/

cd /home/pi/
sudo mv PLUS_OFF /home/pi/Desktop/

sudo killall MMDVMPLUS
sed -i "6c MMDVMPLUS=OFF" /home/pi/status.ini
