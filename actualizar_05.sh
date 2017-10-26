#!/bin/bash

sleep 10

cd ~/SCRIPTS_ORANGE/
git pull

# RECOGE LAS APLICACIONES AL INICIO QUE SE HAGAN NUEVAS
cd ~/AUTOSTART
git pull

# pone la hora al sistema a quien le falle la del armbian
sudo ntpdate -u hora.roa.es

# pone el altavoz en la barra superior
pasystray &

# PARA QUE MANDE UN MAIL SI SE TIENE PUESTO EL INDICATIVO EN EL dmrplus o brandmeister
bm=`sed -n '2p'  ~/MMDVMHost/MMDVMBM.ini`
plus=`sed -n '2p'  ~/MMDVMHost/MMDVMPLUS.ini`
dstar=`sed -n '2p'  ~/MMDVMHost/MMDVMDSTAR.ini`
fusion=`sed -n '2p'  ~/MMDVMHost/MMDVMFUSION.ini`


sudo wget -post-data http://associacioader.com/MAIL_DMRPLUS.php?plus=$plus
sudo wget -post-data http://associacioader.com/MAIL_BRANDMEISTER.php?plus=$bm
sudo wget -post-data http://associacioader.com/MAIL_FUSION.php?plus=$fusion
sudo wget -post-data http://associacioader.com/MAIL_DSTAR.php?plus=$dstar
