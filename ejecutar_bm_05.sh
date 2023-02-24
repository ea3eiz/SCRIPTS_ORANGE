#!/bin/bash
sed -i "6c Exec=mate-terminal -x sh cerrar_bm_05.sh" /home/orangepi/Desktop/BM.desktop
sed -i "7c Icon=/home/orangepi/SCRIPTS_ORANGE/BRANDMEISTER_ON.png" /home/orangepi/Desktop/BM.desktop
sed -i "10c Name[es_ES]=Cerrar BM" /home/orangepi/Desktop/BM.desktop

sed -i "7c MMDVMBM=ON" /home/orangepi/status.ini

cd /home/orangepi/MMDVMHost
echo "\33[1;32m"
clear
echo "***********************************************"
echo "*                 BRANDMEISTER                * "
echo "***********************************************"
echo "\33[38;5;138m"
sudo ./MMDVMBM MMDVMBM.ini
clear
sudo killall MMDVMBM
cd /home/orangepi/SCRIPTS_ORANGE
sed -i "7c MMDVMBM=OFF" /home/orangepi/status.ini

sed -i "6cExec=mate-terminal -x sh ejecutar_bm_05.sh" /home/orangepi/Desktop/BM.desktop
sed -i "7c Icon=/home/orangepi/SCRIPTS_ORANGE/DMR.png" /home/orangepi/Desktop/BM.desktop
sed -i "10c Name[es_ES]=Abrir BM" /home/orangepi/Desktop/BM.desktop

