#!/bin/bash
sed -i "6c Exec=sh cerrar_d-star_05.sh" ~/Desktop/D-Star.desktop
sed -i "7c Icon=/home/orangepi/SCRIPTS_ORANGE/DSTAR_ON.png" ~/Desktop/D-Star.desktop
sed -i "11c Path=/home/orangepi/SCRIPTS_ORANGE" ~/Desktop/D-Star.desktop
ircddbgateway -gui
