#!/bin/bash

sed -i "6c Exec=mate-terminal -x sh cerrar_DMR2NXDN.sh" /home/orangepi/Desktop/Abrir_DMR2NXDN.desktop
sed -i "7c Icon=/home/orangepi/SCRIPTS_ORANGE/DMR2NXDN_ON.png" /home/orangepi/Desktop/Abrir_DMR2NXDN.desktop
sed -i "10c Name[es_ES]=Cerrar DMR2NXDN" /home/orangepi/Desktop/Abrir_DMR2NXDN.desktop


#sed -i "14c NXDN2DMR=ON" /home/orangepi/status.ini

cd /home/orangepi/DMR2NXDN
sudo mate-terminal -x ./DMR2NXDN DMR2NXDN.ini & 
sleep 1
cd /home/orangepi/MMDVMHost
sudo mate-terminal -x ./MMDVMHost MMDVMDMR2NXDN.ini &
sleep 1
cd /home/orangepi/NXDNClients/NXDNGateway
sudo mate-terminal -x ./NXDNGateway NXDNGateway.ini



