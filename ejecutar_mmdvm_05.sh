#!/bin/bash
sed -i "6 cExec=mate-terminal -x sh cerrar_mmdvm_05.sh" ~/Desktop/MMDVM.desktop
sed -i "7c Icon=/home/orangepi/SCRIPTS_ORANGE/MMDVM_ON.png" ~/Desktop/MMDVM.desktop
sed -i "4c Name[es_ES]=Cerrar Radio" ~/Desktop/MMDVM.desktop

sed -i "5c MMDVM=ON" ~/status.ini

cd ~/MMDVMHost

echo "\33[1;32m"
clear
echo "***********************************************"
echo "*                 RADIO                       * "
echo "***********************************************"
#sleep 3
echo "\33[1;36m"
sudo ./MMDVMHost MMDVM.ini
#