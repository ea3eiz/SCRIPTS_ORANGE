#!/bin/bash
 
sed -i "6c Exec=mate-terminal -x sh cerrar_solodstar_04.sh" /home/orangepi/Desktop/Dstar_solo.desktop
sed -i "7c Icon=/home/orangepi/SCRIPTS_ORANGE/SOLO_DSTAR_ON.png" /home/orangepi/Desktop/Dstar_solo.desktop
sed -i "10c Name[es_ES]=Cerrar D-STAR Repeater" /home/orangepi/Desktop/Dstar_solo.desktop

sed -i "9c dstarrepeater=ON" /home/orangepi/status.ini

ircddbgateway -gui  & dstarrepeater

#