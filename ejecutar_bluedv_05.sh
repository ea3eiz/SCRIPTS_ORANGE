#!/bin/bash

cd ~/SCRIPTS_ORANGE
sudo sh cerrar_bm_05.sh
sudo sh cerrar_plus_05.sh
#sudo sh cerrar_mmdvmLIBRE_30.sh
sudo sh cerrar_d-star_05.sh
sudo sh cerrar_ysf_05.sh
sudo sh cerrar_dstarrepeater_05.sh
sudo sh cerrar_solodstar_05.sh

sed -i "6c Exec=sh cerrar_bluedv_05.sh" ~/Desktop/BlueDV.Desktop
sed -i "7c Icon=/home/orangepi/SCRIPTS_ORANGE/BLUEDV_ON.png" ~/Desktop/BlueDV.Desktop
sed -i "8c Path=/home/orangepi/SCRIPTS_ORANGE" ~/Desktop/BlueDV.Desktop

cd ~/bluedv
mono BlueDV.exe
