#!/bin/bash

sed -i "6c Exec=mate-terminal -x sh cerrar_YSF2DMR.sh" ~/Desktop/Abrir_YSF2DMR.desktop
sed -i "7c Icon=/home/orangepi/SCRIPTS_ORANGE/YSF2DMR_ON.png" ~/Desktop/Abrir_YSF2DMR.desktop
sed -i "10c Name[es_ES]=Cerrar YSF2DMR" ~/Desktop/Abrir_YSF2DMR.desktop


sed -i "14c YSF2DMR=ON" ~/status.ini

cd ~/YSF2DMR


sudo mate-terminal -x ./YSF2DMR YSF2DMR.ini & 
cd ~/MMDVMHost
sudo mate-terminal -x ./MMDVMFUSION MMDVMFUSION.ini


