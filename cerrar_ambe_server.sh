#!/bin/bash
sed -i "6cExec=mate-terminal -x sh ejecutar_ambe_server.sh" ~/Desktop/Abrir_ambe_server.desktop
sed -i "7c Icon=/home/orangepi/SCRIPTS_ORANGE/AMBER_SERVER.png" ~/Desktop/Abrir_ambe_server.desktop
sed -i "10c Name[es_ES]=Abrir AMBE SERVER" ~/Desktop/Abrir_ambe_server.desktop

sudo killall AMBEserver

				
						
						