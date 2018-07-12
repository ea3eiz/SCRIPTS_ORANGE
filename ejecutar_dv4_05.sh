#!/bin/bash

sed -i "6c Exec=sh cerrar_dv4_05.sh" ~/Desktop/DV4mini.desktop
sed -i "7c Icon=/home/orangepi/SCRIPTS_ORANGE/DV4_ON.png" ~/Desktop/DV4mini.desktop
sed -i "11c Name[es_ES]=Cerrar DV4mini" ~/Desktop/DV4mini.desktop

sed -i "4c DV4mini=ON" ~/status.ini

cd ~/dv4mini
mono dv4mini.exe

sed -i "6c Exec=sh ejecutar_dv4_05.sh" ~/Desktop/DV4mini.desktop
sed -i "7c Icon=/home/orangepi/dv4mini/dv4k.png" ~/Desktop/DV4mini.desktop
sed -i "11c Name[es_ES]=Abrir DV4mini" ~/Desktop/DV4mini.desktop

sed -i "4c DV4mini=OFF" ~/status.ini