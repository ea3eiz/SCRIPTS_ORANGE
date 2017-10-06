#!/bin/bash

sudo killall YSFGateway
sed -i "6c Exec=mate-terminal -x sh ejecutar_ysf_05.sh" ~/Desktop/YSFGateway.desktop
sed -i "7c Icon=/home/orangepi/SCRIPTS_ORANGE/C4FM.png" ~/Desktop/YSFGateway.desktop
sed -i "11c Name[es_ES]=Abrir YSF" ~/Desktop/YSFGateway.desktop
