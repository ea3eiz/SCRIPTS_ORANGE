#!/bin/bash
while true
do
clear

echo "\33[1;32m   ********************************************************************"
echo "   *      Script para hacer actualizaciones y varios \33[1;33mV.02.05          *"
echo "   *                          \33[1;31mby EA3EIZ\33[1;32m                               *"
echo "   ********************************************************************"
echo "\33[1;36m   1)\33[1;37m Actualizar BlueDV"
#echo "\33[1;36m   2)\33[1;37m Actualizar DV4mini Control Panel (Stick ID:8D-6E-8C V1,77)"
echo ""
echo "\33[1;36m   0)\33[1;34m Salir del script \33[1;31m OJO!! no salir con ctrl+c ni con la x"
echo ""
echo -n "\33[1;36m   Elige una opción del 0 al 1: " 
read escoger_menu
echo ""
case $escoger_menu in
	
20000) echo ""
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
			
			cd ~/
  			mkdir bluedv_anterior
            sudo cp bluedv/*.* bluedv_anterior/
            sudo rm -r ~/bluedv
			git clone https://github.com/ea3eiz/bluedv
			
			cd cd ~/bluedv
			sudo chmod 777 DExtra_Hosts.txt






			#sudo rm -r ~/bluedv
			#cd ~/
			#git clone https://github.com/ea3eiz/bluedv
			
			#chmod -R ~/bluedv
			#cd ~/bluedv
			#chmod 777 *
			
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

