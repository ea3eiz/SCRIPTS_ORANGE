#!/bin/bash

sed -i "6c Exec=sudo sh cerrar_YSF2DMR.sh" ~/Desktop/Abrir_YSF2DMR.desktop
sed -i "7c Icon=/home/pi/V30/YSF2DMR_ON.png" ~/Desktop/Abrir_YSF2DMR.desktop
sed -i "11c Name[es_ES]=Cerrar YSF2DMR" ~/Desktop/Abrir_YSF2DMR.desktop


cd ~/YSF2DMR

sudo lxterminal --geometry=80x12 -e ./YSF2DMR YSF2DMR.ini & 
cd ~/MMDVMHost
sudo ./MMDVMFUSION MMDVMFUSION.ini
