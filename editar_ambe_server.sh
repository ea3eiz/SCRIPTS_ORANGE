#!/bin/bash

while true
do
clear
RED="\033[1;31m"
VERDE="\033[1;32m"
BLANCO="\033[1;37m"
AMARILLO="\033[1;33m"
CIAN="\033[1;36m"
echo "\33[1;32m   **************************************************************************"
#echo "   *                                                                        *"
echo "   *     Script para Editor AMBE SERVER\33[1;33m       \33[1;31m by EA3EIZ & EA4AOJ\33[1;32m     *"
#echo "   *                                                                        *"
echo "   **************************************************************************"
echo -n "\33[1;36m   1)\33[0m Modificar puerto ROUTER  - \33[1;33m"
var1= sed -n '11p'  ~/status.ini

echo -n "\33[1;36m   2)\33[0m Modificar puerto MODEM   - \33[1;33m"
var1= sed -n '12p'  ~/status.ini

echo "\33[1;36m   0)\33[1;34m Salir del script \33[1;31m OJO!! no salir con ctrl+c ni con la x"
echo ""
echo -n "\33[1;36m   Elige una opción del 0 al 2: " 
read escoger_menu

case $escoger_menu in
1) echo ""
while true
do
                    echo -n "Valor actual del puerto ROUTER: \33[1;33m"
                    var1= sed -n '11p'  ~/status.ini
                    actualizar=S
                    case $actualizar in
                    [sS]* )
           	     read -p 'Introduce puerto ROUTER:        ' pruter
                    sed -i "11c $pruter" ~/status.ini
			     break;;
			     [nN]* ) echo ""
			     break;;
esac
done;;
2) echo ""
while true
do
                    echo -n "Valor actual del puerto MODEM: \33[1;33m"
                    var1= sed -n '12p'  ~/status.ini
                    echo "${VERDE}ejp. /dev/ttyUSB0"
                    actualizar=S
                    case $actualizar in
                    [sS]* )
                    echo "${CIAN}"
                    read -p 'Introduce puerto MODEM:        ' pruter
                    sed -i "12c $pruter" ~/status.ini
                    break;;
                    [nN]* ) echo ""
                    break;;
esac
done;;
200) echo ""
while true
do
                    echo -n "Valor actual: \33[1;33m"
                    var1= sed -n '12p'  ~/YSFClients/YSFGateway/YSFGateway.ini
                    actualizar=S
                    case $actualizar in
                    [sS]* )
                    read -p 'Introduce RXFrequency:    ' rxf
                    sed -i "12c RXFrequency=$rxf" ~/YSFClients/YSFGateway/YSFGateway.ini
                    break;;
                    [nN]* ) echo ""
                    break;;
esac
done;;
3) echo ""
while true
do
                    echo -n "Valor actual: \33[1;33m"
                    var1= sed -n '13p'  ~/YSFClients/YSFGateway/YSFGateway.ini
                    actualizar=S
                    case $actualizar in
                    [sS]* )
                    read -p 'Introduce TXFrequency:    ' txf
                    sed -i "13c TXFrequency=$txf" ~/YSFClients/YSFGateway/YSFGateway.ini
                    break;;
                    [nN]* ) echo ""
                    break;;
esac
done;;
4) echo ""
while true
do
echo -n "Valor actual: \33[1;33m"
                    var1= sed -n '37p'  ~/YSFClients/YSFGateway/YSFGateway.ini
                    actualizar=S
                    case $actualizar in
                    [sS]* )
                    read -p 'Introduce :        ' por
                    sed -i "37c Port=$por" ~/YSFClients/YSFGateway/YSFGateway.ini
                    break;;
                    [nN]* ) echo ""
                    break;;
esac
done;;
5) echo ""
while true
do
echo -n "Valor actual: \33[1;33m"
                    var1= sed -n '42p'  ~/YSFClients/YSFGateway/YSFGateway.ini
                    actualizar=S
                    case $actualizar in
                    [sS]* )
                    read -p 'Introduce Startup:    ' stup
                    sed -i "42c Startup=$stup" ~/YSFClients/YSFGateway/YSFGateway.ini
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
                              sudo pluma ~/YSFClients/YSFGateway/YSFGateway.ini
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

