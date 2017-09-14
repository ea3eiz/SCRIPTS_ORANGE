#!/bin/bash

sudo killall MMDVMBM
cd ~/SCRIPTS_ORANGE
#sudo sh cerrar_ysf_30.sh
#sudo sh cerrar_d-star_30.sh
sed -i "7c MMDVMBM=OFF" ~/status.ini


sed -i "6cExec=mate-terminal -x sh ejecutar_bm_05.sh" ~/Desktop/Abrir_MMDVMBM
sed -i "7c Icon=~/SCRIPTS_ORANGE/DMR.png" ~/Desktop/Abrir_MMDVMBM
sed -i "10c Name[es_ES]=Abrir BM" ~/Desktop/Abrir_MMDVMBM
