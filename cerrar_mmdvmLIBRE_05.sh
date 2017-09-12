#!/bin/bash
sudo killall MMDVMHostLIBRE
cd /home/pi/V30
#sudo sh cerrar_ysf_30.sh
#sudo sh cerrar_d-star_30.sh
sed -i "10c MMDVMLIBRE=OFF" /home/pi/status.ini

sed -i "4cExec=sh -c 'cd /home/pi/V30;lxterminal --geometry=72x15 -e sudo sh ejecutar_mmdvmLIBRE_30.sh'" /home/pi/Desktop/Abrir_LIBRE
sed -i "5c Icon=/home/pi/V30/LIBRE.png" /home/pi/Desktop/Abrir_LIBRE
sed -i "10c Name[es_ES]=Abrir LIBRE" /home/pi/Desktop/Abrir_LIBRE
