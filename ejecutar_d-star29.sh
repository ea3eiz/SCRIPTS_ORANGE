#!/bin/bash

cd /home/pi/SCRIPTS

status=`grep "MMDVMBM" /home/pi/status.ini`
                        status1=`expr substr $status 9 2`

status2=`grep "MMDVMPLUS" /home/pi/status.ini`
                        status3=`expr substr $status2 11 2` 

                        if [ $status1 = "ON" ]
                        then
                        sleep 1
#======Pone D-STAR_ON y quietA D-STAR_OFF===
cd /home/pi/Desktop/
sudo mv D-STAR_OFF /home/pi/

cd /home/pi/
sudo mv D-STAR_ON /home/pi/Desktop/
#==================================
sudo ircddbgateway -gui

else
 if [ $status3 = "ON" ]
                        then
                        sleep 1
 #======Pone D-STAR_ON y quietA D-STAR_OFF===
cd /home/pi/Desktop/
sudo mv D-STAR_OFF /home/pi/

cd /home/pi/
sudo mv D-STAR_ON /home/pi/Desktop/
#==================================                       
sudo ircddbgateway -gui  
else


status2=`grep "dstarrepeater" /home/pi/status.ini`
                        status3=`expr substr $status2 15 2`
                        if [ $status3 = "ON" ]
                        then
                        sleep 1
 #======Pone D-STAR_ON y quietA D-STAR_OFF===
cd /home/pi/Desktop/
sudo mv D-STAR_OFF /home/pi/

cd /home/pi/
sudo mv D-STAR_ON /home/pi/Desktop/
#==================================                       
sudo ircddbgateway -gui 

else

cd /home/pi/SCRIPTS

lxterminal --geometry=80x24 -e sudo sh menu_ejecutar_d-star29.sh
#cd /home/pi/SCRIPTS
#sudo sh menu_ejecutar_d-star.sh
fi
fi
fi