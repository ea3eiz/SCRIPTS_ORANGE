#!/bin/bash
sed -i "6c Exec=mate-terminal -x sh ejecutar_svxlink_05.sh" /home/orangepi/Desktop/Abrir_SVXLink.desktop
sed -i "7c Icon=/home/orangepi/SCRIPTS_ORANGE/ECHOLINK.png" /home/orangepi/Desktop/Abrir_SVXLink.desktop
sed -i "4c Name[es_ES]=Abrir SVXLINK" /home/orangepi/Desktop/Abrir_SVXLink.desktop

sed -i "8c SVXLINK=OFF" /home/orangepi/status.ini

sudo killall svxlink

