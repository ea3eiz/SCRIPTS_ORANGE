#!/bin/bash
clear
echo "\33[1;32m ACTUALIZANDO IDS INDICATIVOS >>>>>"
sed -i "52c xxDMRIDFILE=~/MMDVMHost/DMRIds.dat" ~/MMDVMHost/linux/DMRIDUpdate.sh
sed -i '58c #RESTARTCOMMAND="systemctl restart mmdvmhost.service' ~/MMDVMHost/linux/DMRIDUpdate.sh
sudo sh ~/MMDVMHost/linux/DMRIDUpdate.sh
