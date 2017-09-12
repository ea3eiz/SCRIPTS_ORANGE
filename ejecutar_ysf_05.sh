#!/bin/bash
status6=`grep "BlueDV" /home/pi/status.ini`
                        status7=`expr substr $status6 8 2`
#====================================   
                     
                        if [ $status7 = "ON" ]
                        then
 cd /home/pi/V30                       
lxterminal --geometry=80x7 -e sudo sh menu_ejecutar_d-starrepeater_30.sh



else
	sleep 5
 #=========================
sed -i "4c Exec=sh -c 'cd /home/pi/V30;lxterminal --geometry=72x15 -e sudo sh cerrar_ysf_30.sh'" /home/pi/Desktop/YSFGateway
sed -i "5c Icon=/home/pi/V30/YSF_ON.png" /home/pi/Desktop/YSFGateway
sed -i "10c Name[es_ES]=Cerrar YSF" /home/pi/Desktop/YSFGateway

sed -i "3c YSF=ON" /home/pi/status.ini
cd /home/pi/YSFClients/YSFGateway
echo "\33[1;32m"
clear
echo "***********************************************************"
echo "*                 YSFGateway                              * "
echo "***********************************************************"
sleep 3
echo "\33[1;33m"
sudo ./YSFGateway YSFGateway.ini
#=========================


fi

