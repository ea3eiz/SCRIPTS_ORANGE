#!/bin/bash
sed -i "6c Exec=mate-terminal -x sh ejecutar_YSF2DMR.sh" ~/Desktop/Abrir_YSF2DMR.desktop
sed -i "7c Icon=/home/orangepi/SCRIPTS_ORANGE/YSF2DMR.png" ~/Desktop/Abrir_YSF2DMR.desktop
sed -i "10c Name[es_ES]=Abrir YSF2DMR" ~/Desktop/Abrir_YSF2DMR.desktop
sudo killall MMDVMFUSION
sudo killall YSF2DMR
