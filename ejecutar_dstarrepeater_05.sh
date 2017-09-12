#!/bin/bash

status6=`grep "BlueDV" /home/pi/status.ini`
                        status7=`expr substr $status6 8 2`
#====================================   
                     
                        if [ $status7 = "ON" ]
                        then
cd /home/pi/V30
#sudo sh cerrar_ysf_30.sh
sudo sh cerrar_bm_30.sh
sudo sh cerrar_plus_30.sh
sudo sh cerrar_mmdvmLIBRE_30.sh
lxterminal --geometry=80x7 -e sudo sh menu_ejecutar_d-starrepeater_30.sh

else

sed -i "4c Exec=sh -c 'cd /home/pi/V30; sudo sh cerrar_dstarrepeater_30.sh'" /home/pi/Desktop/Abrir_D-STARRepeater
sed -i "5c Icon=/home/pi/V30/REPEATER_ON.png" /home/pi/Desktop/Abrir_D-STARRepeater
sed -i "10c Name[es_ES]=Cerrar D-STAR Repeater" /home/pi/Desktop/Abrir_D-STARRepeater
sed -i "9c dstarrepeater=ON" /home/pi/status.ini	
sudo dstarrepeater
#sudo ircddbgateway -gui
fi

