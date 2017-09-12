#!/bin/bash

cd /home/pi/V30
sudo sh cerrar_bm_30.sh
sudo sh cerrar_plus_30.sh
#sudo sh cerrar_mmdvmLIBRE_30.sh
sudo sh cerrar_d-star_30.sh
sudo sh cerrar_ysf_30.sh
sudo sh cerrar_dstarrepeater_30.sh
sudo sh cerrar_solodstar_04.sh

sed -i "2c BlueDV=ON" /home/pi/status.ini
sed -i "4c Exec=sh -c 'cd /home/pi/V30; sudo sh cerrar_bluedv_05.sh'" /home/pi/Desktop/Abrir_BlueDV
sed -i "5c Icon=/home/pi/V30/BLUEDV_ON.png" /home/pi/Desktop/Abrir_BlueDV
sed -i "10c Name[es_ES]=Cerrar BlueDV" /home/pi/Desktop/Abrir_BlueDV

cd /home/pi/bluedv/
mono BlueDV.exe
