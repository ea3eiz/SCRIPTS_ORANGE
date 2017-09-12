#!/bin/bash
while true
do
clear
echo "\33[1;32m   *********************************************************************"
echo "   *                                                                   *"
echo "   *           Script para Actualizar DV4mini \33[1;33mV.02.05   \33[1;31m by EA3EIZ\33[1;32m     *"
echo "   *                                                                   *"
echo "   *********************************************************************"
echo  "\33[1;36m   1)\33[1;33m Actualizar DV4mini   \33[1;33m"
echo  "\33[1;36m   2)\33[1;33m Ir a la versión anterior DV4mini   \33[1;33m"
echo ""
echo "\33[1;36m   0)\33[1;34m Salir del script \33[1;31m OJO!! no salir con ctrl+c ni con la x"
echo ""
echo -n "\33[1;36m   Elige una opción del 0 al 2: " 
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
                        cd /home/pi/Downloads
wget http://112.xreflector.es/Soft_DV4MINI/Linux/Raspberry_/dv_serial
sudo cp -v /home/pi/Downloads/dv_serial /home/pi/dv4mini 
cd /home/pi/dv4mini/
sudo chmod 777 dv_serial
cd /home/pi/Downloads
sudo rm -v /home/pi/Downloads/dv_serial

sudo cp -v /home/pi/dv4mini/dv4mini.exe /home/pi/dv4mini/dv4mini.exe.old
wget http://112.xreflector.es/Soft_DV4MINI/Linux/Raspberry_/dv4mini.exe
sudo cp -v /home/pi/Downloads/dv4mini.exe /home/pi/dv4mini/dv4mini.exe
cd /home/pi/dv4mini/
sudo chmod 777 dv4mini.exe
cd /home/pi/Downloads
sudo rm -v /home/pi/Downloads/dv4mini.exe
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
                        cd /home/pi/Downloads
wget http://112.xreflector.es/Soft_DV4MINI/Linux/Raspberry_/old/dv_serial
sudo cp -v /home/pi/Downloads/dv_serial /home/pi/dv4mini 
cd /home/pi/dv4mini/
sudo chmod 777 dv_serial
cd /home/pi/Downloads
sudo rm -v /home/pi/Downloads/dv_serial 


cd /home/pi/Downloads
sudo cp -v /home/pi/dv4mini/dv4mini.exe /home/pi/dv4mini/dv4mini.exe.old
wget http://112.xreflector.es/Soft_DV4MINI/Linux/Raspberry_/old/dv4mini.exe
sudo cp -v /home/pi/Downloads/dv4mini.exe /home/pi/dv4mini/dv4mini.exe
cd /home/pi/dv4mini/
sudo chmod 777 dv4mini.exe
cd /home/pi/Downloads
sudo rm -v /home/pi/Downloads/dv4mini.exe

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

