#!/bin/bash
sed -i "6cExec=mate-terminal -x sh cerrar_ambe_server.sh" ~/Desktop/Abrir_ambe_server.desktop
sed -i "7c Icon=/home/orangepi/SCRIPTS_ORANGE/AMBER_SERVER_ON.png" ~/Desktop/Abrir_ambe_server.desktop
sed -i "10c Name[es_ES]=Cerrar AMBE SERVER" ~/Desktop/Abrir_ambe_server.desktop

puerto_router=$(awk "NR==11" /home/orangepi/status.ini) 
puerto_modem=$(awk "NR==12" /home/orangepi/status.ini)
cd ~/AMBEServer
sudo killall AMBEserver
sleep 5
mate-terminal -x ./AMBEserver -p $puerto_router -i $puerto_modem

				
						
						