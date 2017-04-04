#!/bin/bash
# script para instalar md380tools
while true
do
clear

echo "\33[1;32m   **************************************************************************"
echo "   *                                                                        *"
echo "   *   Editor de configuración BlueDV para DVMEGA pinchado en Raspberry pi  *"
echo "   *                                                                        *"
echo "   *                               \33[1;31mby EA3EIZ                                \33[1;32m*"
echo "   *                                                                        *"
echo "   **************************************************************************"
echo ""
echo -n "\33[1;36m   1)\33[0m Introduce tu Indicativo               - \33[1;33m"
var1= sed -n '3p'  /usr/local/bluedv/BlueDVconfig.ini

echo -n "\33[1;36m   2)\33[0m Introduce tu QTH locator              - \33[1;33m"
var1= sed -n '28p'  /usr/local/bluedv/BlueDVconfig.ini


echo "\33[1;36m   3)\33[0m Puerto para DVMEGA pinchado en Raspberri PI (ttyAMA0)\33[1;33m"
echo "\33[1;36m   4)\33[0m Puerto para DVMEGA doble banda pinchado en arduino (ttyACM0)\33[1;33m"
echo "\33[1;36m   5)\33[0m Puerto para DVMEGA doble banda pinchado en arduino (ttyACM1)\33[1;33m"
echo "\33[1;36m   6)\33[0m Puerto para DVMEGA + Bluestack Raspberry Pi(ttyUSB0)\33[1;33m"
echo -n "                                            - "
var1= sed -n '4p'  /usr/local/bluedv/BlueDVconfig.ini

echo -n "\33[1;36m   7)\33[0m Cambiar color del fondo TX-RX         - \33[1;33m"
var1= sed -n '6p'  /usr/local/bluedv/BlueDVconfig.ini

echo -n "\33[1;36m   8)\33[0m Introduce la Frecuencia               - \33[1;33m"
var1= sed -n '8p'  /usr/local/bluedv/BlueDVconfig.ini

echo -n "\33[1;36m   9)\33[0m Cambiar la Potencia                   - \33[1;33m"
var1= sed -n '11p'  /usr/local/bluedv/BlueDVconfig.ini

echo -n "\33[1;36m  10)\33[0m Poner tu coordenada Longitud          - \33[1;33m"
var1= sed -n '12p'  /usr/local/bluedv/BlueDVconfig.ini

echo -n "\33[1;36m  11)\33[0m Poner tu coordenada Latitud           - \33[1;33m"
var1= sed -n '13p'  /usr/local/bluedv/BlueDVconfig.ini

echo -n "\33[1;36m  12)\33[0m Introduce tu ID                       - \33[1;33m"
var1= sed -n '16p'  /usr/local/bluedv/BlueDVconfig.ini

echo -n "\33[1;36m  13)\33[0m Introduce la ip de Brandmeister       - \33[1;33m"
var1= sed -n '17p'  /usr/local/bluedv/BlueDVconfig.ini

echo -n "\33[1;36m  14)\33[0m Introduce la ip de DMR+               - \33[1;33m"
var1= sed -n '19p'  /usr/local/bluedv/BlueDVconfig.ini

echo -n "\33[1;36m  15)\33[0m Introduce reflector válido para DMR+  - \33[1;33m"
var1= sed -n '20p'  /usr/local/bluedv/BlueDVconfig.ini

echo -n "\33[1;36m  16)\33[0m Password para Brandmeister y DMR+     - \33[1;33m"
var1= sed -n '18p'  /usr/local/bluedv/BlueDVconfig.ini

echo -n "\33[1;36m  17)\33[0m Elegir Brandmeister ó DMR+            - \33[1;33m"
var1= sed -n '21p'  /usr/local/bluedv/BlueDVconfig.ini

echo -n "\33[1;36m  18)\33[0m DMR's  activados al abrir el BlueDV   - \33[1;33m"
var1= sed -n '23p'  /usr/local/bluedv/BlueDVconfig.ini

echo -n "\33[1;36m  19)\33[0m D-STAR  activado al abrir el BlueDV   - \33[1;33m"
var1= sed -n '32p'  /usr/local/bluedv/BlueDVconfig.ini

echo -n "\33[1;36m  20)\33[0m C4FM  activado al abrir el BlueDV     - \33[1;33m"
var1= sed -n '27p'  /usr/local/bluedv/BlueDVconfig.ini

echo -n "\33[1;36m  21)\33[0m Introducir un reflector válido D-STAR - \33[1;33m"
var1= sed -n '35p'  /usr/local/bluedv/BlueDVconfig.ini

echo -n "\33[1;36m  22)\33[0m Introducir un reflector válido C4FM   - \33[1;33m"
var1= sed -n '29p'  /usr/local/bluedv/BlueDVconfig.ini

