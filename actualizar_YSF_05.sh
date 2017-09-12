#!/bin/bash
while true
do
clear
echo "\33[1;32m   *********************************************************************"
echo "   *                                                                   *"
echo "   *           Script para Actualizar YSFGateway         \33[1;31m by EA3EIZ\33[1;32m    *"
echo "   *                                                                   *"
echo "   *********************************************************************"
echo  "\33[1;36m   1)\33[1;33m Actualizar YSFGateway   \33[1;33m"
echo ""
echo "\33[1;36m   0)\33[1;34m Salir del script \33[1;31m OJO!! no salir con ctrl+c ni con la x"
echo ""
echo -n "\33[1;36m   Elige una opción del 0 al 1: " 
read escoger_menu

case $escoger_menu in



1) echo ""

while true
do
clear

	        read -p ' Quieres actualizar el YSF S/N ?' ejecutar1
		    case $ejecutar1 in
			[sS]* ) echo ""
			echo "ok >>>>>"
			cd /home/pi/YSFClients/YSFGateway
			sudo wget -O YSFHosts.txt http://register.ysfreflector.de/export_csv.php
			sleep 3

		            echo ""
			echo "Ok, se ha ejecutado correctamente"
			echo ""
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

