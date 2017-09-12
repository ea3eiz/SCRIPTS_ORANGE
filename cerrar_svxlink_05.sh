#!/bin/bash
sed -i "4cExec=sh -c 'cd /home/pi/V30;lxterminal --geometry=72x15 -e sudo sh ejecutar_svxlink_30.sh'" /home/pi/Desktop/svxlink
sed -i "5c Icon=/home/pi/V30/ECHOLINK.png" /home/pi/Desktop/svxlink
sed -i "10c Name[es_ES]=Abrir SVXLINK" /home/pi/Desktop/svxlink
#sed -i "11c Hidden=true" /home/pi/Desktop/svxlink
sed -i "8c SVXLINK=OFF" /home/pi/status.ini




sudo killall svxlink

