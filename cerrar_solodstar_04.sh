#!/bin/bash

sed -i "6c Exec=mate-terminal -x sh ejecutar_solodstar_04.sh" /home/orangepi/Desktop/Dstar_solo.desktop
sed -i "7c Icon=/home/orangepi/SCRIPTS_ORANGE/SOLO_DSTAR.png" /home/orangepi/Desktop/Dstar_solo.desktop
sed -i "10c Name[es_ES]=Abrir D-STAR Repeater" /home/orangepi/Desktop/Dstar_solo.desktop

sed -i "9c dstarrepeater=OFF" /home/orangepi/status.ini

sudo killall ircddbgateway
sudo killall dstarrepeater