echo -n "\33[1;36m  23)\33[0m Activar - desactivar APRS             - \33[1;33m"
var1= sed -n '34p'  /usr/local/bluedv/BlueDVconfig.ini

echo ""
#echo "\33[1;36m  27)\33[1;33m Abrir fichero BlueDVconfig.ini para hacer cualquier cambio\33[1;33m"
#echo ""
echo "\33[1;36m   0)\33[1;34m Salir del script \33[1;31m OJO!! no salir con ctrl+c ni con la x"
echo ""
echo -n "\33[1;36m   Elige una opción del 0 al 23 : " 
read escoger_menu
case $escoger_menu in
1) echo ""
while true
do
           	            read -p '   Introduce tu Indicativo: ' indicativo
                        actualizar=S 
                        case $actualizar in
		[sS]* ) echo ""
			echo "Introduce tu indicativo:"
                        sed -i "3c myCall=$indicativo" /usr/local/bluedv/BlueDVconfig.ini
		break;;
		[nN]* ) echo ""
		break;;
esac
done;;
2) echo ""
while true
do
           	            read -p '   Introduce tu QTH locator: ' qthl
                        actualizar=S 
                        case $actualizar in
		[sS]* ) echo ""
			echo "Introduce tu indicativo:"
                        sed -i "28c QTHlocation=$qthl" /usr/local/bluedv/BlueDVconfig.ini
		break;;
		[nN]* ) echo ""
		break;;
esac
done;;
3) echo ""
while true
do
           	          
                        actualizar=S 
                        case $actualizar in
		[sS]* ) echo ""
                        sed -i "4c comport=/dev/ttyAMA0" /usr/local/bluedv/BlueDVconfig.ini
		break;;
		[nN]* ) echo ""
		break;;
esac
done;;
4) echo ""
while true
do
           	          
                        actualizar=S 
                        case $actualizar in
		[sS]* ) echo ""
                        sed -i "4c comport=/dev/ttyACM0" /usr/local/bluedv/BlueDVconfig.ini
		break;;
		[nN]* ) echo ""
		break;;
esac
done;;
5) echo ""
while true
do
           	          
                        actualizar=S 
                        case $actualizar in
		[sS]* ) echo ""
                        sed -i "4c comport=/dev/ttyACM1" /usr/local/bluedv/BlueDVconfig.ini
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
                        sed -i "4c comport=/dev/ttyUSB0" /usr/local/bluedv/BlueDVconfig.ini
		break;;
		[nN]* ) echo ""
		break;;
esac
done;;
7) echo ""
while true
do
	            echo "Valor color si = 1  / valor color No = 0"
           	            read -p '   Introduce valor para el color: ' color
                        actualizar=S 
                        case $actualizar in
		[sS]* ) echo ""
                        sed -i "6c RXTXColors=$color" /usr/local/bluedv/BlueDVconfig.ini
		break;;
		[nN]* ) echo ""
		break;;
esac
done;;
8) echo ""
while true
do
	            read -p '   Introduce la frecuencia: ' frec
                        actualizar=S 
                        case $actualizar in
		[sS]* ) echo ""
			echo "Introduce tu indicativo:"
                        sed -i "8c frequency=$frec" /usr/local/bluedv/BlueDVconfig.ini
		break;;
		[nN]* ) echo ""
		break;;
esac
done;;
9) echo ""
while true
do
	            echo "Valor de la potencia de 1 y 100"
           	            read -p '   Introduce valor de la potencia: ' pot
                        actualizar=S 
                        case $actualizar in
		[sS]* ) echo ""
                        sed -i "11c DVMEGAPower=$pot" /usr/local/bluedv/BlueDVconfig.ini
		break;;
		[nN]* ) echo ""
		break;;
esac
done;;
10) echo ""
while true
do
           	            read -p '   Introduce tu coordenada Longitud: ' long
                        actualizar=S 
                        case $actualizar in
		[sS]* ) echo ""
                        sed -i "12c longitude=$long" /usr/local/bluedv/BlueDVconfig.ini
		break;;
		[nN]* ) echo ""
		break;;
esac
done;;
11) echo ""
while true
do
           	            read -p '   Introduce tu coordenada Latitud: ' lat
                        actualizar=S 
                        case $actualizar in
		[sS]* ) echo ""
                        sed -i "13c latitude=$lat" /usr/local/bluedv/BlueDVconfig.ini
		break;;
		[nN]* ) echo ""
		break;;
esac
done;;
12) echo ""
while true
do
           	            read -p '   Introduce tu ID: ' ide
                        actualizar=S 
                        case $actualizar in
		[sS]* ) echo ""
                        sed -i "16c dmrid=$ide" /usr/local/bluedv/BlueDVconfig.ini
		break;;
		[nN]* ) echo ""
		break;;
