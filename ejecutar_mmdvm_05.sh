#!/bin/bash
#sed -i "4c Exec=sh -c 'cd ~/V30;lxterminal --geometry=72x15 -e sudo sh cerrar_mmdvm_30.sh'" ~/Desktop/Abrir_Radio
#sed -i "5c Icon=~/V30/MMDVM_ON.png" ~/Desktop/Abrir_Radio
#sed -i "10c Name[es_ES]=Cerrar Radio" ~/Desktop/Abrir_Radio

#sed -i "5c MMDVM=ON" ~/status.ini
cd ~/MMDVMHost

echo "\33[1;32m"
clear
echo "***********************************************"
echo "*                 RADIO                       * "
echo "***********************************************"
#sleep 3
echo "\33[1;36m"
sudo ./MMDVMHost MMDVM.ini
