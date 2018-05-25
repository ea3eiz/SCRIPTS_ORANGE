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

#bm=`sed -n '2p'  ~/MMDVMHost/MMDVMBM.ini`
#plus=`sed -n '2p'  ~/MMDVMHost/MMDVMPLUS.ini`
#dstar=`sed -n '2p'  ~/MMDVMHost/MMDVMDSTAR.ini`
#fusion=`sed -n '2p'  ~/MMDVMHost/MMDVMFUSION.ini`
#cd ~/.config
#sudo wget -post-data http://associacioader.com/ORANGEPI_02_06_03.php?plus=$plus'<DMR PLUS   '$bm'<BRANDMEISTER   '$dstar'<SOLODSTAR   '$fusion'<SOLOFUSION'
#sudo rm -r associacioader.com

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