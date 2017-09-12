#!/bin/bash

#pone todos los status de inicio en OFF
sed -i "1c D-STAR=OFF" /home/pi/status.ini
sed -i "2c BlueDV=OFF" /home/pi/status.ini
sed -i "3c YSF=OFF" /home/pi/status.ini
sed -i "4c DV4mini=OFF" /home/pi/status.ini
sed -i "5c MMDVM=OFF" /home/pi/status.ini
sed -i "6c MMDVMPLUS=OFF" /home/pi/status.ini
sed -i "7c MMDVMBM=OFF" /home/pi/status.ini
sed -i "8c SVXLINK=OFF" /home/pi/status.ini
sed -i "9c dstarrepeater=OFF" /home/pi/status.ini
sed -i "10c MMDVMLIBRE=OFF" /home/pi/status.ini

#Quita todos los iconos verdes que se quedan al cerrar la imagen
sed -i "4cExec=sh -c 'cd /home/pi/V30; sudo sh ejecutar_dv4_30.sh'" /home/pi/Desktop/Abrir_dv4mini
sed -i "5c Icon=/home/pi/V30/dv4k.png" /home/pi/Desktop/Abrir_dv4mini
sed -i "10c Name[es_ES]=Abrir DV4mini" /home/pi/Desktop/Abrir_dv4mini

sed -i "4c Exec=sh -c 'cd /home/pi/V30;lxterminal --geometry=60x15 -e sudo sh ejecutar_ysf_30.sh'" /home/pi/Desktop/YSFGateway
sed -i "5c Icon=/home/pi/V30/C4FM.png" /home/pi/Desktop/YSFGateway
sed -i "10c Name[es_ES]=Abrir YSF" /home/pi/Desktop/YSFGateway

sed -i "4cExec=sh -c 'cd /home/pi/V30; lxterminal --geometry=72x15 -e sudo sh ejecutar_mmdvm_30.sh'" /home/pi/Desktop/Abrir_Radio
sed -i "5c Icon=/home/pi/V30/MMDVM.png" /home/pi/Desktop/Abrir_Radio
sed -i "10c Name[es_ES]=Abrir Radio" /home/pi/Desktop/Abrir_Radio

sed -i "4cExec=sh -c 'cd /home/pi/V30; sudo sh ejecutar_bluedv_05.sh'" /home/pi/Desktop/Abrir_BlueDV
sed -i "5c Icon=/home/pi/V30/BLUEDV.png" /home/pi/Desktop/Abrir_BlueDV
sed -i "10c Name[es_ES]=Abrir BlueDV" /home/pi/Desktop/Abrir_BlueDV

sed -i "4cExec=sh -c 'cd /home/pi/V30; lxterminal --geometry=72x15 -e sudo sh ejecutar_bm_30.sh'" /home/pi/Desktop/Abrir_MMDVMBM
sed -i "5c Icon=/home/pi/V30/DMR.png" /home/pi/Desktop/Abrir_MMDVMBM
sed -i "10c Name[es_ES]=Abrir BM" /home/pi/Desktop/Abrir_MMDVMBM

sed -i "1c D-STAR=OFF" /home/pi/status.ini
sed -i "4cExec=sh -c 'cd /home/pi/V30; sudo sh ejecutar_d-star_30.sh'" /home/pi/Desktop/ircDDBGateway
sed -i "5c Icon=/home/pi/V30/DSTAR.png" /home/pi/Desktop/ircDDBGateway
sed -i "10c Name[es_ES]=Abrir ircDDB" /home/pi/Desktop/ircDDBGateway

sed -i "4c Exec=sh -c 'cd /home/pi/V30; sudo sh ejecutar_dstarrepeater_30.sh'" /home/pi/Desktop/Abrir_D-STARRepeater
sed -i "5c Icon=/home/pi/V30/repeater.png" /home/pi/Desktop/Abrir_D-STARRepeater
sed -i "10c Name[es_ES]=Abrir D-STAR Repeater" /home/pi/Desktop/Abrir_D-STARRepeater

sed -i "4c Exec=sh -c 'cd /home/pi/V30; lxterminal --geometry=72x15 -e sudo sh ejecutar_mmdvm_30.sh'" /home/pi/Desktop/Abrir_Radio
sed -i "5c Icon=/home/pi/V30/MMDVM.png" /home/pi/Desktop/Abrir_Radio
sed -i "10c Name[es_ES]=Abrir Radio" /home/pi/Desktop/Abrir_Radio

sed -i "4c Exec=sh -c 'cd /home/pi/V30;lxterminal --geometry=72x15 -e sudo sh ejecutar_mmdvmLIBRE_30.sh'" /home/pi/Desktop/Abrir_LIBRE
sed -i "5c Icon=/home/pi/V30/LIBRE.png" /home/pi/Desktop/Abrir_LIBRE
sed -i "10c Name[es_ES]=Abrir LIBRE" /home/pi/Desktop/Abrir_LIBRE

sed -i "4c Exec=sh -c 'cd /home/pi/V30;lxterminal --geometry=72x15 -e sudo sh ejecutar_plus_30.sh'" /home/pi/Desktop/Abrir_MMDVMPLUS
sed -i "5c Icon=/home/pi/V30/ICONO_DMRPLUS.png" /home/pi/Desktop/Abrir_MMDVMPLUS
sed -i "10c Name[es_ES]=Abrir DMR+" /home/pi/Desktop/Abrir_MMDVMPLUS

sed -i "4c Exec=sh -c 'cd /home/pi/V30;lxterminal --geometry=72x15 -e sudo sh ejecutar_svxlink_30.sh'" /home/pi/Desktop/svxlink
sed -i "5c Icon=/home/pi/V30/ECHOLINK.png" /home/pi/Desktop/svxlink
sed -i "10c Name[es_ES]=Abrir SVXLINK" /home/pi/Desktop/svxlink

cd /home/pi/V30
sudo git pull 
