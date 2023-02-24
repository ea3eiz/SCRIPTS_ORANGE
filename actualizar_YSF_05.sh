#!/bin/bash
while true
do
clear
ROJO="\033[1;31m"
VERDE="\033[1;32m"
BLANCO="\033[1;37m"
AMARILLO="\033[1;33m"
echo "${VERDE}   ********************************************************************"
echo "   *              Script para actualizar YSFClients                   *"
echo "   *                 \33[1;31mby EA3EIZ & EA4AOJ\33[1;32m                               *"
echo "   ********************************************************************"
echo "\33[1;36m   1)\33[1;37m Actualizar YSFClients (YSFGateway, YSFReflector)"
echo "\33[1;36m   2)\33[1;37m Actualizar YSFHosts.txt (listado de reflectores)"
echo "\33[1;36m   3)\33[1;37m Ver el listado de reflectores YSF"
echo ""
echo "\33[1;36m   0)\33[1;34m Salir del script \33[1;31m OJO!! no salir con ctrl+c ni con la x"
echo ""
echo -n "\33[1;36m   Elige una opción del 0 al 3: " 
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
                        cd /home/orangepi/
                        sudo rm -R YSFClients
                        sleep 3
                        cd /home/orangepi/
                        git clone http://github.com/g4klx/YSFClients
                        cd /home/orangepi/YSFClients/YSFGateway
                        make clean
                        make
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
	        read -p ' Quieres actualizar el listado de reflectores YSF S/N ?' ejecutar1
		    case $ejecutar1 in
			[sS]* ) echo ""
			echo "ok >>>>>"
			cd /home/orangepi/YSFClients/YSFGateway
			sudo rm YSFHosts.txt
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
3) echo ""
while true
do
clear
	        ejecutar1=S
		    case $ejecutar1 in
			[sS]* ) echo ""
			echo "ok >>>>>"
            mate-terminal --geometry=120x30 -x less /home/orangepi/YSFClients/YSFGateway/YSFHosts.txt




			#cd /home/orangepi/YSFClients/YSFGateway
			#sudo pluma YSFHosts.txt
			echo "Ok"
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


