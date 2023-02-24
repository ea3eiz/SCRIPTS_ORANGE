#!/bin/bash
sed -i "6c Exec=sh ejecutar_d-star_05.sh" /home/orangepi/Desktop/D-Star.desktop
sed -i "7c Icon=/home/orangepi/SCRIPTS_ORANGE/DSTAR.png" /home/orangepi/Desktop/D-Star.desktop
sed -i "10c Name[es_ES]=Abrir ircDDB" /home/orangepi/Desktop/D-Star.desktop
sed -i "11c Path=/home/orangepi/SCRIPTS_ORANGE" /home/orangepi/Desktop/D-Star.desktop

sed -i "1c D-STAR=OFF" /home/orangepi/status.ini

#cierra ircDDBGateway
sudo killall ircddbgateway
