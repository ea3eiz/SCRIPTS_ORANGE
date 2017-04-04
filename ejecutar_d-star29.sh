#!/bin/bash

cd /home/orangepi/SCRIPTS

status=`grep "MMDVMBM" /home/orangepi/status.ini`
                        status1=`expr substr $status 9 2`

status2=`grep "MMDVMPLUS" /home/orangepi/status.ini`
                        status3=`expr substr $status2 11 2` 

                        if [ $status1 = "ON" ]
                        then
                        sleep 1
#======Pone D-STAR_ON y quietA D-STAR_OFF===
cd /home/orangepi/Desktop/
sudo mv D-STAR-OFF.desktop /home/orangepi/botones_off

cd /home/orangepi/botones_on
sudo mv D-STAR-ON.desktop /home/orangepi/Desktop/
#==================================
sudo ircddbgateway -gui

else
 if [ $status3 = "ON" ]
                        then
                        sleep 1
 #======Pone D-STAR_ON y quietA D-STAR_OFF===
cd /home/orangepi/Desktop/
sudo mv D-STAR-OFF.desktop /home/orangepi/botones_off

cd /home/orangepi/botones_on
sudo mv D-STAR-ON.desktop /home/orangepi/Desktop/
#==================================                       
sudo ircddbgateway -gui  
else


status2=`grep "dstarrepeater" /home/orangepi/status.ini`
                        status3=`expr substr $status2 15 2`
                        if [ $status3 = "ON" ]
                        then
                        sleep 1
 #======Pone D-STAR_ON y quietA D-STAR_OFF===
cd /home/orangepi/Desktop/
sudo mv D-STAR-OFF.desktop /home/orangepi/botones_off

cd /home/orangepi/botones_on
sudo mv D-STAR-ON.desktop /home/orangepi/Desktop/
#==================================                      
sudo ircddbgateway -gui 

else

cd /home/orangepi/SCRIPTS

lxterminal --geometry=80x24 -e sudo sh menu_ejecutar_d-star29.sh
#cd /home/orangepi/SCRIPTS
#sudo sh menu_ejecutar_d-star.sh
fi
fi
fi