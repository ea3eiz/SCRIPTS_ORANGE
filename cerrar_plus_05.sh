#!/bin/bash

sudo killall MMDVMPLUS
sed -i "6c Exec=mate-terminal -x sh ejecutar_plus_05.sh" /home/orangepi/Desktop/DMRPLUS.desktop
sed -i "7c Icon=/home/orangepi/SCRIPTS_ORANGE/ICONO_DMRPLUS.png" /home/orangepi/Desktop/DMRPLUS.desktop
sed -i "10c Name[es_ES]=Abrir DMR+" /home/orangepi/Desktop/DMRPLUS.desktop

sed -i "6c MMDVMPLUS=OFF" /home/orangepi/status.ini