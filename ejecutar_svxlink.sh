#!/bin/bash
cd /home/pi/Desktop/
sudo mv SVXLINK_OFF /home/pi/

cd /home/pi/
sudo mv SVXLINK_ON /home/pi/Desktop/

sleep 5
sudo svxlink
