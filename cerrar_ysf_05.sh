#!/bin/bash

sudo killall YSFGateway
sed -i "6c Exec=mate-terminal -x sh ejecutar_ysf_05.sh" /home/orangepi/Desktop/YSFGateway.desktop
sed -i "7c Icon=/home/orangepi/SCRIPTS_ORANGE/C4FM.png" /home/orangepi/Desktop/YSFGateway.desktop
sed -i "11c Name[es_ES]=Abrir YSF" /home/orangepi/Desktop/YSFGateway.desktop

sed -i "3c YSF=OFF" /home/orangepi/status.ini