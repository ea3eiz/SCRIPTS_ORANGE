#!/bin/bash
sed -i "6c Exec=mate-terminal -x sh cerrar_plus_05.sh" /home/orangepi/Desktop/DMRPLUS.desktop
sed -i "7c Icon=/home/orangepi/SCRIPTS_ORANGE/DMRPLUS_ON.png" /home/orangepi/Desktop/DMRPLUS.desktop
sed -i "10c Name[es_ES]=Cerrar DMR+" /home/orangepi/Desktop/DMRPLUS.desktop

sed -i "6c MMDVMPLUS=ON" /home/orangepi/status.ini

echo "\33[1;37m"
cd /home/orangepi/MMDVMHost
echo "\33[1;32m"
clear
echo "***********************************************"
echo "*                 DMR+                        * "
echo "***********************************************"
#sleep 2
echo "\33[1;37m"
sudo ./MMDVMPLUS MMDVMPLUS.ini
 
sed -i "6c Exec=mate-terminal -x sh ejecutar_plus_05.sh" /home/orangepi/Desktop/DMRPLUS.desktop
sed -i "7c Icon=/home/orangepi/SCRIPTS_ORANGE/ICONO_DMRPLUS.png" /home/orangepi/Desktop/DMRPLUS.desktop
sed -i "10c Name[es_ES]=Abrir DMR+" /home/orangepi/Desktop/DMRPLUS.desktop

sed -i "6c MMDVMPLUS=OFF" /home/orangepi/status.ini
