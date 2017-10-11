#!/bin/bash
 
sed -i "6 cExec=mate-terminal -x sh cerrar_solodstar_04.sh" ~/Desktop/Dstar_solo.desktop
sed -i "7c Icon=/home/orangepi/SCRIPTS_ORANGE/BRANDMEISTER_ON.png" ~/Desktop/Dstar_solo.desktop
sed -i "10c Name[es_ES]=Cerrar D-STAR Repeater" ~/Desktop/Dstar_solo.desktop


ircddbgateway -gui  & dstarrepeater

