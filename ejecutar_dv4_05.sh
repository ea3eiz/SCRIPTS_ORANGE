#!/bin/bash
sleep 5
sed -i "4c DV4mini=ON" /home/pi/status.ini
sed -i "4c Exec=sh -c 'cd /home/pi/V30; sudo sh cerrar_dv4_30.sh'" /home/pi/Desktop/Abrir_dv4mini
sed -i "5c Icon=/home/pi/V30/DV4_ON.png" /home/pi/Desktop/Abrir_dv4mini
sed -i "10c Name[es_ES]=Cerrar DV4mini" /home/pi/Desktop/Abrir_dv4mini

cd /home/pi/dv4mini
mono dv4mini.exe

