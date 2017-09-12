#!/bin/bash
sed -i "4c DV4mini=OFF" /home/pi/status.ini

sed -i "4cExec=sh -c 'cd /home/pi/V30; sudo sh ejecutar_dv4_30.sh'" /home/pi/Desktop/Abrir_dv4mini
sed -i "5c Icon=/home/pi/V30/dv4k.png" /home/pi/Desktop/Abrir_dv4mini
sed -i "10c Name[es_ES]=Abrir DV4mini" /home/pi/Desktop/Abrir_dv4mini

sudo su | ps aux | grep dv4mini.exe | grep -v grep | awk '{print $2}' | xargs kill
sudo killall dv_serial
sudo killall python
