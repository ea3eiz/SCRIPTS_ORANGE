#!/bin/bash
sed -i "6cExec=mate-terminal -x sh cerrar_ambe_server.sh" ~/Desktop/Abrir_ambe_server.desktop
sed -i "7c Icon=/home/orangepi/SCRIPTS_ORANGE/AMBER_SERVER_ON.png" ~/Desktop/Abrir_ambe_server.desktop
sed -i "10c Name[es_ES]=Cerrar AMBE SERVER" ~/Desktop/Abrir_ambe_server.desktop


sed -i "11c AMBE_SERVER=ON" ~/status.ini

puerto_router=$(awk "NR==1" /home/orangepi/ambe_server.ini) 
puerto_modem=$(awk "NR==2" /home/orangepi/ambe_server.ini) 
cd ~/AMBEServer
sudo killall AMBEserver
sleep 5
./AMBEserver -p $puerto_router -i $puerto_modem

sed -i "6cExec=mate-terminal -x sh ejecutar_ambe_server.sh" ~/Desktop/Abrir_ambe_server.desktop
sed -i "7c Icon=/home/orangepi/SCRIPTS_ORANGE/AMBE_SERVER.png" ~/Desktop/Abrir_ambe_server.desktop
sed -i "10c Name[es_ES]=Abrir AMBE SERVER" ~/Desktop/Abrir_ambe_server.desktop

sed -i "11c AMBE_SERVER=OFF" ~/status.ini
