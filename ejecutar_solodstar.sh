#!/bin/bash

#sed -i "6c Exec=sudo sh cerrar_solodstar.sh" ~/Desktop/Abrir_SVXLink.desktop
#sed -i "7c Icon=/home/orangepi/SCRIPTS_ORANGE/SOLO_D-STAR_ON.png" ~/Desktop/Abrir_SVXLink.desktop
#sed -i "4c Name[es_ES]=Cerrar solo D-STAR" ~/Desktop/Abrir_SVXLink.desktop


cd ~/MMDVMHost
sudo mate-terminal -x ./MMDVMDSTAR MMDVMDSTAR.ini & ircddbgateway -gui
