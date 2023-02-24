#!/bin/bash

sudo killall MMDVMBM
cd /home/orangepi/SCRIPTS_ORANGE
sed -i "7c MMDVMBM=OFF" /home/orangepi/status.ini

sed -i "6cExec=mate-terminal -x sh ejecutar_bm_05.sh" /home/orangepi/Desktop/BM.desktop
sed -i "7c Icon=/home/orangepi/SCRIPTS_ORANGE/DMR.png" /home/orangepi/Desktop/BM.desktop
sed -i "10c Name[es_ES]=Abrir BM" /home/orangepi/Desktop/BM.desktop
