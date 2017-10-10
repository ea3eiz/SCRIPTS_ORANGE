#!/bin/bash

sed -i "6c Exec=mate-terminal -x sh -c 'cd /home/orangepi/SCRIPTS_ORANGE/;sh ejecutar_solodstar.sh'" ~/Desktop/AbrirsoloDstar.desktop
sed -i "7c Icon=/home/orangepi/SCRIPTS_ORANGE/SOLO_D-STAR.png" ~/Desktop/AbrirsoloDstar.desktop
sed -i "11c Name[es_ES]=Abrir solo D-STAR" ~/Desktop/AbrirsoloDstar.desktop

sudo killall MMDVMDSTAR
sudo killall ircddbgateway
