#!/bin/bash

sed -i "6c Exec=mate-terminal -x sh cerrar_dv4_05.sh" ~/Desktop/DV4mini.desktop
sed -i "7c Icon=/home/orangepi/dv4mini/dv4k.png" ~/Desktop/DV4mini.desktop
sed -i "11c Name[es_ES]=Abrir DV4mini" ~/Desktop/DV4mini.desktop

cd ~/dv4mini
mono dv4mini.exe

