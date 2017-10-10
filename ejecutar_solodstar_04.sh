#!/bin/bash
 status=`grep "BlueDV" /home/pi/status.ini`
                        status1=`expr substr $status 8 2`
                        if [ $status1 = "ON" ]
                        then
                 
#===================
cd /home/pi/V30
lxterminal --geometry=80x7 -e sudo sh menu_ejecutar_d-starrepeater_30.sh
#===================
else
status2=`grep "dstarrepeater" /home/pi/status.ini`
                        status3=`expr substr $status2 15 2`
                        if [ $status3 = "ON" ]
                        then
                     
#===================
cd /home/pi/V30
lxterminal --geometry=80x7 -e sudo sh menu_ejecutar_d-starrepeater_30.sh
#===================

else

sudo sh cerrar_bluedv_30.sh
sudo sh cerrar_bm_30.sh
sudo sh cerrar_d-star_30.sh
sudo sh cerrar_dstarrepeater_30.sh
sudo sh cerrar_mmdvmLIBRE_30.sh
sudo sh cerrar_plus_30.sh
sudo sh cerrar_ysf_30.sh

sed -i "4c Exec=sh -c 'cd /home/pi/V30; sudo sh cerrar_solodstar_04.sh'" /home/pi/Desktop/Boton_1
sed -i "5c Icon=/home/pi/V30/SOLO_DSTAR_ON.png" /home/pi/Desktop/Boton_1
sed -i "10c Name[es_ES]=Cerrar Solo D_STAR" /home/pi/Desktop/Boton_1
sed -i "9c Terminal=false" /home/pi/Desktop/Boton_1

sed -i "1c D-STAR=ON" /home/pi/status.ini
sed -i "4c Exec=sh -c 'cd /home/pi/V30; sudo sh cerrar_d-star_30.sh'" /home/pi/Desktop/ircDDBGateway
sed -i "5c Icon=/home/pi/V30/DSTAR_ON.png" /home/pi/Desktop/ircDDBGateway
sed -i "10c Name[es_ES]=Cerrar ircDDB" /home/pi/Desktop/ircDDBGateway

sed -i "9c dstarrepeater=ON" /home/pi/status.ini
sed -i "4c Exec=sh -c 'cd /home/pi/V30; sudo sh cerrar_dstarrepeater_30.sh'" /home/pi/Desktop/Abrir_D-STARRepeater
sed -i "5c Icon=/home/pi/V30/REPEATER_ON.png" /home/pi/Desktop/Abrir_D-STARRepeater
sed -i "10c Name[es_ES]=Cerrar D-STAR Repeater" /home/pi/Desktop/Abrir_D-STARRepeater

sudo ircddbgateway -gui  & dstarrepeater & ircddbgateway -gui
fi 
fi
