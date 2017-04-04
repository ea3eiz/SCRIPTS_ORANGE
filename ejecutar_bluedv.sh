#!/bin/bash
cd /home/pi/Desktop/
sudo mv BLUEDV_OFF /home/pi/

cd /home/pi/
sudo mv BLUEDV_ON /home/pi/Desktop/

cd /home/pi/SCRIPTS
sudo sh cerrar_bm.sh
sudo sh cerrar_plus.sh
sudo sh cerrar_d-star.sh
sudo sh cerrar_ysf.sh
sed -i "2c BlueDV=ON" /home/pi/status.ini
cd /usr/local/bluedv/
mono BlueDV.exe
