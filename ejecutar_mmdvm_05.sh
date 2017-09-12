#!/bin/bash

sleep 10


sed -i "4c Exec=sh -c 'cd /home/pi/V30;lxterminal --geometry=72x15 -e sudo sh cerrar_mmdvm_30.sh'" /home/pi/Desktop/Abrir_Radio
sed -i "5c Icon=/home/pi/V30/MMDVM_ON.png" /home/pi/Desktop/Abrir_Radio
sed -i "10c Name[es_ES]=Cerrar Radio" /home/pi/Desktop/Abrir_Radio

sed -i "5c MMDVM=ON" /home/pi/status.ini
cd /home/pi/MMDVMHost

echo "\33[1;32m"
clear
echo "***********************************************"
echo "*                 RADIO                       * "
echo "***********************************************"
#sleep 3
echo "\33[1;36m"
sudo ./MMDVMHost MMDVM.ini
