#!/bin/bash
sed -i "6c Exec=mate-terminal -x sh cerrar_plus_05.sh" ~/Desktop/DMRPLUS.desktop
sed -i "7c Icon=/home/orangepi/SCRIPTS_ORANGE/DMRPLUS_ON.png" ~/Desktop/DMRPLUS.desktop
sed -i "10c Name[es_ES]=Cerrar DMR+" ~/Desktop/DMRPLUS.desktop

sed -i "6c MMDVMPLUS=ON" ~/status.ini

echo "\33[1;37m"
cd ~/MMDVMHost
echo "\33[1;32m"
clear
echo "***********************************************"
echo "*                 DMR+                        * "
echo "***********************************************"
#sleep 2
echo "\33[1;37m"
sudo ./MMDVMPLUS MMDVMPLUS.ini
 
