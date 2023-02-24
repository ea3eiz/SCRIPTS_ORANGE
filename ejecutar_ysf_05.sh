#!/bin/bash
sed -i "6c Exec=mate-terminal -x sh cerrar_ysf_05.sh" /home/orangepi/Desktop/YSFGateway.desktop
sed -i "7c Icon=/home/orangepi/SCRIPTS_ORANGE/YSF_ON.png" /home/orangepi/Desktop/YSFGateway.desktop
sed -i "11c Name[es_ES]=Cerrar YSF" /home/orangepi/Desktop/YSFGateway.desktop

sed -i "3c YSF=ON" /home/orangepi/status.ini

cd /home/orangepi/YSFClients/YSFGateway
echo "\33[1;32m"
clear
echo "***********************************************************"
echo "*                 YSFGateway                              * "
echo "***********************************************************"
sleep 3
echo "\33[1;33m"
sudo ./YSFGateway YSFGateway.ini
#=========================


