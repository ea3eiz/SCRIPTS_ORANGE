#!/bin/bash
puerto_router=$(awk "NR==11" /home/orangepi/status.ini) 
puerto_modem=$(awk "NR==12" /home/orangepi/status.ini)
cd ~/AMBEServer
sudo killall AMBEserver
sleep 5
./AMBEserver -p $puerto_router -i $puerto_modem

				
						
						