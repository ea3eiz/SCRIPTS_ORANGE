#!/bin/bash

sed -i "6c Exec=sudo sh cerrar_solofusion.sh" /home/orangepi/Desktop/AbrirsoloYSF.desktop
sed -i "7c Icon=/home/orangepi/SCRIPTS_ORANGE/SOLO_YSF_ON.png" /home/orangepi/Desktop/AbrirsoloYSF.desktop
sed -i "11c Name[es_ES]=Cerrar solo FUSION" /home/orangepi/Desktop/AbrirsoloYSF.desktop

sed -i "12c SOLOFUSION=ON" /home/orangepi/status.ini

cd /home/orangepi/YSFClients/YSFGateway
sudo mate-terminal -x ./YSFGateway YSFGateway.ini & cd /home/orangepi/MMDVMHost
sudo mate-terminal -x ./MMDVMFUSION MMDVMFUSION.ini



