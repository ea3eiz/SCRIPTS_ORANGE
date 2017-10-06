#!/bin/bash

 #=========================
#sed -i "4c Exec=sh -c 'cd ~/V30;lxterminal --geometry=72x15 -e sudo sh cerrar_ysf_30.sh'" ~/Desktop/YSFGateway
#sed -i "5c Icon=~/V30/YSF_ON.png" ~/Desktop/YSFGateway
#sed -i "10c Name[es_ES]=Cerrar YSF" ~/Desktop/YSFGateway
#sed -i "3c YSF=ON" ~/status.ini

cd ~/YSFClients/YSFGateway
echo "\33[1;32m"
clear
echo "***********************************************************"
echo "*                 YSFGateway                              * "
echo "***********************************************************"
sleep 3
echo "\33[1;33m"
sudo ./YSFGateway YSFGateway.ini
#=========================


