#!/bin/bash
echo "\33[1;37m"
cd ~/MMDVMHost
echo "\33[1;32m"
clear
echo "***********************************************"
echo "*                 Dstar solo                 * "
echo "***********************************************"
#sleep 2
echo "\33[1;37m"
sudo killall MMDVMDSTAR
sudo ./MMDVMDSTAR MMDVMDSTAR.ini & ircddbgateway -gui

