#!/bin/bash
sudo killall MMDVMHostLIBRE
sed -i "6c Exec=mate-terminal -x sh ejecutar_mmdvmLIBRE_05.sh" /home/orangepi/Desktop/Libre.desktop
sed -i "7c Icon=/home/orangepi/SCRIPTS_ORANGE/LIBRE.png" /home/orangepi/Desktop/Libre.desktop
sed -i "10c Name[es_ES]=Abrir LIBRE" /home/orangepi/Desktop/Libre.desktop

sed -i "10c MMDVMLIBRE=OFF" /home/orangepi/status.ini