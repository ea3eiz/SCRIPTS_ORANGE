#!/bin/bash
sed -i '6c Exec=sudo sh -c "cd /home/orangepi/SCRIPTS_ORANGE/;sh ejecutar_YSF2DMR.sh"' /home/orangepi/Desktop/Abrir_YSF2DMR.desktop
sed -i "7c Icon=/home/orangepi/SCRIPTS_ORANGE/YSF2DMR.png" /home/orangepi/Desktop/Abrir_YSF2DMR.desktop
sed -i "10c Name[es_ES]=Abrir YSF2DMR" /home/orangepi/Desktop/Abrir_YSF2DMR.desktop

sed -i "14c YSF2DMR=OFF" /home/orangepi/status.ini

sudo killall MMDVMFUSION
sudo killall YSF2DMR
