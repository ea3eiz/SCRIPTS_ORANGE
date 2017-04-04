#!/bin/bash

cd /home/pi/SCRIPTS
sudo sh cerrar_ysf.sh
sudo sh cerrar_bm.sh
sudo sh cerrar_plus.sh

sed -i "9c dstarrepeater=ON" /home/pi/status.ini

cd /home/pi/SCRIPTS
sudo sh popus_D-STAR.sh
cd /home/pi/Desktop/
sudo mv D-STAR_OFF /home/pi/

cd /home/pi/
sudo mv D-STAR_ON /home/pi/Desktop/

sudo dstarrepeater
sudo ircddbgateway -gui

