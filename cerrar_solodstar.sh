#!/bin/bash

sed -i "6c Exec=sudo sh ejecutar_solodstar.sh" ~/Desktop/AbrirsoloDstar.desktop
sed -i "7c Icon=/home/orangepi/SCRIPTS_ORANGE/SOLO_D-STAR.png" ~/Desktop/AbrirsoloDstar.desktop
sed -i "4c Name[es_ES]=Abrir solo D-STAR" ~/Desktop/AbrirsoloDstar.desktop

sudo killall MMDVMDSTAR
sudo killall ircddbgateway
