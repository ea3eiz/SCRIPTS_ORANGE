#!/bin/bash

killall dump1090

cd /home/orangepi/Desktop
sudo cp Abrir_BlueDV.desktop /home/orangepi
sed -i "6c Exec=sh ejecutar_dump1090" /home/orangepi/Desktop/BlueDV.desktop
sed -i "7c Icon=/home/orangepi/SCRIPTS_ORANGE/ICONO_AVION_OFF.png" /home/orangepi/Desktop/BlueDV.desktop
sed -i "10c Name[es_ES]=Abrir Dumo1090" /home/orangepi/Desktop/BlueDV.desktop
cd /home/orangepi
sudo cp Abrir_BlueDV.desktop /home/orangepi/Desktop
#
sudo rm /home/orangepi/Abrir_BlueDV.desktop
#
cd /home/orangepi/SCRIPTS_ORANGE/
sh ejecutar_dump1090.sh