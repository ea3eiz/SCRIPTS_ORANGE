#!/bin/bash

cd /home/pi/SCRIPTS

status=`grep "MMDVMBM" /home/pi/status.ini`
                        status1=`expr substr $status 9 2`

status2=`grep "MMDVMPLUS" /home/pi/status.ini`
                        status3=`expr substr $status2 11 2` 

                        if [ $status1 = "ON" ]
                        then
                        sleep 1

#=========================
cd /home/pi/Desktop/
sudo mv YSF_OFF /home/pi/
cd /home/pi/
sudo mv YSF_ON /home/pi/Desktop/
sudo killall YSFParrot
sudo killall YSFGateway
cd /home/pi/YSFClients/YSFParrot
sudo ./YSFParrot 4200
#=========================

else
 if [ $status3 = "ON" ]
                        then
                        sleep 1
#=========================
cd /home/pi/Desktop/
sudo mv YSF_OFF /home/pi/
cd /home/pi/
sudo mv YSF_ON /home/pi/Desktop/
sudo killall YSFParrot
sudo killall YSFGateway
cd /home/pi/YSFClients/YSFParrot
sudo ./YSFParrot 4200
#=========================  

else
cd /home/pi/SCRIPTS
sudo sh menu_ejecutar_parrot29.sh

fi
fi
