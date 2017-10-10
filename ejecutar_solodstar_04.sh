#!/bin/bash
 


#sed -i "9c dstarrepeater=ON" /home/pi/status.ini
#sed -i "4c Exec=sh -c 'cd /home/pi/V30; sudo sh cerrar_dstarrepeater_30.sh'" /home/pi/Desktop/Abrir_D-STARRepeater
#sed -i "5c Icon=/home/pi/V30/REPEATER_ON.png" /home/pi/Desktop/Abrir_D-STARRepeater
#sed -i "10c Name[es_ES]=Cerrar D-STAR Repeater" /home/pi/Desktop/Abrir_D-STARRepeater

ircddbgateway -gui  & dstarrepeater

