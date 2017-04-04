#!/bin/bash
# script para instalar md380tools
while true
do
clear

echo "\33[1;32m   ********************************************************************"
echo "\33[1;32m   *                                                                  *"
echo "   *  Script para ejecutar D-STAR con uno de los 2 sistemas           *"
echo "\33[1;32m   *                                                                  *"
echo "   *                          \33[1;31mby EA3EIZ\33[1;32m                               *"
echo "\33[1;32m   *                                                                  *"
echo "   ********************************************************************"
echo "\33[1;36m   1)\33[1;33m Ejecutar D-STAR con Brandmeiester"
echo "\33[1;36m   2)\33[1;37m Ejecutar D-STAR con DMR+"
#echo "\33[1;36m   3)\33[1;37m Solo D-STAR con el modem del DMR+ "
#echo "\33[1;36m   4)\33[1;32m Solo D-STAR con el modem del Brandmeistyer"
echo ""
echo "\33[1;36m   0)\33[1;34m Salir del script \33[1;31m OJO!! no salir con ctrl+c ni con la x"
echo ""
echo -n "\33[1;36m   Elige una opción del 0 al 2: \33[1;37m" 
read escoger_menu
echo ""

case $escoger_menu in
1) echo ""
while true
do
clear
		    actualizar=S 
            case $actualizar in
			[sS]* ) echo ""
			echo "ok >>>>>"
            cd /home/pi/SCRIPTS
            sudo cerrar_bm.sh
            sudo sh ejecutar_bm.sh
            exit;               
			break;;
			[nN]* ) echo ""
			break;;
esac
done;;
2) echo ""
while true
do
clear
		    actualizar=S 
            case $actualizar in
			[sS]* ) echo ""
			echo "ok >>>>>"
            cd /home/pi/SCRIPTS
            sudo cerrar_plus.sh
            sudo sh ejecutar_plus.sh
            exit;               
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

