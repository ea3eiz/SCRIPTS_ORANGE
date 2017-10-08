#!/bin/bash

sed -i "6c Exec=sudo sh ejecutar_solofusion.sh" ~/Desktop/AbrirsoloYSF.desktop
sed -i "7c Icon=/home/orangepi/SCRIPTS_ORANGE/SOLO_YSF.png" ~/Desktop/AbrirsoloYSF.desktop
sed -i "11c Name[es_ES]=Abrir solo FUSION" ~/Desktop/AbrirsoloYSF.desktop

sudo killall MMDVMFUSION
sudo killall YSFGateway
