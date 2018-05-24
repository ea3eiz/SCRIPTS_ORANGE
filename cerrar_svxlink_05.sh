#!/bin/bash
sed -i "6c Exec=mate-terminal -x sh ejecutar_svxlink_05.sh" ~/Desktop/Abrir_SVXLink.desktop
sed -i "7c Icon=/home/orangepi/SCRIPTS_ORANGE/ECHOLINK.png" ~/Desktop/Abrir_SVXLink.desktop
sed -i "4c Name[es_ES]=Abrir SVXLINK" ~/Desktop/Abrir_SVXLink.desktop

sed -i "8c SVXLINK=OFF" ~/status.ini

sudo killall svxlink

