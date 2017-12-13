#!/bin/bash

#echo ">>>>>>>>> RESTAURANDO ICONOS ESCRITORIO>>>>>>>>"
#En la nueva versión V.02.06.03 ya no estan estas 3 lineas que carga el icono borrar logs
cd /home/orangepi/SCRIPTS_ORANGE
cp -R /home/orangepi/SCRIPTS_ORANGE/Desktop /home/pi/
chmod +x /home/orangepi/Desktop

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

# PARA QUE MANDE UN MAIL CON LOS SISTEMAS dmrplus, brandmeister, solofusion o solodstar CONFIGURADOS
bm=`sed -n '2p'  ~/MMDVMHost/MMDVMBM.ini`
plus=`sed -n '2p'  ~/MMDVMHost/MMDVMPLUS.ini`
dstar=`sed -n '2p'  ~/MMDVMHost/MMDVMDSTAR.ini`
fusion=`sed -n '2p'  ~/MMDVMHost/MMDVMFUSION.ini`
cd ~/.config
sudo wget -post-data http://associacioader.com/MAIL_ORANGEPI_02_06_02.php?plus=$plus'<DMR PLUS   '$bm'<BRANDMEISTER   '$dstar'<SOLODSTAR   '$fusion'<SOLOFUSION'

