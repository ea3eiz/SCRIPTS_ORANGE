#!/bin/bash
sleep 10
 #status=`grep "BlueDV" /home/pi/status.ini`
                        #status1=`expr substr $status 8 2`
                        #if [ $status1 = "ON" ]
                        #then
                        #sleep 1

#===================
#cd /home/pi/V30
#lxterminal --geometry=80x7 -e sudo sh menu_ejecutar_d-starrepeater_30.sh
#===================

#else

#status2=`grep "dstarrepeater" /home/pi/status.ini`
                        #status3=`expr substr $status2 15 2`
                        #if [ $status3 = "ON" ]
                        #then
                        #sleep 1


#===================
#cd /home/pi/V30
#lxterminal --geometry=80x7 -e sudo sh menu_ejecutar_d-starrepeater_30.sh
#===================

#else
#sudo sh cerrar_mmdvmLIBRE_30.sh
#sudo sh cerrar_bm_30.sh

sed -i "4c Exec=sh -c 'cd /home/pi/V30;lxterminal --geometry=72x15 -e sudo sh cerrar_plus_30.sh'" /home/pi/Desktop/Abrir_MMDVMPLUS
sed -i "5c Icon=/home/pi/V30/DMRPLUS_ON.png" /home/pi/Desktop/Abrir_MMDVMPLUS
sed -i "10c Name[es_ES]=Cerrar DMR+" /home/pi/Desktop/Abrir_MMDVMPLUS

sed -i "6c MMDVMPLUS=ON" /home/pi/status.ini


echo "\33[1;37m"
cd /home/pi/MMDVMHost
echo "\33[1;32m"
clear
echo "***********************************************"
echo "*                 DMR+                        * "
echo "***********************************************"
#sleep 2
echo "\33[1;37m"
sudo ./MMDVMPLUS MMDVMPLUS.ini
#fi
#fi 
