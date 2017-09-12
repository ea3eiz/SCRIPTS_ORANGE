#!/bin/bash

while true
do
clear
echo "\33[1;32m   **************************************************************************"
#echo "   *                                                                        *"
echo "   *           Script para Modificar YSFGateway.ini\33[1;33m V.02.05  \33[1;31m by EA3EIZ\33[1;32m     *"
#echo "   *                                                                        *"
echo "   **************************************************************************"
echo -n "\33[1;36m   1)\33[0m Modificar indicativo  - \33[1;33m"
var1= sed -n '2p'  /home/pi/YSFClients/YSFGateway/YSFGateway.ini
echo -n "\33[1;36m   2)\33[0m Modificar RXFrequency - \33[1;33m"
var1= sed -n '12p'  /home/pi/YSFClients/YSFGateway/YSFGateway.ini

echo -n "\33[1;36m   3)\33[0m Modificar TXFrequency - \33[1;33m"
var1= sed -n '13p'  /home/pi/YSFClients/YSFGateway/YSFGateway.ini

echo -n "\33[1;36m   4)\33[0m Modificar Puerto      - \33[1;33m"
var1= sed -n '37p'  /home/pi/YSFClients/YSFGateway/YSFGateway.ini

echo -n "\33[1;36m   5)\33[0m Modificar  Startup    - \33[1;33m"
var1= sed -n '42p'  /home/pi/YSFClients/YSFGateway/YSFGateway.ini

echo ""

echo "\33[1;36m   6)\33[1;33m Abrir fichero YSFGateway.ini para hacer cualquier cambio\33[1;33m"

echo ""

echo "\33[1;36m   0)\33[1;34m Salir del script \33[1;31m OJO!! no salir con ctrl+c ni con la x"
echo ""
echo -n "\33[1;36m   Elige una opción del 0 al 6: " 
read escoger_menu

case $escoger_menu in
1) echo ""
while true
do
                    echo -n "Valor actual Indicativo: \33[1;33m"
                    var1= sed -n '2p'  /home/pi/YSFClients/YSFGateway/YSFGateway.ini
                    actualizar=S
                    case $actualizar in
                    [sS]* )
           	        read -p 'Introduce tu indicativo:          ' indicativo
                    sed -i "2c Callsign=$indicativo" /home/pi/YSFClients/YSFGateway/YSFGateway.ini
			  break;;
			  [nN]* ) echo ""
			  break;;
esac
done;;
2) echo ""
while true
do
                    echo -n "Valor actual: \33[1;33m"
                    var1= sed -n '12p'  /home/pi/YSFClients/YSFGateway/YSFGateway.ini
                    actualizar=S
                    case $actualizar in
                    [sS]* )
                    read -p 'Introduce RXFrequency:    ' rxf
                    sed -i "12c RXFrequency=$rxf" /home/pi/YSFClients/YSFGateway/YSFGateway.ini
                    break;;
                    [nN]* ) echo ""
                    break;;
esac
done;;
3) echo ""
while true
do
                    echo -n "Valor actual: \33[1;33m"
                    var1= sed -n '13p'  /home/pi/YSFClients/YSFGateway/YSFGateway.ini
                    actualizar=S
                    case $actualizar in
                    [sS]* )
                    read -p 'Introduce TXFrequency:    ' txf
                    sed -i "13c TXFrequency=$txf" /home/pi/YSFClients/YSFGateway/YSFGateway.ini
                    break;;
                    [nN]* ) echo ""
                    break;;
esac
done;;
4) echo ""
while true
do
echo -n "Valor actual: \33[1;33m"
                    var1= sed -n '37p'  /home/pi/YSFClients/YSFGateway/YSFGateway.ini
                    actualizar=S
                    case $actualizar in
                    [sS]* )
                    read -p 'Introduce :        ' por
                    sed -i "37c Port=$por" /home/pi/YSFClients/YSFGateway/YSFGateway.ini
                    break;;
                    [nN]* ) echo ""
                    break;;
esac
done;;
5) echo ""
while true
do
echo -n "Valor actual: \33[1;33m"
                    var1= sed -n '42p'  /home/pi/YSFClients/YSFGateway/YSFGateway.ini
                    actualizar=S
                    case $actualizar in
                    [sS]* )
                    read -p 'Introduce Startup:    ' stup
                    sed -i "42c Startup=$stup" /home/pi/YSFClients/YSFGateway/YSFGateway.ini
                    break;;
                    [nN]* ) echo ""
                    break;;
esac
done;;
6) echo ""
while true
do
                              actualizar=S 
                              case $actualizar in
                                       [sS]* ) echo ""
                              geany /home/pi/YSFClients/YSFGateway/YSFGateway.ini
                                       break;;
                                       [nN]* ) echo ""
                                       break;;
esac
done;;
0) echo ""
clear
echo "\33[1;33m   **************************************************"
echo "   *                                                *"
echo "   *     CERRANDO SCRIPT                            *"
echo "   *                                                *"
echo "   **************************************************"
sleep 1
clear
exit;;	
esac
done

