#!/bin/bash
#cd /home/pi/SCRIPTS
#sudo sh popus_D-STAR.sh
#cd /home/pi/Desktop/
#sudo mv D-STAR_OFF /home/pi/

#cd /home/pi/
#sudo mv D-STAR_ON /home/pi/Desktop/

#cd /home/pi/SCRIPTS
#sudo sh cerrar_bluedv.sh

#sudo killall ircddbgateway
#Terminal=false
#sudo ircddbgateway -gui


#!/bin/bash
cd /home/pi/SCRIPTS
sudo sh popus_D-STAR.sh
cd /home/pi/Desktop/
sudo mv D-STAR_OFF /home/pi/

cd /home/pi/
sudo mv D-STAR_ON /home/pi/Desktop/

cd /home/pi/SCRIPTS
#sudo sh cerrar_bluedv.sh

status=`grep "MMDVMBM" /home/pi/status.ini`
                        status1=`expr substr $status 9 2`

status2=`grep "MMDVMPLUS" /home/pi/status.ini`
                        status3=`expr substr $status2 11 2` 

                        if [ $status1 = "ON" ]
                        then
                        sleep 1

sudo ircddbgateway -gui

else
 if [ $status3 = "ON" ]
                        then
                        sleep 1
sudo ircddbgateway -gui  
else                     	
sudo ircddbgateway -gui | lxterminal --geometry=80x30 -e sudo sh menu_ejecutar_d-star.sh
fi
fi