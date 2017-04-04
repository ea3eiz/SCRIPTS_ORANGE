#!/bin/bash
cd /home/pi/Desktop/
sudo mv BM_ON /home/pi/

cd /home/pi/
sudo mv BM_OFF /home/pi/Desktop/

sudo killall MMDVMBM
sed -i "7c MMDVMBM=OFF" /home/pi/status.ini


