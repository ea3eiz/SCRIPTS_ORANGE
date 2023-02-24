#!/bin/bash
# script para instalar md380tools
while true
do
clear

echo "\33[1;32m   **************************************************************************"
echo "   *                                                                        *"
echo "   *    Editar fichero .ini de configuración BlueDV \33[1;31mby EA3EIZ & EA4AOJ\33[1;33m      \33[1;32m*"
echo "   *                                                                        *"
echo "   **************************************************************************"
echo ""
echo "\33[1;36m   1)\33[0m Puerto para placa NTH/ZUM en arduino y Pincho Low Cost (ttyACM0)\33[1;33m"
echo "\33[1;36m   2)\33[0m Puerto para placa NTH/ZUM en arduino y Pincho Low Cost (ttyACM1)\33[1;33m"
echo "\33[1;36m   3)\33[0m Puerto para DVMEGA + Bluestack conectado por USB (ttyUSB0)\33[1;33m"
echo "\33[1;36m   4)\33[0m Puerto para DVMEGA + Bluestack conectado por USB (ttyUSB1)\33[1;33m"
echo -n "                                            - "
var1= sed -n '4p'  /home/orangepi/bluedv/BlueDVconfig.ini
echo ""
#echo "\33[1;36m   5)\33[1;33m Abrir fichero .ini para hacer cualquier cambio\33[1;33m"
#echo ""
echo "\33[1;36m   0)\33[1;33m Salir del script \33[1;31m OJO!! no salir con ctrl+c ni con la x"
echo ""
echo -n "\33[1;36m   Elige una opción del 0 al 4 : " 
read escoger_menu
case $escoger_menu in

1) echo ""
while true
do
           	          
                        act=S 
                        case $act in
		            [sS]* ) echo ""
                        sed -i "4c comport=/dev/ttyACM0" /home/orangepi/bluedv/BlueDVconfig.ini
		            break;;
		            [nN]* ) echo ""
		            break;;
esac
done;;
2) echo ""
while true
do
           	          
                        act=S 
                        case $act in
		            [sS]* ) echo ""
                        sed -i "4c comport=/dev/ttyACM1" /home/orangepi/bluedv/BlueDVconfig.ini
		            break;;
		            [nN]* ) echo ""
		            break;;
esac
done;;
3) echo ""
while true
do          	          
                        act=S 
                        case $act in
		            [sS]* ) echo ""
                        sed -i "4c comport=/dev/ttyUSB0" /home/orangepi/bluedv/BlueDVconfig.ini
		            break;;
		            [nN]* ) echo ""
		            break;;
esac
done;;
4) echo ""
while true
do
                        act=S 
                        case $act in
		            [sS]* ) echo ""
                        sed -i "4c comport=/dev/ttyUSB1" /home/orangepi/bluedv/BlueDVconfig.ini
		            break;;
		            [nN]* ) echo ""
		            break;;
esac
done;;
5555555) echo ""
while true
do
                              actualizar=S 
                              case $actualizar in
                                    [sS]* ) echo ""
                              pluma /home/orangepi/bluedv/BlueDVconfig.ini
                                    break;;
                                    [nN]* ) echo ""
                                    break;;
esac
done;;
0) echo ""
clear
echo "   **************************************************"
echo "   *                                                *"
echo "   *     CERRANDO SCRIPT                            *"
echo "   *                                                *"
echo "   **************************************************"
sleep 1
clear
exit;;	
esac
done

