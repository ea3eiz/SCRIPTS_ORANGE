#!/bin/bash

#Quita todos los iconos verdes que se quedan al cerrar la imagen
sed -i "6c Exec=mate-terminal -x sh ejecutar_bm_05.sh" /home/orangepi/Desktop/BM.desktop
sed -i "7c Icon=/home/orangepi/SCRIPTS_ORANGE/DMR.png" /home/orangepi/Desktop/BM.desktop
sed -i "10c Name[es_ES]=Abrir BM" /home/orangepi/Desktop/BM.desktop

#pone todos los status de inicio en OFF
sed -i "1c D-STAR=OFF" /home/orangepi/status.ini
sed -i "2c BlueDV=OFF" /home/orangepi/status.ini
sed -i "3c YSF=OFF" /home/orangepi/status.ini
sed -i "4c DV4mini=OFF" /home/orangepi/status.ini
sed -i "5c MMDVM=OFF" /home/orangepi/status.ini
sed -i "6c MMDVMPLUS=OFF" /home/orangepi/status.ini
sed -i "7c MMDVMBM=OFF" /home/orangepi/status.ini
sed -i "8c SVXLINK=OFF" /home/orangepi/status.ini
sed -i "9c dstarrepeater=OFF" /home/orangepi/status.ini
sed -i "10c MMDVMLIBRE=OFF" /home/orangepi/status.ini
sed -i "11c AMBE_SERVER=OFF" /home/orangepi/status.ini
sed -i "12c SOLOFUSION=OFF" /home/orangepi/status.ini
sed -i "13c SOLODSTAR=OFF" /home/orangepi/status.ini
sed -i "14c YSF2DMR=OFF" /home/orangepi/status.ini

sleep 10

cd /home/orangepi/SCRIPTS_ORANGE/
git pull

# pone la hora al sistema a quien le falle la del armbian
sudo ntpdate -u hora.roa.es

# pone el altavoz en la barra superior
pasystray &

#pone todos los datos de DMR+ , Brandameiter, svxlink etc en panel_control.ini
#BM
indi=$(awk "NR==2" /home/orangepi/MMDVMHost/MMDVMBM.ini)
ide=$(awk "NR==3" /home/orangepi/MMDVMHost/MMDVMBM.ini)
frec=$(awk "NR==13" /home/orangepi/MMDVMHost/MMDVMBM.ini)
master=$(awk "NR==140" /home/orangepi/MMDVMHost/MMDVMBM.ini)
sed -i "1c $indi" /home/orangepi/info_panel_control.ini
sed -i "2c $ide" /home/orangepi/info_panel_control.ini
sed -i "3c $frec" /home/orangepi/info_panel_control.ini
sed -i "4c $master" /home/orangepi/info_panel_control.ini

#PLUS
indi=$(awk "NR==2" /home/orangepi/MMDVMHost/MMDVMPLUS.ini)
ide=$(awk "NR==3" /home/orangepi/MMDVMHost/MMDVMPLUS.ini)
frec=$(awk "NR==13" /home/orangepi/MMDVMHost/MMDVMPLUS.ini)
master=$(awk "NR==140" /home/orangepi/MMDVMHost/MMDVMPLUS.ini)
sed -i "11c $indi" /home/orangepi/info_panel_control.ini
sed -i "12c $ide" /home/orangepi/info_panel_control.ini
sed -i "13c $frec" /home/orangepi/info_panel_control.ini
sed -i "14c $master" /home/orangepi/info_panel_control.ini

#Radio
indi=$(awk "NR==2" /home/orangepi/MMDVMHost/MMDVM.ini)
ide=$(awk "NR==3" /home/orangepi/MMDVMHost/MMDVM.ini)
frec=$(awk "NR==13" /home/orangepi/MMDVMHost/MMDVM.ini)
master=$(awk "NR==140" /home/orangepi/MMDVMHost/MMDVM.ini)
sed -i "6c $indi" /home/orangepi/info_panel_control.ini
sed -i "7c $ide" /home/orangepi/info_panel_control.ini
sed -i "8c $frec" /home/orangepi/info_panel_control.ini
sed -i "9c $master" /home/orangepi/info_panel_control.ini

#YSF
master=$(awk "NR==38" /home/orangepi/YSFClients/YSFGateway/YSFGateway.ini)
sed -i "21c $master" /home/orangepi/info_panel_control.ini

#SVXLINK
svxlink=$(awk "NR==16" /usr/local/etc/svxlink/svxlink.d/ModuleEchoLink.conf)
sed -i "27c $svxlink" /home/orangepi/info_panel_control.ini

#YSF2DMR
frec=$(awk "NR==2" /home/orangepi/YSF2DMR/YSF2DMR.ini)
master=$(awk "NR==25" /home/orangepi/YSF2DMR/YSF2DMR.ini)
tg=$(awk "NR==22" /home/orangepi/YSF2DMR/YSF2DMR.ini)
sed -i "24c $frec" /home/orangepi/info_panel_control.ini
sed -i "25c $master" /home/orangepi/info_panel_control.ini
sed -i "26c $tg" /home/orangepi/info_panel_control.ini
