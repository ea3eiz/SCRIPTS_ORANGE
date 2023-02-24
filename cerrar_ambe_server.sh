#!/bin/bash
sed -i "6cExec=mate-terminal -x sh ejecutar_ambe_server.sh" /home/orangepi/Desktop/Abrir_ambe_server.desktop
sed -i "7c Icon=/home/orangepi/SCRIPTS_ORANGE/AMBE_SERVER.png" /home/orangepi/Desktop/Abrir_ambe_server.desktop
sed -i "10c Name[es_ES]=Abrir AMBE SERVER" /home/orangepi/Desktop/Abrir_ambe_server.desktop

sed -i "11c AMBE_SERVER=OFF" /home/orangepi/status.ini

sudo killall AMBEserver

				
						
						