#!/bin/bash
# script para instalar md380tools
while true
do
clear

echo "\33[1;32m   ********************************************************************"
echo "   *      Script para hacer actualizaciones y varios                  *"
echo "   *                          \33[1;31mby EA3EIZ\33[1;32m                               *"
echo "   ********************************************************************"
echo "\33[1;36m   1)\33[1;37m Actualizar imagen ADER V.01.29"
echo "\33[1;36m   2)\33[1;37m Actualizar BlueDV si hubiera nueva versión "
echo ""
echo "\33[1;36m   0)\33[1;34m Salir del script \33[1;31m OJO!! no salir con ctrl+c ni con la x"
echo ""
echo -n "\33[1;36m   Elige una opción del 0 al 2: " 
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
                        cd /home/orangepi/SCRIPTS_ORANGE
                        sudo git pull 
                        sleep 5
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

