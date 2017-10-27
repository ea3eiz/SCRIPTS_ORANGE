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
#bm=`sed -n '2p'  ~/MMDVMHost/MMDVMBM.ini`
#plus=`sed -n '2p'  ~/MMDVMHost/MMDVMPLUS.ini`
#dstar=`sed -n '2p'  ~/MMDVMHost/MMDVMDSTAR.ini`
#fusion=`sed -n '2p'  ~/MMDVMHost/MMDVMFUSION.ini`


#sudo wget -post-data http://associacioader.com/MAIL_DMRPLUS_O.php?plus=$plus
#sudo wget -post-data http://associacioader.com/MAIL_BRANDMEISTER_O.php?plus=$bm
#sudo wget -post-data http://associacioader.com/MAIL_FUSION_O.php?plus=$fusion
#sudo wget -post-data http://associacioader.com/MAIL_DSTAR_O.php?plus=$dstar

# PARA QUE MANDE UN MAIL SI SE TIENE PUESTO EL INDICATIVO EN EL dmrplus, brandmeister, solofusion o solodstar
bm=`sed -n '2p'  ~/MMDVMHost/MMDVMBM.ini`
plus=`sed -n '2p'  ~/MMDVMHost/MMDVMPLUS.ini`
dstar=`sed -n '2p'  ~/MMDVMHost/MMDVMDSTAR.ini`
fusion=`sed -n '2p'  ~/MMDVMHost/MMDVMFUSION.ini`



sudo wget -post-data http://associacioader.com/MAIL_ORANGEPI.php?plus=$plus'<DMR PLUS   '$bm'<BRANDMEISTER   '$dstar'<SOLODSTAR   '$fusion'<SOLOFUSION'

