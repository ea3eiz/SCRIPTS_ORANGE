#!/bin/bash

#cierra D-STARRepeater y quita icono verde de "cerrar Cerrar D-STARRepeater"
sed -i "9c dstarrepeater=OFF" /home/pi/status.ini
sed -i "4c Exec=sh -c 'cd /home/pi/V30; sudo sh ejecutar_dstarrepeater_30.sh'" /home/pi/Desktop/Abrir_D-STARRepeater
sed -i "5c Icon=/home/pi/V30/repeater.png" /home/pi/Desktop/Abrir_D-STARRepeater
sed -i "10c Name[es_ES]=Abrir D-STAR Repeater" /home/pi/Desktop/Abrir_D-STARRepeater

#cierra ircDDBGateway y quita icono verde de "cerrar ircDDB"
sed -i "1c D-STAR=OFF" /home/pi/status.ini
sed -i "4cExec=sh -c 'cd /home/pi/V30; sudo sh ejecutar_d-star_30.sh'" /home/pi/Desktop/ircDDBGateway
sed -i "5c Icon=/home/pi/V30/DSTAR.png" /home/pi/Desktop/ircDDBGateway
sed -i "10c Name[es_ES]=Abrir ircDDB" /home/pi/Desktop/ircDDBGateway


sed -i "4cExec=sh -c 'cd /home/pi/V30; sudo sh ejecutar_solodstar_04.sh'" /home/pi/Desktop/Boton_1
sed -i "5c Icon=/home/pi/V30/SOLO_DSTAR.png" /home/pi/Desktop/Boton_1
sed -i "10c Name[es_ES]=Abrir solo D_STAR" /home/pi/Desktop/Boton_1
sed -i "9c Terminal=false" /home/pi/Desktop/Boton_1


#cierra ircDDBGateway
sudo killall ircddbgateway
#cierra remotecontrol
sudo killall remotecontrol
#cierra D-STARRepeater
sudo killall dstarrepeater