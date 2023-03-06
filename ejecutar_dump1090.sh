#!/bin/bash
sed -i "6c Exec=sh cerrar_dump1090.sh" /home/orangepi/Desktop/BlueDV.desktop
sed -i "7c Icon=/home/orangepi/SCRIPTS_ORANGE/ICONO_AVION_ON.png" /home/orangepi/Desktop/BlueDV.desktop
sed -i "10c Name[es_ES]=Cerrar Dump1090" /home/orangepi/Desktop/BlueDV.desktop

stick=$(awk "NR==40" /home/orangepi/status.ini)
raw=$(awk "NR==42" /home/orangepi/status.ini)
ppm=$(awk "NR==44" /home/orangepi/status.ini)
http=$(awk "NR==46" /home/orangepi/status.ini)
gain=$(awk "NR==48" /home/orangepi/status.ini)
beast=$(awk "NR==50" /home/orangepi/status.ini)

if [ "$stick" = 'RSP1' ];then
xterm -geometry 88x51+22+0 -bg black -fg green -fa ‘verdana’ -fs 9x -T DUMP1090 -e sudo /home/orangepi/dump1090_sdrplay/dump1090 --net --interactive --gain $gain --dev-sdrplay

elif [ "$gain" = '-10' ];then
xterm -geometry 88x51+22+0 -bg black -fg green -fa ‘verdana’ -fs 9x -T DUMP1090 -e /home/orangepi/dump1090/dump1090 --net --interactive --net-ro-port $raw --net-bo-port $beast --gain $gain --ppm $ppm --net-http-port $http
else
xterm -geometry 88x51+22+0 -bg black -fg green -fa ‘verdana’ -fs 9x -T DUMP1090 -e /home/orangepi/dump1090/dump1090 --net --interactive --net-ro-port $raw --net-bo-port $beast --ppm $ppm --net-http-port $http
fi

sed -i "6c Exec=sh ejecutar_dump1090.sh" /home/orangepi/Desktop/BlueDV.desktop
sed -i "7c Icon=/home/orangepi/SCRIPTS_ORANGE/ICONO_AVION_OFF.png" /home/orangepi/Desktop/BlueDV.desktop
sed -i "10c Name[es_ES]=Ejecutar Dump1090" /home/orangepi/Desktop/BlueDV.desktop
