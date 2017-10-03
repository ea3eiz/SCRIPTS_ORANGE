#!/bin/bash
clear
echo "\33[1;32m ACTUALIZANDO IDS INDICATIVOS >>>>>"
sleep 10
sed -i "52c DMRIDFILE=/home/pi/MMDVMHost/DMRIds.dat" /home/pi/MMDVMHost/DMRIDUpdate.sh
sed -i '58c #RESTARTCOMMAND="systemctl restart mmdvmhost.service' /home/pi/MMDVMHost/DMRIDUpdate.sh
sudo sh /home/pi/MMDVMHost/DMRIDUpdate.sh
