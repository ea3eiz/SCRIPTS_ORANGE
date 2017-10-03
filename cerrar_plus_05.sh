#!/bin/bash

sudo killall MMDVMPLUS
sed -i "6c Exec=Exec=mate-terminal --geometry=80x47 -x sh ejecutar_plus_05.sh" ~/Desktop/DMRPLUS.desktop
sed -i "7c Icon=/home/orangepi/SCRIPTS_ORANGE/ICONO_DMRPLUS.png" ~/Desktop/DMRPLUS.desktop
sed -i "10c Name[es_ES]=Abrir DMR+" ~/Desktop/DMRPLUS.desktop
