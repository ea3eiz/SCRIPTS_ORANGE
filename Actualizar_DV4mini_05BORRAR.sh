﻿#!/bin/bash
while true
do
clear
echo "\33[1;32m   *********************************************************************"
echo "   *                                                                   *"
echo "   *           Script para Actualizar \33[1;33mDV4MINI20190317   \33[1;31m by EA3EIZ\33[1;32m     *"
echo "   *                                                                   *"
echo "   *********************************************************************"
echo  "\33[1;36m   1)\33[1;33m Actualizar \33[1;32mDV4MINI20190307   \33[1;33m"
echo  "\33[1;36m   2)\33[1;33m Volver a la versión \33[1;32mDV4MINI20190127   \33[1;33m"
echo ""
echo "\33[1;36m   0)\33[1;34m Salir del script \33[1;31m OJO!! no salir con ctrl+c ni con la x"
echo ""
echo -n "\33[1;36m   Elige una opción del 0 al 2: " 
read escoger_menu

case $escoger_menu in

~/

1) echo ""
while true
do
clear
                        ejecutar1=S
                        case $ejecutar1 in
                        [sS]* ) echo ""
                        echo ">>>>>>>>> ACTUALIZANDO >>>>>>>>"
                        rm ~/SCRIPTS_ORANGE/DV4MINI/20190307
                        cd ~/SCRIPTS_ORANGE
                        git clone http://github.com/ea3eiz/DV4MINI/20190307
                        rm ~/dv4mini/*.*
                        cd ~/SCRIPTS_ORANGE/DV4MINI/20190307
                        cp dv_serial ~/dv4mini
                        cp dv4mini.exe ~/dv4mini
                        cp xref.ip ~/dv4mini
                        sudo cp dv_serial /usr/bin/
                        cd /usr/bin/
                        sudo chmod 777 dv_serial
                        cd ~/dv4mini
                        sudo chmod 777 dv_serial
                        clear
                        echo "***********************************"
                        echo "*** SE HA ACTUALIZADO CON EXITO ***"
                        echo "***********************************"
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
                        rm ~/V7/DV4MINI20190127
                        cd ~/V7
                        git clone http://github.com/ea3eiz/DV4MINI20190127
                        rm ~/dv4mini/*.*
                        cd ~/V7/DV4MINI20190127
                        cp dv_serial ~/dv4mini
                        cp dv4mini.exe ~/dv4mini
                        cp xref.ip ~/dv4mini
                        sudo cp dv_serial /usr/bin/
                        cd /usr/bin/
                        sudo chmod 777 dv_serial
                        cd ~/dv4mini
                        sudo chmod 777 dv_serial
                        clear
                        echo "***********************************"
                        echo "*** SE HA ACTUALIZADO CON EXITO ***"
                        echo "***********************************"
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

