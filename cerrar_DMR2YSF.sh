#!/bin/bash
sed -i '6c Exec=sudo sh -c "cd ~/SCRIPTS_ORANGE/;sh ejecutar_DMR2YSF.sh"' ~/Desktop/Abrir_DMR2YSF.desktop
sed -i "7c Icon=/home/orangepi/SCRIPTS_ORANGE/DMR2YSF.png" ~/Desktop/Abrir_DMR2YSF.desktop
sed -i "10c Name[es_ES]=Abrir DMR2YSF" ~/Desktop/Abrir_DMR2YSF.desktop

#sed -i "14c DMR2YSF=OFF" ~/status.ini

sudo killall MMDVMFUSION
sudo killall DMR2YSF
