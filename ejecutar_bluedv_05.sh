#!/bin/bash
sed -i "6c Exec=sh cerrar_bluedv_05.sh" ~/Desktop/BlueDV.desktop
sed -i "7c Icon=/home/orangepi/SCRIPTS_ORANGE/BLUEDV_ON.png" ~/Desktop/BlueDV.desktop
sed -i "8c Path=/home/orangepi/SCRIPTS_ORANGE" ~/Desktop/BlueDV.desktop
sed -i "11c Name[es_ES]=Cerrar BlueDV" ~/Desktop/BlueDV.desktop

sed -i "2c BlueDV=ON" ~/status.ini

cd ~/bluedv
sudo mono BlueDV.exe

sed -i "6c Exec=sh ejecutar_bluedv_05.sh" ~/Desktop/BlueDV.desktop
sed -i "7c Icon=/home/orangepi/SCRIPTS_ORANGE/BLUEDV.png" ~/Desktop/BlueDV.desktop
sed -i "8c Path=/home/orangepi/SCRIPTS_ORANGE" ~/Desktop/BlueDV.desktop
sed -i "11c Name[es_ES]=Abrir BlueDV" ~/Desktop/BlueDV.desktop

sed -i "2c BlueDV=OFF" ~/status.ini