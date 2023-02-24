#!/bin/bash

sed -i "6c Exec=sudo sh ejecutar_solofusion.sh" /home/orangepi/Desktop/AbrirsoloYSF.desktop
sed -i "7c Icon=/home/orangepi/SCRIPTS_ORANGE/SOLO_YSF.png" /home/orangepi/Desktop/AbrirsoloYSF.desktop
sed -i "11c Name[es_ES]=Abrir solo FUSION" /home/orangepi/Desktop/AbrirsoloYSF.desktop

sed -i "12c SOLOFUSION=OFF" /home/orangepi/status.ini

sudo killall MMDVMFUSION
sudo killall YSFGateway
