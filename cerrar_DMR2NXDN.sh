#!/bin/bash
sed -i '6c Exec=sudo sh -c "cd ~/SCRIPTS_ORANGE/;sh ejecutar_DMR2NXDN.sh"' ~/Desktop/Abrir_DMR2NXDN.desktop
sed -i "7c Icon=/home/orangepi/SCRIPTS_ORANGE/DMR2NXDN.png" ~/Desktop/Abrir_DMR2NXDN.desktop
sed -i "10c Name[es_ES]=Abrir DMR2NXDN" ~/Desktop/Abrir_DMR2NXDN.desktop

#sed -i "14c DMR2NXDN=OFF" ~/status.ini

sudo killall MMDVMHost
sudo killall DMR2NXDN
sudo killall NXDNGateway