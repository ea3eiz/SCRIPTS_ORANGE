﻿#!/bin/bash
while true
do
clear
echo "\33[1;32m   *********************************************************************"
echo "   *                                                                   *"
echo "   *           Script para Actualizar MMDVMHost         \33[1;31m by EA3EIZ\33[1;32m     *"
echo "   *                                                                   *"
echo "   *********************************************************************"
echo  "\33[1;36m   1)\33[1;33m Actualizar MMDVMHost   \33[1;33m"
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
	echo " ****************************************************************"
echo " \33[1;31m* Si actualizas MMDVMhost, perderás todas las configuraciones  *"
echo " * Anotate las configuraciones para poder volver a ponerlas     *"
echo " \33[1;32m****************************************************************"
echo "\33[1;33m"
	        read -p '  Quieres actualizar MMDVMHost  Si/No: ' ejecutar1
		    case $ejecutar1 in
			[sS]* ) echo ""
			echo "ok >>>>>"
                       cd /home/pi
                       sudo rm -r MMDVMHost
                       cd /home/pi
                       git clone https://github.com/g4klx/MMDVMHost
                       cd /home/pi/MMDVMHost
                       make
                       sudo cp MMDVM.ini MMDVMBM.ini
                       sudo cp MMDVM.ini MMDVMPLUS.ini
                       sudo cp MMDVMHost MMDVMBM
                       sudo cp MMDVMHost MMDVMPLUS
                       sudo cp MMDVM.ini MMDVM.ini_original
                       echo""
clear
exit;
		        echo ""
			echo "Ok, se ha ejecutado correctamente"
			echo ""
			break;;
			[nN]* ) echo ""
sleep 1
clear
exit;
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

