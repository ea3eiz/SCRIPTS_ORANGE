#!/bin/bash
sleep 10
sed -i "4c Exec=sh -c 'cd /home/pi/V30;lxterminal --geometry=72x15 -e sudo sh cerrar_svxlink_30.sh'" /home/pi/Desktop/svxlink
sed -i "5c Icon=/home/pi/V30/SVXLINK_ON.png" /home/pi/Desktop/svxlink
sed -i "10c Name[es_ES]=Cerrar SVXLINK" /home/pi/Desktop/svxlink
#sed -i "11c Hidden=true" /home/pi/Desktop/svxlink
sed -i "8c SVXLINK=ON" /home/pi/status.ini

sudo svxlink