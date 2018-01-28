#!/bin/bash

sed -i "6c Exec=sh -c 'cd /home/pi/V30/;lxterminal --geometry=80x20 -e sudo sh ejecutar_solofusion.sh'" /home/pi/Desktop/AbrirsoloYSF.desktop
sed -i "7c Icon=/home/pi/V30/SOLO_YSF.png" /home/pi/Desktop/AbrirsoloYSF.desktop
sed -i "11c Name[es_ES]=Abrir solo FUSION" /home/pi/Desktop/AbrirsoloYSF.desktop

sudo killall MMDVMFUSION
sudo killall YSFGateway
