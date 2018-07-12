#!/bin/bash
sed -i "6c Exec=mate-terminal -x sh cerrar_bm_05.sh" ~/Desktop/BM.desktop
sed -i "7c Icon=/home/orangepi/SCRIPTS_ORANGE/BRANDMEISTER_ON.png" ~/Desktop/BM.desktop
sed -i "10c Name[es_ES]=Cerrar BM" ~/Desktop/BM.desktop

sed -i "7c MMDVMBM=ON" ~/status.ini

cd ~/MMDVMHost
echo "\33[1;32m"
clear
echo "***********************************************"
echo "*                 BRANDMEISTER                * "
echo "***********************************************"
echo "\33[38;5;138m"
sudo ./MMDVMBM MMDVMBM.ini
clear
sudo killall MMDVMBM
cd ~/SCRIPTS_ORANGE
sed -i "7c MMDVMBM=OFF" ~/status.ini

sed -i "6cExec=mate-terminal -x sh ejecutar_bm_05.sh" ~/Desktop/BM.desktop
sed -i "7c Icon=/home/orangepi/SCRIPTS_ORANGE/DMR.png" ~/Desktop/BM.desktop
sed -i "10c Name[es_ES]=Abrir BM" ~/Desktop/BM.desktop

