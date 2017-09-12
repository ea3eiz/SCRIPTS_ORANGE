#!/bin/bash
sed -i "4cExec=sh -c 'cd /home/pi/V30; sudo sh ejecutar_bluedv_05.sh'" /home/pi/Desktop/Abrir_BlueDV
sed -i "5c Icon=/home/pi/V30/BLUEDV.png" /home/pi/Desktop/Abrir_BlueDV
sed -i "10c Name[es_ES]=Abrir BlueDV" /home/pi/Desktop/Abrir_BlueDV

sed -i "2c BlueDV=OFF" /home/pi/status.ini

sudo su | ps aux | grep BlueDV.exe | grep -v grep | awk '{print $2}' | xargs kill

 
