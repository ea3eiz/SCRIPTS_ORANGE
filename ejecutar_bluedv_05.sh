#!/bin/bash
sed -i "6c Exec=sh cerrar_bluedv_05.sh" /home/orangepi/Desktop/BlueDV.desktop
sed -i "7c Icon=/home/orangepi/SCRIPTS_ORANGE/BLUEDV_ON.png" /home/orangepi/Desktop/BlueDV.desktop
sed -i "8c Path=/home/orangepi/SCRIPTS_ORANGE" /home/orangepi/Desktop/BlueDV.desktop
sed -i "11c Name[es_ES]=Cerrar BlueDV" /home/orangepi/Desktop/BlueDV.desktop

sed -i "2c BlueDV=ON" /home/orangepi/status.ini

cd /home/orangepi/bluedv
sudo mono BlueDV.exe

sed -i "6c Exec=sh ejecutar_bluedv_05.sh" /home/orangepi/Desktop/BlueDV.desktop
sed -i "7c Icon=/home/orangepi/SCRIPTS_ORANGE/BLUEDV.png" /home/orangepi/Desktop/BlueDV.desktop
sed -i "8c Path=/home/orangepi/SCRIPTS_ORANGE" /home/orangepi/Desktop/BlueDV.desktop
sed -i "11c Name[es_ES]=Abrir BlueDV" /home/orangepi/Desktop/BlueDV.desktop

sed -i "2c BlueDV=OFF" /home/orangepi/status.ini