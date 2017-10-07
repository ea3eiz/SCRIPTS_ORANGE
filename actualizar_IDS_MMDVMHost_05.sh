#!/bin/bash
clear
echo "\33[1;32m ACTUALIZANDO IDS INDICATIVOS >>>>>"
sleep 10
sed -i "52c DMRIDFILE=~/MMDVMHost/DMRIds.dat" ~/MMDVMHost/DMRIDUpdate.sh
sed -i '58c #RESTARTCOMMAND="systemctl restart mmdvmhost.service' ~/MMDVMHost/DMRIDUpdate.sh
sudo sh ~/MMDVMHost/DMRIDUpdate.sh
