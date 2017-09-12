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

#==================================
sleep 5
sed -i "1c D-STAR=ON" /home/pi/status.ini
sed -i "4c Exec=sh -c 'cd /home/pi/V30; sudo sh cerrar_d-star_30.sh'" /home/pi/Desktop/ircDDBGateway
sed -i "5c Icon=/home/pi/V30/DSTAR_ON.png" /home/pi/Desktop/ircDDBGateway
sed -i "10c Name[es_ES]=Cerrar ircDDB" /home/pi/Desktop/ircDDBGateway
sudo ircddbgateway -gui
sleep 3
sudo ircddbgateway -gui
fi
