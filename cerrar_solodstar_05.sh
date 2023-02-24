#!/bin/bash
sed -i "6c Exec=/home/orangepi/SCRIPTS_ORANGE/ejecutar_solodstar_05.sh" /home/orangepi/Desktop/Dstar_solo.desktop
sed -i "7c Icon=/home/orangepi/SCRIPTS_ORANGE/SOLO_DSTAR.png" /home/orangepi/Desktop/Dstar_solo.desktop

sed -i "13c SOLODSTAR=OFF" /home/orangepi/status.ini


#cierra ircDDBGateway
sudo killall ircddbgateway
#cierra remotecontrol
sudo killall remotecontrol
#cierra D-STARRepeater
sudo killall dstarrepeater
#