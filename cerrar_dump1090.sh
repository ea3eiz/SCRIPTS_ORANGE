#!/bin/bash

sudo killall dump1090

sed -i "6c Exec=sh -c 'cd /home/orangepi/SCRIPTS_ORANGE;sh ejecutar_dump1090.sh' /home/orangepi/Desktop/BlueDV.desktop"
sed -i "7c Icon=/home/orangepi/SCRIPTS_ORANGE/ICONO_AVION_ON.png" /home/orangepi/Desktop/BlueDV.desktop
sed -i "10c Name[es_ES]=Abrir Dump1090" /home/orangepi/Desktop/BlueDV.desktop
