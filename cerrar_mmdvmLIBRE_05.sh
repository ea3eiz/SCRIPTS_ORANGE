#!/bin/bash
sudo killall MMDVMHostLIBRE
sed -i "6c Exec=mate-terminal -x sh ejecutar_mmdvmLIBRE_05.sh" ~/Desktop/Libre.desktop
sed -i "7c Icon=/home/orangepi/SCRIPTS_ORANGE/LIBRE.png" ~/Desktop/Libre.desktop
sed -i "10c Name[es_ES]=Abrir LIBRE" ~/Desktop/Libre.desktop

sed -i "10c MMDVMLIBRE=OFF" ~/status.ini