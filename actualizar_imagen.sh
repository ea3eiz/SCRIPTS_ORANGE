#!/bin/bash
# script para instalar md380tools
while true
do
clear

echo "\33[1;32m   ********************************************************************"
echo "   *      Script para Actualizar la imagen ADER                       *"
echo "   *                          \33[1;31mby EA3EIZ\33[1;32m                               *"
echo "   ********************************************************************"
echo "\33[1;36m   1)\33[1;37m Actualizar imagen ADER"
echo "\33[1;36m   2)\33[1;33m Actualizar MMDVMHost "
echo "\33[1;36m   3)\33[1;37m Actualizar BlueDV si hubiera nueva versión "
echo "\33[1;36m   4)\33[1;32m Editor BlueDV para DVMEGA pinchada en raspberry pi"
echo ""
echo "\33[1;36m   0)\33[1;34m Salir del script \33[1;31m OJO!! no salir con ctrl+c ni con la x"
echo ""
echo -n "\33[1;36m   Elige una opción del 0 al 5: " 
read escoger_menu
echo ""

case $escoger_menu in
1) echo ""
while true
do
clear

	                ejecutar1=S
		    case $ejecutar1 in
			[sS]* ) echo ""
			echo ">>>>>>>>> ACTUALIZANDO >>>>>>>>"
			sleep 3
                        cd /home/pi/SCRIPTS
                        sudo git pull 
                        clear
                        exit;
		break;;
		[nN]* ) echo ""
clear
exit;
			break;;
esac
done;;
2) echo ""

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
			break;;
esac
done;;
3) echo ""

while true
do
clear
echo " *********************************************************"
echo " \33[1;31m* Si actualizas BlueDV, perderás toda la configuración  *"
echo " * Anotate la configuración para poder volver a ponerla  *"
echo " \33[1;32m*********************************************************"
echo "\33[1;33m"
	        read -p ' Quieres actualizar el BlueDV Si/No: ' ejecutar1
		    case $ejecutar1 in
			[sS]* ) echo ""
			echo "ok >>>>>"
			cd /usr/local
			sudo rm -r bluedv
                              sudo git clone https://github.com/ea3eiz/bluedv
                              #sudo git pull 
                               sleep 3
clear

		        echo ""
			echo "Ok, se ha ejecutado correctamente"
			echo ""
			break;;
			[nN]* ) echo ""

			break;;
esac
done;;
4) echo ""
while true
do
clear

	                        actualizar=S 
                                    case $actualizar in
			[sS]* ) echo ""
			echo "ok >>>>>"
                                    cd /home/pi/SCRIPTS
                                    lxterminal --geometry=80x40 -e sudo sh editar_bluedv.sh 
			break;;
			[nN]* ) echo ""
			break;;
esac
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

