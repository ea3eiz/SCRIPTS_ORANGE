#!/bin/bash
sed -i "6c Exec=sh ejecutar_dv4_05.sh" /home/orangepi/Desktop/DV4mini.desktop
sed -i "7c Icon=/home/orangepi/dv4mini/dv4k.png" /home/orangepi/Desktop/DV4mini.desktop
sed -i "11c Name[es_ES]=Abrir DV4mini" /home/orangepi/Desktop/DV4mini.desktop

sed -i "4c DV4mini=OFF" /home/orangepi/status.ini

sudo su | ps aux | grep dv4mini.exe | grep -v grep | awk '{print $2}' | xargs kill
sudo killall dv_serial
sudo killall python

