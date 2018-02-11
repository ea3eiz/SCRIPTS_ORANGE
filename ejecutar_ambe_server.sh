#!/bin/bash
puerto_router=$(awk "NR==11" ~/status.ini) 
puerto_modem=$(awk "NR==12" ~/status.ini)
cd ~/AMBEServer
./AMBEserver -p $puerto_router -i $puerto_modem

				
						
						