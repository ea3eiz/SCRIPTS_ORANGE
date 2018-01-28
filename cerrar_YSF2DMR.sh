#!/bin/bash

sed -i "6c Exec=sh -c 'cd /home/pi/V30/;lxterminal --geometry=80x20 -e sudo sh ejecutar_YSF2DMR.sh'" /home/pi/Desktop/AbrirsoloYSF.desktop
sed -i "7c Icon=/home/pi/V30/YSF2DMR.png" /home/pi/Desktop/AbrirsoloYSF.desktop
sed -i "11c Name[es_ES]=Abrir YSF2DMR" /home/pi/Desktop/AbrirsoloYSF.desktop

sudo killall MMDVMFUSION
sudo killall YSF2DMR
