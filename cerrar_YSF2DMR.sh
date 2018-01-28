#!/bin/bash

sed -i "6c Exec=sh -c 'cd /home/pi/V30/;lxterminal --geometry=80x20 -e sudo sh ejecutar_YSF2DMR.sh'" ~/Desktop/Abrir_YSF2DMR.desktop
sed -i "7c Icon=/home/pi/V30/YSF2DMR.png" ~/Desktop/Abrir_YSF2DMR.desktop
sed -i "11c Name[es_ES]=Abrir YSF2DMR" ~/Desktop/Abrir_YSF2DMR.desktop

sudo killall MMDVMFUSION
sudo killall YSF2DMR
