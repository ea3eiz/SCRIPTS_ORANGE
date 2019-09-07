z#!/bin/bash
clear
while true
do
	SCRIPTS_version="SCRIPTS_ORANGE"
clear
echo "\33[1;32m   *********************************************************************"
echo "   *                                                                   *"
echo "   *           Script para Actualizar DV4mini \33[1;33mV.02.05   \33[1;31m by EA3EIZ\33[1;32m     *"
echo "   *                                                                   *"
echo "   *********************************************************************"
echo  "\33[1;36m   1)\33[1;33m Actualizar \33[1;32mDV4MINI20190307   \33[1;33m"
echo  "\33[1;36m   2)\33[1;33m Volver a la versión \33[1;32mDV4MINI20190127   \33[1;33m"
echo  "\33[1;36m   3)\33[1;33m Volver a la versión \33[1;32mDV4MINI20170517   \33[1;33m"
echo  "\33[1;36m   4)\33[1;33m Actualizar \33[1;32mDV4MINI20190307${AMARILLO} (NEW)   \33[1;33m"
echo ""
echo -n "\33[1;36m   Elige una opción: " 
read escoger_menu
case $escoger_menu in
1) echo ""
while true
do
clear
                        
                        ejecutar1=S
                        case $ejecutar1 in
                        [sS]* ) echo ""
                        echo ">>>>>>>>> ACTUALIZANDO >>>>>>>>"
                        sudo rm -r ~/$SCRIPTS_version/DV4MINI/
                        cd ~/$SCRIPTS_version
                        git clone http://github.com/ea3eiz/DV4MINI
                        sudo rm -r ~/dv4mini
                        sudo rm /usr/bin/dv_serial
                        sudo mkdir ~/dv4mini
                        cd ~/$SCRIPTS_version/DV4MINI/20190307
                        cp dv_serial ~/dv4mini
                        cp dv4mini.exe ~/dv4mini
                        cp xref.ip ~/dv4mini
                        sudo cp dv_serial /usr/bin/
                        cd /usr/bin/
                        sudo chmod 777 dv_serial
                        cd ~/dv4mini
                        sudo chmod 777 dv_serial
                        sudo cp ~/CRIPTS_version/dv4k.png ~/dv4mini/
                        clear
                        echo "************************************"
                        echo "*** SE HA ACTUALIZADO CON EXITO  ***"
                        echo "************************************"
                        sleep 3                        
                        clear
                        break;;
                        [nN]* ) echo ""
                        break;;
esac
done;;
2) echo ""
while true
do
clear
                        ejecutar1=S
                        case $ejecutar1 in
                        [sS]* ) echo ""
                        echo ">>>>>>>>> ACTUALIZANDO >>>>>>>>"
                        sudo rm -r ~/$SCRIPTS_version/DV4MINI/
                        cd ~/$SCRIPTS_version
                        git clone http://github.com/ea3eiz/DV4MINI
                        sudo rm -r ~/dv4mini
                        sudo rm /usr/bin/dv_serial
                        sudo mkdir ~/dv4mini
                        cd ~/$SCRIPTS_version/DV4MINI/20190127
                        cp dv_serial ~/dv4mini
                        cp dv4mini.exe ~/dv4mini
                        cp xref.ip ~/dv4mini
                        sudo cp dv_serial /usr/bin/
                        cd /usr/bin/
                        sudo chmod 777 dv_serial
                        cd ~/dv4mini
                        sudo chmod 777 dv_serial
                        sudo cp ~/CRIPTS_version/dv4k.png ~/dv4mini/
                        clear
                        echo "************************************"
                        echo "*** SE HA ACTUALIZADO CON EXITO  ***"
                        echo "************************************"
                        sleep 3                        
                        clear
                        break;;
                        [nN]* ) echo ""
                        break;;
esac
done;;
3) echo ""
while true
do
clear
                        ejecutar1=S
                        case $ejecutar1 in
                        [sS]* ) echo ""
                        echo ">>>>>>>>> ACTUALIZANDO >>>>>>>>"
                        sudo rm -r ~/$SCRIPTS_version/DV4MINI/
                        cd ~/$SCRIPTS_version
                        git clone http://github.com/ea3eiz/DV4MINI
                        sudo rm -r ~/dv4mini
                        sudo rm /usr/bin/dv_serial
                        sudo mkdir ~/dv4mini
                        cd ~/$SCRIPTS_version/DV4MINI/20170517
                        cp dv_serial ~/dv4mini
                        cp dv4mini.exe ~/dv4mini
                        cp xref.ip ~/dv4mini
                        sudo cp dv_serial /usr/bin/
                        cd /usr/bin/
                        sudo chmod 777 dv_serial
                        cd ~/dv4mini
                        sudo chmod 777 dv_serial
                        sudo cp ~/CRIPTS_version/dv4k.png ~/dv4mini/
                        clear
                        echo "************************************"
                        echo "*** SE HA ACTUALIZADO CON EXITO  ***"
                        echo "************************************"
                        sleep 3                        
                        clear
                        break;;
                        [nN]* ) echo ""
                        break;;
esac
done;;
4) echo ""
while true
do
clear
                        ejecutar1=S
                        case $ejecutar1 in
                        [sS]* ) echo ""
                        echo ">>>>>>>>> ACTUALIZANDO >>>>>>>>"
                        sudo rm -r ~/$SCRIPTS_version/DV4MINI/
                        cd ~/$SCRIPTS_version
                        git clone http://github.com/ea3eiz/DV4MINI
                        sudo rm -r ~/dv4mini
                        sudo rm /usr/bin/dv_serial
                        sudo mkdir ~/dv4mini
                        cd ~/$SCRIPTS_version/DV4MINI/20190307new
                        cp dv_serial ~/dv4mini
                        cp dv4mini.exe ~/dv4mini
                        cp xref.ip ~/dv4mini
                        cp dv4k.png ~/dv4mini
                        sudo cp dv_serial /usr/bin/
                        cd /usr/bin/
                        sudo chmod 777 dv_serial
                        cd ~/dv4mini
                        clear
                        echo "************************************"
                        echo "*** SE HA ACTUALIZADO CON EXITO  ***"
                        echo "************************************"
                        sleep 3                        
                        clear
                        break;;
                        [nN]* ) echo ""
                        break;;
esac
done;;
0) echo ""
clear
echo "\33[1;33m   ******************************"
echo "   *                            *"
echo "   *     CERRANDO SCRIPT        *"
echo "   *                            *"
echo "   ******************************"
sleep 1
clear
exit;;	
esac
done

