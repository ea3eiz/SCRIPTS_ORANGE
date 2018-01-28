#!/bin/bash

#sed -i "6c Exec=sudo sh cerrar_YSF2DMR.sh" ~/Desktop/Abrir_YSF2DMR.desktop
#sed -i "7c Icon=/home/orangepi/SCRIPTS_ORANGE/YSF2DMR_ON.png" ~/Desktop/Abrir_YSF2DMR.desktop
#sed -i "11c Name[es_ES]=Cerrar YSF2DMR" ~/Desktop/Abrir_YSF2DMR.desktop


cd ~/YSF2DMR


sudo mate-terminal -x ./YSF2DMR YSF2DMR.in & cd ~/MMDVMHost
sudo mate-terminal -x ./MMDVMFUSION MMDVMFUSION.ini


