#!/bin/bash

sed -i "6c Exec=sudo sh cerrar_solodstar.sh" ~/Desktop/AbrirsoloDstar.desktop
sed -i "7c Icon=/home/orangepi/SCRIPTS_ORANGE/SOLO_D-STAR_ON.png" ~/Desktop/AbrirsoloDstar.desktop
sed -i "11c Name[es_ES]=Cerrar solo D-STAR" ~/Desktop/AbrirsoloDstar.desktop


cd ~/MMDVMHost
sudo ./MMDVMDSTAR MMDVMDSTAR.ini & ircddbgateway -gui
