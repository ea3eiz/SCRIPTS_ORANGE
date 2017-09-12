#!/bin/bash

sudo killall YSFGateway
sed -i "3c YSF=OFF" /home/pi/status.ini

sed -i "4cExec=sh -c 'cd /home/pi/V30;lxterminal --geometry=72x15 -e sudo sh ejecutar_ysf_30.sh'" /home/pi/Desktop/YSFGateway
sed -i "5c Icon=/home/pi/V30/C4FM.png" /home/pi/Desktop/YSFGateway
sed -i "10c Name[es_ES]=Abrir YSF" /home/pi/Desktop/YSFGateway