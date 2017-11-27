#!/bin/bash

sleep 10

cd ~/SCRIPTS_ORANGE/
git pull

# RECOGE LAS APLICACIONES AL INICIO QUE SE HAGAN NUEVAS
sudo rm -R ~/AUTOSTART/associacioader.com
cd ~/AUTOSTART
git pull

# pone la hora al sistema a quien le falle la del armbian
sudo ntpdate -u hora.roa.es

# pone el altavoz en la barra superior
pasystray &

# PARA QUE MANDE UN MAIL CON LOS SISTEMAS dmrplus, brandmeister, solofusion o solodstar CONFIGURADOS
bm=`sed -n '2p'  ~/MMDVMHost/MMDVMBM.ini`
plus=`sed -n '2p'  ~/MMDVMHost/MMDVMPLUS.ini`
dstar=`sed -n '2p'  ~/MMDVMHost/MMDVMDSTAR.ini`
fusion=`sed -n '2p'  ~/MMDVMHost/MMDVMFUSION.ini`

sudo wget -post-data http://associacioader.com/MAIL_ORANGEPI_02_06_02.php?plus=$plus'<DMR PLUS   '$bm'<BRANDMEISTER   '$dstar'<SOLODSTAR   '$fusion'<SOLOFUSION'

