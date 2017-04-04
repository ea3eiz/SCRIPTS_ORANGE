#!/bin/bash
cd /home/pi/Desktop/
sudo mv MMDVM_OFF /home/pi/

cd /home/pi/
sudo mv MMDVM_ON /home/pi/Desktop/

sudo killall MMDVMHost
cd /home/pi/MMDVMHost
sudo ./MMDVMHost MMDVM.ini
