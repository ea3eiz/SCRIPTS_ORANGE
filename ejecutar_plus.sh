#!/bin/bash

 status=`grep "BlueDV" /home/pi/status.ini`
                        status1=`expr substr $status 8 3`
                        if [ $status1 = "OFF" ]
                        then
                        sleep 1

cd /home/pi/Desktop/
sudo mv BM_ON /home/pi/
sudo mv PLUS_OFF /home/pi/

cd /home/pi/
sudo mv PLUS_ON /home/pi/Desktop/
sudo mv BM_OFF /home/pi/Desktop/

sudo killall MMDVMPLUS
sudo killall MMDVMBM

cd /home/pi/SCRIPTS
sed -i "6c MMDVMPLUS=ON" /home/pi/status.ini

cd /home/pi/MMDVMHost
sudo ./MMDVMPLUS MMDVMPLUS.ini

else
cd /home/pi/SCRIPTS
sudo  sh aviso_cerrar_bluedv.sh
fi 
