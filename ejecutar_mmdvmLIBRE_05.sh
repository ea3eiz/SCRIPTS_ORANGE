#!/bin/bash

sed -i "6c Exec=mate-terminal -x sh cerrar_mmdvmLIBRE_05.sh" /home/orangepi/Desktop/Libre.desktop
sed -i "7c Icon=/home/orangepi/SCRIPTS_ORANGE/LIBRE_ON.png" /home/orangepi/Desktop/Libre.desktop
sed -i "10c Name[es_ES]=Cerrar LIBRE" /home/orangepi/Desktop/Libre.desktop

sed -i "10c MMDVMLIBRE=ON" /home/orangepi/status.ini

cd /home/orangepi/MMDVMHost
echo "\33[1;32m"
clear
echo "***********************************************"
echo "*                 MODO LIBRE                  * "
echo "***********************************************"
#sleep 3
echo "\33[38;5;209m"
sudo ./MMDVMHostLIBRE MMDVMLIBRE.ini

