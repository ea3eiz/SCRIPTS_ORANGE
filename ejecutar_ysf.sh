#!/bin/bash

status=`grep "BlueDV" /home/pi/status.ini`
                        status1=`expr substr $status 8 3`
                        if [ $status1 = "OFF" ]
                        then
                        sleep 1
cd /home/pi/Desktop/
sudo mv YSF_OFF /home/pi/
ls
cd /home/pi/
sudo mv YSF_ON /home/pi/Desktop/

sudo killall YSFParrot
sudo killall YSFGateway
cd /home/pi/YSFClients/YSFGateway
sudo ./YSFGateway YSFGateway.ini

else
cd /home/pi/SCRIPTS
sudo  sh aviso_cerrar_bluedv.sh
fi 