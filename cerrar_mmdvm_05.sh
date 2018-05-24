#!/bin/bash

sed -i "6 cExec=mate-terminal -x sh ejecutar_mmdvm_05.sh" ~/Desktop/MMDVM.desktop
sed -i "7c Icon=/home/orangepi/SCRIPTS_ORANGE/MMDVM.png" ~/Desktop/MMDVM.desktop
sed -i "4c Name[es_ES]=Abrir Radio" ~/Desktop/MMDVM.desktop

sed -i "5c MMDVM=OFF" ~/status.ini

sudo killall MMDVMHost
