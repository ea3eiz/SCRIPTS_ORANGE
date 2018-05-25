#!/bin/bash

sleep 10

#pone todos los status de inicio en OFF
sed -i "1c D-STAR=OFF" ~/status.ini
sed -i "2c BlueDV=OFF" ~/status.ini
sed -i "3c YSF=OFF" ~/status.ini
sed -i "4c DV4mini=OFF" ~/status.ini
sed -i "5c MMDVM=OFF" ~/status.ini
sed -i "6c MMDVMPLUS=OFF" ~/status.ini
sed -i "7c MMDVMBM=OFF" ~/status.ini
sed -i "8c SVXLINK=OFF" ~/status.ini
sed -i "9c dstarrepeater=OFF" ~/status.ini
sed -i "10c MMDVMLIBRE=OFF" ~/status.ini
sed -i "11c AMBE_SERVER=OFF" ~/status.ini
sed -i "12c SOLOFUSION=OFF" ~/status.ini
sed -i "13c SOLODSTAR=OFF" ~/status.ini
sed -i "14c YSF2DMR=OFF" ~/status.ini

cd ~/SCRIPTS_ORANGE/
git pull

# pone la hora al sistema a quien le falle la del armbian
sudo ntpdate -u hora.roa.es

# pone el altavoz en la barra superior
pasystray &

#Quita todos los iconos verdes que se quedan al cerrar la imagen
sed -i "4cExec=sh -c 'cd ~/V30; sudo sh ejecutar_dv4_30.sh'" ~/Desktop/Abrir_dv4mini
sed -i "5c Icon=~/V30/dv4k.png" ~/Desktop/Abrir_dv4mini
sed -i "10c Name[es_ES]=Abrir DV4mini" ~/Desktop/Abrir_dv4mini

sed -i "4c Exec=sh -c 'cd ~/V30;lxterminal --geometry=60x15 -e sudo sh ejecutar_ysf_30.sh'" ~/Desktop/YSFGateway
sed -i "5c Icon=~/V30/C4FM.png" ~/Desktop/YSFGateway
sed -i "10c Name[es_ES]=Abrir YSF" ~/Desktop/YSFGateway

sed -i "4cExec=sh -c 'cd ~/V30; lxterminal --geometry=72x15 -e sudo sh ejecutar_mmdvm_30.sh'" ~/Desktop/Abrir_Radio
sed -i "5c Icon=~/V30/MMDVM.png" ~/Desktop/Abrir_Radio
sed -i "10c Name[es_ES]=Abrir Radio" ~/Desktop/Abrir_Radio

sed -i "4cExec=sh -c 'cd ~/V30; sudo sh ejecutar_bluedv_05.sh'" ~/Desktop/Abrir_BlueDV
sed -i "5c Icon=~/V30/BLUEDV.png" ~/Desktop/Abrir_BlueDV
sed -i "10c Name[es_ES]=Abrir BlueDV" ~/Desktop/Abrir_BlueDV

sed -i "4cExec=sh -c 'cd ~/V30; lxterminal --geometry=72x15 -e sudo sh ejecutar_bm_30.sh'" ~/Desktop/Abrir_MMDVMBM
sed -i "5c Icon=~/V30/DMR.png" ~/Desktop/Abrir_MMDVMBM
sed -i "10c Name[es_ES]=Abrir BM" ~/Desktop/Abrir_MMDVMBM

sed -i "4c Exec=sh -c 'cd ~/V30; lxterminal --geometry=72x15 -e sudo sh ejecutar_mmdvm_30.sh'" ~/Desktop/Abrir_Radio
sed -i "5c Icon=~/V30/MMDVM.png" ~/Desktop/Abrir_Radio
sed -i "10c Name[es_ES]=Abrir Radio" ~/Desktop/Abrir_Radio

sed -i "4c Exec=sh -c 'cd ~/V30;lxterminal --geometry=72x15 -e sudo sh ejecutar_mmdvmLIBRE_30.sh'" ~/Desktop/Abrir_LIBRE
sed -i "5c Icon=~/V30/LIBRE.png" ~/Desktop/Abrir_LIBRE
sed -i "10c Name[es_ES]=Abrir LIBRE" ~/Desktop/Abrir_LIBRE

sed -i "4c Exec=sh -c 'cd ~/V30;lxterminal --geometry=72x15 -e sudo sh ejecutar_plus_30.sh'" ~/Desktop/Abrir_MMDVMPLUS
sed -i "5c Icon=~/V30/ICONO_DMRPLUS.png" ~/Desktop/Abrir_MMDVMPLUS
sed -i "10c Name[es_ES]=Abrir DMR+" ~/Desktop/Abrir_MMDVMPLUS

sed -i "4c Exec=sh -c 'cd ~/V30;lxterminal --geometry=72x15 -e sudo sh ejecutar_svxlink_30.sh'" ~/Desktop/svxlink
sed -i "5c Icon=~/V30/ECHOLINK.png" ~/Desktop/svxlink
sed -i "10c Name[es_ES]=Abrir SVXLINK" ~/Desktop/svxlink

