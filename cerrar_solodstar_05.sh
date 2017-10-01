#!/bin/bash
sed -i "6c Exec=/home/orangepi/SCRIPTS_ORANGE/ejecutar_solodstar_05.sh" ~/Desktop/Dstar_solo.desktop
sed -i "7c Icon=/home/orangepi/SCRIPTS_ORANGE/SOLO_DSTAR.png" ~/Desktop/Dstar_solo.desktop




#cierra ircDDBGateway
sudo killall ircddbgateway
#cierra remotecontrol
sudo killall remotecontrol
#cierra D-STARRepeater
sudo killall dstarrepeater
##