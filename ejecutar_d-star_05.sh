#!/bin/bash

#sleep 5
#sed -i "1c D-STAR=ON" ~/status.ini
sed -i "6c Exec=/home/orangepi/SCRIPTS_ORANGE/cerrar_d-star_05.sh" ~/Desktop/D-Star.desktop
sed -i "7c Icon=/home/orangepi/SCRIPTS_ORANGE/DSTAR_ON.png" ~/Desktop/D-Star.desktop
#sed -i "10c Name[es_ES]=Cerrar ircDDB" ~/Desktop/ircDDBGateway
ircddbgateway -gui
#sleep 3
#sudo ircddbgateway -gui

#[Desktop Entry]
#Version=1.0
#Type=Application
#Name=D-Star
#Comment=
#Exec=/home/orangepi/SCRIPTS_ORANGE/ejecutar_d-star_05.sh
#Icon=/home/orangepi/SCRIPTS_ORANGE/DSTAR.png
#Terminal=false
#StartupNotify=false
#Name[es_ES]=Abrir ircDDB
#Path=/home/orangepi/SCRIPTS_ORANGE