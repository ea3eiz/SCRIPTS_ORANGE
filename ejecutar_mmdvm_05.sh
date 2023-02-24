#!/bin/bash
sed -i "6 cExec=mate-terminal -x sh cerrar_mmdvm_05.sh" /home/orangepi/Desktop/MMDVM.desktop
sed -i "7c Icon=/home/orangepi/SCRIPTS_ORANGE/MMDVM_ON.png" /home/orangepi/Desktop/MMDVM.desktop
sed -i "4c Name[es_ES]=Cerrar Radio" /home/orangepi/Desktop/MMDVM.desktop

sed -i "5c MMDVM=ON" /home/orangepi/status.ini

cd /home/orangepi/MMDVMHost

echo "\33[1;32m"
clear
echo "***********************************************"
echo "*                 RADIO                       * "
echo "***********************************************"
#sleep 3
echo "\33[1;36m"
sudo ./MMDVMRADIO MMDVM.ini

sed -i "6 cExec=mate-terminal -x sh ejecutar_mmdvm_05.sh" /home/orangepi/Desktop/MMDVM.desktop
sed -i "7c Icon=/home/orangepi/SCRIPTS_ORANGE/MMDVM.png" /home/orangepi/Desktop/MMDVM.desktop
sed -i "4c Name[es_ES]=Abrir Radio" /home/orangepi/Desktop/MMDVM.desktop

sed -i "5c MMDVM=OFF" /home/orangepi/status.ini