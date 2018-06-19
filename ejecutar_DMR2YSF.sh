#!/bin/bash

sed -i "6c Exec=mate-terminal -x sh cerrar_DMR2YSF.sh" ~/Desktop/Abrir_DMR2YSF.desktop
sed -i "7c Icon=/home/orangepi/SCRIPTS_ORANGE/DMR2YSF_ON.png" ~/Desktop/Abrir_DMR2YSF.desktop
sed -i "10c Name[es_ES]=Cerrar DMR2YSF" ~/Desktop/Abrir_DMR2YSF.desktop


#sed -i "14c YSF2DMR=ON" ~/status.ini

cd ~/DMR2YSF

sudo mate-terminal -x ./DMR2YSF DMR2YSF.ini & 
cd ~/MMDVMHost
sudo mate-terminal -x ./MMDVMHost MMDVMDMR2YSF.ini &
cd ~/YSFClients/YSFGateway
sudo mate-terminal -x ./YSFGateway YSFGateway.ini
