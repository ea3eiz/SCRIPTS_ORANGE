#!/bin/bash

sudo killall MMDVMBM
cd ~/SCRIPTS_ORANGE
sed -i "7c MMDVMBM=OFF" ~/status.ini

sed -i "6cExec=mate-terminal -x sh ejecutar_bm_05.sh" ~/Desktop/BM.desktop
sed -i "7c Icon=/home/orangepi/SCRIPTS_ORANGE/DMR.png" ~/Desktop/BM.desktop
sed -i "10c Name[es_ES]=Abrir BM" ~/Desktop/BM.desktop
