#!/bin/bash



#sed -i "4c Exec=sh -c 'cd /home/pi/V30;lxterminal --geometry=72x15 -e sudo sh cerrar_plus_30.sh'" ~/Desktop/Abrir_MMDVMPLUS
#sed -i "5c Icon=/home/pi/V30/DMRPLUS_ON.png" ~/Desktop/Abrir_MMDVMPLUS
#sed -i "10c Name[es_ES]=Cerrar DMR+" ~/Desktop/Abrir_MMDVMPLUS

#sed -i "6c MMDVMPLUS=ON" ~/status.ini


echo "\33[1;37m"
cd ~/MMDVMHost
echo "\33[1;32m"
clear
echo "***********************************************"
echo "*                 DMR+                        * "
echo "***********************************************"
#sleep 2
echo "\33[1;37m"
sudo ./MMDVMPLUS MMDVMPLUS.ini
#fi
#fi 