sed -i "6c Exec=sh -c 'cd ~/V30/;lxterminal --geometry=80x20 -e sudo sh ejecutar_solodstar.sh'" ~/Desktop/AbrirsoloDstar.desktop
sed -i "7c Icon=~/V30/SOLO_D-STAR.png" ~/Desktop/AbrirsoloDstar.desktop
sed -i "11c Name[es_ES]=Abrir solo D-STAR" ~/Desktop/AbrirsoloDstar.desktop

sed -i "6c Exec=sh -c 'cd ~/V30/;lxterminal --geometry=80x20 -e sudo sh ejecutar_solofusion.sh'" ~/Desktop/AbrirsoloYSF.desktop
sed -i "7c Icon=~/V30/SOLO_YSF.png" ~/Desktop/AbrirsoloYSF.desktop
sed -i "11c Name[es_ES]=Abrir solo FUSION" ~/Desktop/AbrirsoloYSF.desktop

sed -i "4c Exec=sh -c 'cd ~/V30; sudo sh ejecutar_d-star_30.sh'" ~/Desktop/ircDDBGateway
sed -i "5c Icon=~/V30/DSTAR.png" ~/Desktop/ircDDBGateway
sed -i "10c Name[es_ES]=Abrir ircDDB" ~/Desktop/ircDDBGateway

sed -i "4c Exec=sh -c 'cd ~/V30/;lxterminal --geometry=80x20 -e sudo sh ejecutar_YSF2DMR.sh'" ~/Desktop/Abrir_YSF2DMR.desktop
sed -i "5c Icon=~/V30/YSF2DMR.png" ~/Desktop/Abrir_YSF2DMR.desktop
sed -i "10c Name[es_ES]=Abrir YSF2DMR" ~/Desktop/Abrir_YSF2DMR.desktop

sed -i "4c Exec=sh -c 'cd ~/V30;lxterminal --geometry=72x15 -e sudo sh ejecutar_ambe_server.sh'" ~/Desktop/abrir_ambe_server.desktop
sed -i "5c Icon=~/V30/AMBER_SERVER.png" ~/Desktop/abrir_ambe_server.desktop
sed -i "10c Name[es_ES]=Abrir AMBE SERVER" ~/Desktop/abrir_ambe_server.desktop

sed -i "4c Exec=sh -c 'cd ~/V30; sudo sh ejecutar_solodstar_04.sh'" ~/Desktop/Abrir_D-STARRepeater
sed -i "5c Icon=~/V30/repeater.png" ~/Desktop/Abrir_D-STARRepeater
sed -i "10c Name[es_ES]=Abrir D-STAR Repeater" ~/Desktop/Abrir_D-STARRepeater

sleep 10

#=================================================================================
#pone todos los datos de DMR+ , Brandameiter, svxlink etc en panel_control.ini

#BM
indi=$(awk "NR==2" ~/MMDVMHost/MMDVMBM.ini)
ide=$(awk "NR==3" ~/MMDVMHost/MMDVMBM.ini)
frec=$(awk "NR==13" ~/MMDVMHost/MMDVMBM.ini)
master=$(awk "NR==140" ~/MMDVMHost/MMDVMBM.ini)
sed -i "1c $indi" ~/info_panel_control.ini
sed -i "2c $ide" ~/info_panel_control.ini
sed -i "3c $frec" ~/info_panel_control.ini
sed -i "4c $master" ~/info_panel_control.ini

#PLUS
indi=$(awk "NR==2" ~/MMDVMHost/MMDVMPLUS.ini)
ide=$(awk "NR==3" ~/MMDVMHost/MMDVMPLUS.ini)
frec=$(awk "NR==13" ~/MMDVMHost/MMDVMPLUS.ini)
master=$(awk "NR==140" ~/MMDVMHost/MMDVMPLUS.ini)
sed -i "11c $indi" ~/info_panel_control.ini
sed -i "12c $ide" ~/info_panel_control.ini
sed -i "13c $frec" ~/info_panel_control.ini
sed -i "14c $master" ~/info_panel_control.ini

#Radio
indi=$(awk "NR==2" ~/MMDVMHost/MMDVM.ini)
ide=$(awk "NR==3" ~/MMDVMHost/MMDVM.ini)
frec=$(awk "NR==13" ~/MMDVMHost/MMDVM.ini)
master=$(awk "NR==140" ~/MMDVMHost/MMDVM.ini)
sed -i "6c $indi" ~/info_panel_control.ini
sed -i "7c $ide" ~/info_panel_control.ini
sed -i "8c $frec" ~/info_panel_control.ini
sed -i "9c $master" ~/info_panel_control.ini

#YSF
master=$(awk "NR==38" ~/YSFClients/YSFGateway/YSFGateway.ini)
sed -i "21c $master" ~/info_panel_control.ini

#SVXLINK
svxlink=$(awk "NR==16" /usr/local/etc/svxlink/svxlink.d/ModuleEchoLink.conf)
sed -i "27c $svxlink" ~/info_panel_control.ini

#YSF2DMR
frec=$(awk "NR==2" ~/YSF2DMR/YSF2DMR.ini)
master=$(awk "NR==25" ~/YSF2DMR/YSF2DMR.ini)
tg=$(awk "NR==22" ~/YSF2DMR/YSF2DMR.ini)
sed -i "24c $frec" ~/info_panel_control.ini
sed -i "25c $master" ~/info_panel_control.ini
sed -i "26c $tg" ~/info_panel_control.ini
#================================================================================= 