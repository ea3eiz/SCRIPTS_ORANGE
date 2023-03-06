#!/bin/bash

cd /home/orangepi/Desktop
sudo cp BlueDV.desktop /home/orangepi
sudo sed -i "6c Exec=sh cerrar_dump1090.sh"
sudo sed -i "7c Icon=/home/orangepi/SCRIPTS_ORANGE/ICONO_AVION_ON.png"
sudo sed -i "8c Path=/home/orangepi/SCRIPTS_ORANGE"
sudo sed -i "11c Name[es_ES]=Cerrar Dump1090"

cd /home/orangepi
sudo cp BlueDV.desktop /home/orangepi/Desktop
sudo rm /home/orangepi/BlueDV.desktop  

#stick=$(awk "NR==40" /home/orangepi/status.ini)
#raw=$(awk "NR==42" /home/orangepi/status.ini)
#ppm=$(awk "NR==44" /home/orangepi/status.ini)
#http=$(awk "NR==46" /home/orangepi/status.ini)
#gain=$(awk "NR==48" /home/orangepi/status.ini)
#beast=$(awk "NR==50" /home/orangepi/status.ini)
#
#if [ "$stick" = 'RSP1' ];then
#xterm -geometry 88x51+22+0 -bg black -fg green -fa ‘verdana’ -fs 9x -T DUMP1090 -e sudo /home/orangepi/dump1090_sdrplay/dump1090 --net --interactive --gain $gain --dev-sdrplay
#
#elif [ "$gain" = '-10' ];then
#xterm -geometry 88x51+22+0 -bg black -fg green -fa ‘verdana’ -fs 9x -T DUMP1090 -e /home/orangepi/dump1090/dump1090 --net --interactive --net-ro-port $raw --net-bo-port $beast --gain $gain #--ppm $ppm --net-http-port $http
#else
#xterm -geometry 88x51+22+0 -bg black -fg green -fa ‘verdana’ -fs 9x -T DUMP1090 -e /home/orangepi/dump1090/dump1090 --net --interactive --net-ro-port $raw --net-bo-port $beast --ppm $ppm #--net-http-port $http
#fi
#
##cd /home/orangepi/Desktop
##sudo cp BlueDV.desktop /home/pi
##sed -i "4c Exec=sh -c 'cd /home/orangepi/$SCRIPTS_version; sh ejecutar_dump1090.sh'" /home/orangepi/BlueDV.desktop
##sed -i "5c Icon=/home/orangepi/$SCRIPTS_version/ICONO_AVION_OFF.png" /home/orangepi/BlueDV.desktop
##sed -i "10c Name[es_ES]=Abrir Dump1090" /home/orangepi/BlueDV.desktop
###sed -i "7c MMDVMBM=OFF" /home/orangepi/status.ini
##cd /home/pi
##sudo cp BlueDV.desktop /home/orangepi/Desktop
##sleep 1
##sudo rm /home/orangepi/BlueDV.desktop
#