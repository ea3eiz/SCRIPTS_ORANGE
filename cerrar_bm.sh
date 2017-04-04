#!/bin/bash
cd /home/orangepi/Desktop/
sudo mv BM-ON.desktop /home/orangepi/botones_on

cd /home/orangepi/botones_off
sudo mv BM-OFF.desktop /home/orangepi/Desktop/

sudo killall MMDVMBM
sed -i "7c MMDVMBM=OFF" /home/orangepi/status.ini