esac
done;;
13) echo ""
while true
do
	            echo "Valor ip Brandmeister España = 84.232.5.113"
           	            read -p '   Introduce valor de la ip: ' ipB
                        actualizar=S 
                        case $actualizar in
		[sS]* ) echo ""
                        sed -i "17c DMRmaster=$ipB" /usr/local/bluedv/BlueDVconfig.ini
		break;;
		[nN]* ) echo ""
		break;;
esac
done;;
14) echo ""
while true
do
	            echo "Valor ip DMR+ = 212.237.0.67"
           	            read -p '   Introduce valor de la ip: ' ipD
                        actualizar=S 
                        case $actualizar in
		[sS]* ) echo ""
                        sed -i "19c DMRplusmaster=$ipD" /usr/local/bluedv/BlueDVconfig.ini
		break;;
		[nN]* ) echo ""
		break;;
esac
done;;
15) echo ""
while true
do
	            echo "Valor reflector global = 4370"
           	            read -p '   Introduce valor del reflector: ' ref
                        actualizar=S 
                        case $actualizar in
		[sS]* ) echo ""
                        sed -i "20c DMRplusDefaultRefector=$ref" /usr/local/bluedv/BlueDVconfig.ini
		break;;
		[nN]* ) echo ""
		break;;
esac
done;;
16) echo ""
while true
do
	            echo "Valor del password pa Brandmeister y DMR+ = passw0rd"
           	            read -p '   Introduce valor del reflector: ' pasw
                        actualizar=S 
                        case $actualizar in
		[sS]* ) echo ""
                        sed -i "18c DMRpassword=$pasw" /usr/local/bluedv/BlueDVconfig.ini
		break;;
		[nN]* ) echo ""
		break;;
esac
done;;
17) echo ""
while true
do
	            echo "Para utilizar Brandmeister Valor=1 para DMR+ valor=0"
           	            read -p '   Introduce valor : ' bmdm
                        actualizar=S 
                        case $actualizar in
		[sS]* ) echo ""
                        sed -i "21c useBrandmeister=$bmdm" /usr/local/bluedv/BlueDVconfig.ini
		break;;
		[nN]* ) echo ""
		break;;
esac
done;;
18) echo ""
while true
do
	            echo "Activados valor=1 Desactivado valor=0"
           	            read -p '   Introduce valor : ' bmdma
                        actualizar=S 
                        case $actualizar in
		[sS]* ) echo ""
                        sed -i "23c autostart=$bmdma" /usr/local/bluedv/BlueDVconfig.ini
		break;;
		[nN]* ) echo ""
		break;;
esac
done;;
19) echo ""
while true
do
	            echo "Activado valor=1 Desactivado valor=0"
           	            read -p '   Introduce valor : ' dsta
                        actualizar=S 
                        case $actualizar in
		[sS]* ) echo ""
                        sed -i "32c autostart=$dsta" /usr/local/bluedv/BlueDVconfig.ini
		break;;
		[nN]* ) echo ""
		break;;
esac
done;;
20) echo ""
while true
do
	            echo "Activado valor=1 Desactivado valor=0"
           	            read -p '   Introduce valor : ' cafa
                        actualizar=S 
                        case $actualizar in
		[sS]* ) echo ""
                        sed -i "27c autostart=$cafa" /usr/local/bluedv/BlueDVconfig.ini
		break;;
		[nN]* ) echo ""
		break;;
esac
done;;
21) echo ""
while true
do
	            echo "Introducir un reflector D-STAR válido"
           	            read -p '   Introduce valor : ' rfdst
                        actualizar=S 
                        case $actualizar in
		[sS]* ) echo ""
                        sed -i "35c defaultReflector=$rfdst" /usr/local/bluedv/BlueDVconfig.ini
		break;;
		[nN]* ) echo ""
		break;;
esac
done;;
22) echo ""
while true
do
	            echo "Introducir un reflector C4FM válido"
           	            read -p '   Introduce valor : ' c4fv
                        actualizar=S 
                        case $actualizar in
		[sS]* ) echo ""
                        sed -i "29c defaultReflector=$c4fv" /usr/local/bluedv/BlueDVconfig.ini
		break;;
		[nN]* ) echo ""
		break;;
esac
done;;
23) echo ""
while true
do
	            echo "Activado valor=1 Desactivado valor=0"
           	            read -p '   Introduce valor : ' aprs
                        actualizar=S 
                        case $actualizar in
		[sS]* ) echo ""
                        sed -i "34c APRS=$aprs" /usr/local/bluedv/BlueDVconfig.ini
		break;;
		[nN]* ) echo ""
		break;;
esac
done;;
#27) echo ""
#while true
#do         	       
                        #actualizar=S 
                        #case $actualizar in
		#[sS]* ) echo ""
		#	
                        #sudo geany /usr/local/bluedv/BlueDVconfig.ini
		#break;;
		#[nN]* ) echo ""
		#break;;
#esac
#done;;
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

