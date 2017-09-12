#!/bin/bash

sudo killall MMDVMPLUS
cd /home/pi/V30
#sudo sh cerrar_ysf_30.sh
#sudo sh cerrar_d-star_30.sh
sed -i "6c MMDVMPLUS=OFF" /home/pi/status.ini

sed -i "4cExec=sh -c 'cd /home/pi/V30;lxterminal --geometry=72x15 -e sudo sh ejecutar_plus_30.sh'" /home/pi/Desktop/Abrir_MMDVMPLUS
sed -i "5c Icon=/home/pi/V30/ICONO_DMRPLUS.png" /home/pi/Desktop/Abrir_MMDVMPLUS
sed -i "10c Name[es_ES]=Abrir DMR+" /home/pi/Desktop/Abrir_MMDVMPLUS
