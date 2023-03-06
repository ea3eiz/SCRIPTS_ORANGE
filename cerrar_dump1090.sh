#!/bin/bash

killall dump1090

SCRIPTS_version=$(awk "NR==1" /home/pi/.config/autostart/version)
cd /home/pi/Desktop
sudo cp Abrir_BlueDV.desktop /home/pi
sed -i "6c Exec=sh ejecutar_dump1090" /home/orangepi/Desktop/BlueDV.desktop
sed -i "7c Icon=/home/orangepi/SCRIPTS_ORANGE/ICONO_AVION_OFF.png" /home/orangepi/Desktop/BlueDV.desktop
sed -i "10c Name[es_ES]=Abrir Dumo1090" /home/orangepi/Desktop/BlueDV.desktop
cd /home/pi
sudo cp Abrir_BlueDV.desktop /home/pi/Desktop
#
sudo rm /home/pi/Abrir_BlueDV.desktop
#
