#!/bin/bash

 status=`grep "BlueDV" /home/pi/status.ini`
                        status1=`expr substr $status 8 2`
                        if [ $status1 = "ON" ]
                        then
                        sleep 1

#===================
cd /home/pi/SCRIPTS
sudo  sh aviso_cerrar_bluedv.sh
#===================

else

status2=`grep "dstarrepeater" /home/pi/status.ini`
                        status3=`expr substr $status2 15 2`
                        if [ $status3 = "ON" ]
                        then
                        sleep 1


#===================
cd /home/pi/SCRIPTS
sudo  sh aviso_cerrar_bluedv.sh
#===================

else

#=============================
cd /home/pi/Desktop/
sudo mv PLUS_ON /home/pi/
sudo mv BM_OFF /home/pi/

cd /home/pi/
sudo mv BM_ON /home/pi/Desktop/
sudo mv PLUS_OFF /home/pi/Desktop/

sudo killall MMDVMPLUS
sudo killall MMDVMBM

cd /home/pi/SCRIPTS
sed -i "7c MMDVMBM=ON" /home/pi/status.ini

cd /home/pi/MMDVMHost
sudo ./MMDVMBM MMDVMBM.ini
#=============================

fi 
fi
