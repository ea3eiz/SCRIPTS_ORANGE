#!/bin/bash
sleep 10
 #status=`grep "BlueDV" /home/pi/status.ini`
                        #status1=`expr substr $status 8 2`
                        #if [ $status1 = "ON" ]
                        #then
                 
#===================
#cd /home/pi/V30
#lxterminal --geometry=80x7 -e sudo sh menu_ejecutar_d-starrepeater_30.sh
#===================
#else
#status2=`grep "dstarrepeater" /home/pi/status.ini`
                        #status3=`expr substr $status2 15 2`
                        #if [ $status3 = "ON" ]
                        #then
                     
#===================
#cd /home/pi/V30
#lxterminal --geometry=80x7 -e sudo sh menu_ejecutar_d-starrepeater_30.sh
#===================

#else


sed -i "4c Exec=sh -c 'cd /home/pi/V30; lxterminal --geometry=72x15 -e sudo sh cerrar_bm_30.sh'" /home/pi/Desktop/Abrir_MMDVMBM
sed -i "5c Icon=/home/pi/V30/BRANDMEISTER_ON.png" /home/pi/Desktop/Abrir_MMDVMBM
sed -i "10c Name[es_ES]=Cerrar BM" /home/pi/Desktop/Abrir_MMDVMBM

sed -i "7c MMDVMBM=ON" /home/pi/status.ini


cd /home/pi/MMDVMHost
echo "\33[1;32m"
clear
echo "***********************************************"
echo "*                 BRANDMEISTER                * "
echo "***********************************************"
#sleep 13
echo "\33[38;5;138m"
sudo ./MMDVMBM MMDVMBM.ini
clear

#fi 
#fi
