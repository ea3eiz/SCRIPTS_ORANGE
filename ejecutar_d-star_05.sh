#!/bin/bash
sed -i "6c Exec=sh cerrar_d-star_05.sh" ~/Desktop/D-Star.desktop
sed -i "7c Icon=/home/orangepi/SCRIPTS_ORANGE/DSTAR_ON.png" ~/Desktop/D-Star.desktop
sed -i "10c Name[es_ES]=Cerrar ircDDB" ~/Desktop/D-Star.desktop
sed -i "11c Path=/home/orangepi/SCRIPTS_ORANGE" ~/Desktop/D-Star.desktop

#Abre ircDDBGateway
ircddbgateway -gui
