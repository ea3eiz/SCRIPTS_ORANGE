#!/bin/bash

#sed -i "6c Exec=sudo sh cerrar_solofusion.sh" /home/pi/Desktop/AbrirsoloYSF.desktop
#sed -i "7c Icon=/home/pi/V30/SOLO_YSF_ON.png" /home/pi/Desktop/AbrirsoloYSF.desktop
#sed -i "11c Name[es_ES]=Cerrar solo FUSION" /home/pi/Desktop/AbrirsoloYSF.desktop


cd ~/YSF2DMR

sudo lxterminal --geometry=80x12 -e ./YSF2DMR YSF2DMR.ini & 
cd ~/MMDVMHost
sudo ./MMDVMFUSION MMDVMFUSION.ini
