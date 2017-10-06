#!/bin/bash
sed -i "6c Exec=mate-terminal -x sh ejecutar_svxlink_05.sh" ~/Desktop/SVXLink.desktop
sed -i "7c Icon=/home/orangepi/SCRIPTS_ORANGE/SVXLINK.png" ~/Desktop/SVXLink.desktop
sed -i "4c Name[es_ES]=Abrir SVXLINK" ~/Desktop/SVXLink.desktop




sudo killall svxlink

