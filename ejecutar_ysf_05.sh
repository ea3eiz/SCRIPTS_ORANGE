#!/bin/bash



#[Desktop Entry]
#Version=1.0
#Type=Application
#Name=YSFGateway
#Comment=
#Exec=mate-terminal -x sh ejecutar_ysf_05.sh
#Icon=/home/orangepi/SCRIPTS_ORANGE/C4FM.png
#Path=/home/orangepi/SCRIPTS_ORANGE
#Terminal=false
#StartupNotify=false
#Name[es_ES]=Abrir YSF



sed -i "6c Exec=mate-terminal -x sh cerrar_ysf_05.sh" ~/Desktop/YSFGateway.desktop
sed -i "7c Icon=/home/orangepi/SCRIPTS_ORANGE/YSF_ON.png" ~/Desktop/YSFGateway.desktop
sed -i "11c Name[es_ES]=Cerrar YSF" ~/Desktop/YSFGateway.desktop


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


