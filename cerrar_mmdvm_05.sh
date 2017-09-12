#!/bin/bash

sudo killall MMDVMHost
sed -i "5c MMDVM=OFF" /home/pi/status.ini

sed -i "4cExec=sh -c 'cd /home/pi/V30; lxterminal --geometry=72x15 -e sudo sh ejecutar_mmdvm_30.sh'" /home/pi/Desktop/Abrir_Radio
sed -i "5c Icon=/home/pi/V30/MMDVM.png" /home/pi/Desktop/Abrir_Radio
sed -i "10c Name[es_ES]=Abrir Radio" /home/pi/Desktop/Abrir_Radio