#!/bin/bash

sed -i "6c Exec=sudo sh cerrar_solofusion.sh" ~/Desktop/AbrirsoloYSF.desktop
sleep 1
sed -i "7c Icon=/home/orangepi/SCRIPTS_ORANGE/SOLO_YSF_ON.png" ~/Desktop/AbrirsoloYSF.desktop
sleep 1
sed -i "11c Name[es_ES]=Cerrar solo FUSION" ~/Desktop/AbrirsoloYSF.desktop
sleep 1


cd ~/YSFClients/YSFGateway
sudo mate-terminal -x ./YSFGateway YSFGateway.ini & cd ~/MMDVMHost
sudo mate-terminal -x ./MMDVMFUSION MMDVMFUSION.ini


sed -i "6c Exec=mate-terminal -x sh ejecutar_ysf_05.sh" ~/Desktop/YSFGateway.desktop
sed -i "7c Icon=/home/orangepi/SCRIPTS_ORANGE/C4FM.png" ~/Desktop/YSFGateway.desktop
sed -i "11c Name[es_ES]=Abrir YSF" ~/Desktop/YSFGateway.desktop

