#!/bin/bash
sed -i "6c Exec=mate-terminal -x sh ejecutar_dv4_05.sh" ~/Desktop/DV4mini.desktop
sed -i "7c Icon=/home/orangepi/SCRIPTS_ORANGE/DV4_ON.png" ~/Desktop/DV4mini.desktop
sed -i "11c Name[es_ES]=Cerrar DV4mini" ~/Desktop/DV4mini.desktop

sudo su | ps aux | grep dv4mini.exe | grep -v grep | awk '{print $2}' | xargs kill
sudo killall dv_serial
sudo killall python
