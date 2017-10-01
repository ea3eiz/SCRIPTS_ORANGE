#!/bin/bash
sed -i "6c Exec=/home/orangepi/SCRIPTS_ORANGE/cerrar_solodstar_05.sh" ~/Desktop/Dstar solo.desktop
sed -i "7c Icon=/home/orangepi/SCRIPTS_ORANGE/SOLO_DSTAR_ON.png" ~/Desktop/Dstar solo.desktop
sudo ircddbgateway -gui  & dstarrepeater & ircddbgateway -gui

#1-[Desktop Entry]
#2-Version=1.0
#3-Type=Application
#4-Name=Dstar solo
#5-Comment=
#6-Exec=/home/orangepi/SCRIPTS_ORANGE/ejecutar_solodstar_05.sh
#7-Icon=/home/orangepi/SCRIPTS_ORANGE/SOLO_DSTAR.png
#8-Terminal=false
#9-StartupNotify=false
#10-Name[es_ES]=Abrir solo D-STAR
#11-Path=/home/orangepi/SCRIPTS_ORANGE