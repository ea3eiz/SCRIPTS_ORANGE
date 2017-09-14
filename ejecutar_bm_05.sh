#!/bin/bash
#sleep 10
 #status=`grep "BlueDV" ~/status.ini`
                        #status1=`expr substr $status 8 2`
                        #if [ $status1 = "ON" ]
                        #then
                 
#===================
#cd ~/V30
#lxterminal --geometry=80x7 -e sudo sh menu_ejecutar_d-starrepeater_30.sh
#===================
#else
#status2=`grep "dstarrepeater" ~/status.ini`
                        #status3=`expr substr $status2 15 2`
                        #if [ $status3 = "ON" ]
                        #then
                     
#===================
#cd ~/V30
#lxterminal --geometry=80x7 -e sudo sh menu_ejecutar_d-starrepeater_30.sh
#===================

#else


sed -i "6cExec=mate-terminal -x sh cerrar_bm_30.sh" ~/Desktop/Abrir_MMDVMBM
sed -i "7c Icon=~/SCRIPTS_ORANGE/BRANDMEISTER_ON.png" ~/Desktop/Abrir_MMDVMBM
sed -i "10c Name[es_ES]=Cerrar BM" ~/Desktop/Abrir_MMDVMBM


sed -i "7c MMDVMBM=ON" ~/status.ini


cd ~/MMDVMHost
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
