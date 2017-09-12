#!/bin/bash

sudo killall MMDVMBM
cd /home/pi/V30
#sudo sh cerrar_ysf_30.sh
#sudo sh cerrar_d-star_30.sh
sed -i "7c MMDVMBM=OFF" /home/pi/status.ini


sed -i "4cExec=sh -c 'cd /home/pi/V30; lxterminal --geometry=72x15 -e sudo sh ejecutar_bm_30.sh'" /home/pi/Desktop/Abrir_MMDVMBM
sed -i "5c Icon=/home/pi/V30/DMR.png" /home/pi/Desktop/Abrir_MMDVMBM
sed -i "10c Name[es_ES]=Abrir BM" /home/pi/Desktop/Abrir_MMDVMBM
