#!/bin/bash

 status=`grep "BlueDV" /home/orangepi/status.ini`
                        status1=`expr substr $status 8 2`
                        if [ $status1 = "ON" ]
                        then
                        sleep 1
#===================
cd /home/orangepi/SCRIPTS_ORANGE
sudo  sh aviso_cerrar_bluedv_dstarrepeater29.sh
#===================
else
status2=`grep "dstarrepeater" /home/orangepi/status.ini`
                        status3=`expr substr $status2 15 2`
                        if [ $status3 = "ON" ]
                        then
                        sleep 1
#===================
cd /home/orangepi/SCRIPTS_ORANGE
sudo  sh aviso_cerrar_bluedv_dstarrepeater29.sh
#===================
else
#=============================
cd /home/orangepi/Desktop/
sudo mv DMR+_ON.desktop /home/orangepi/botones_on
sudo mv BM-OFF.desktop /home/orangepi/botones_off

cd /home/orangepi/botones_on
sudo mv BM-ON.desktop /home/orangepi/Desktop/

cd /home/orangepi/botones_off
sudo mv DMR+_OFF.desktop /home/orangepi/Desktop/

sudo killall MMDVMPLUS
sudo killall MMDVMBM

cd /home/orangepi/SCRIPTS_ORANGE
sed -i "7c MMDVMBM=ON" /home/orangepi/status.ini

cd /home/orangepi/MMDVMHost
sudo ./MMDVMBM MMDVMBM.ini
#=============================
fi 
fi
