#!/bin/bash

cd ~/SCRIPTS_ORANGE
sudo sh cerrar_bm_05.sh
sudo sh cerrar_plus_05.sh
#sudo sh cerrar_mmdvmLIBRE_30.sh
sudo sh cerrar_d-star_05.sh
sudo sh cerrar_ysf_05.sh
sudo sh cerrar_dstarrepeater_05.sh
sudo sh cerrar_solodstar_05.sh

#sed -i "2c BlueDV=ON" ~/status.ini
#sed -i "4c Exec=sh -c 'cd ~/V30; sudo sh cerrar_bluedv_05.sh'" ~/Desktop/Abrir_BlueDV
#sed -i "5c Icon=~/V30/BLUEDV_ON.png" ~/Desktop/Abrir_BlueDV
#sed -i "10c Name[es_ES]=Cerrar BlueDV" ~/Desktop/Abrir_BlueDV

cd ~/OpenDV
mono BlueDV.exe
