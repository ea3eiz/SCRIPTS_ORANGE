#!/bin/bash
while true
do
clear
ROJO="\033[1;31m"
VERDE="\033[1;32m"
BLANCO="\033[1;37m"
AMARILLO="\033[1;33m"
CIAN="\033[1;36m"
GRIS="\033[0m"
echo "${VERDE}"
echo "   **************************************************************************"
echo "                  Script para Modificar YSFGateway.ini"
echo -n "${ROJO}"
echo "                           by EA3EIZ & EA4AOJ"
echo -n "${VERDE}"
echo "   **************************************************************************"
var=`grep -n -m 1 '\<Callsign\>' /home/orangepi/YSFClients/YSFGateway/YSFGateway.ini` # 2:Callsign=EA3EIZ
var1=`grep -m 1 '\<Callsign\>' /home/orangepi/YSFClients/YSFGateway/YSFGateway.ini` # Callsign=EA3EIZ
buscar=":"
largo_linea=`expr index $var $buscar` #comprueba el largo incluyendo los dos puntos (:)
largo_linea=`expr $largo_linea - 1` #comprueba el largo quitando los dos puntos (:)
numero_linea=`expr substr $var 1 $largo_linea` # recoge numero linea (en este caso 2
INDICATIVO=$(awk "NR==$numero_linea" /home/orangepi/YSFClients/YSFGateway/YSFGateway.ini)
letra=c
linea_sed_INDICATIVO=$numero_linea$letra


var=`grep -n -m 1 '\<Id\>' /home/orangepi/YSFClients/YSFGateway/YSFGateway.ini` # 2:Callsign=EA3EIZ
var1=`grep -m 1 '\<Id\>' /home/orangepi/YSFClients/YSFGateway/YSFGateway.ini` # Callsign=EA3EIZ
buscar=":"
largo_linea=`expr index $var $buscar` #comprueba el largo incluyendo los dos puntos (:)
largo_linea=`expr $largo_linea - 1` #comprueba el largo quitando los dos puntos (:)
numero_linea=`expr substr $var 1 $largo_linea` # recoge numero linea (en este caso 2)
ID=$(awk "NR==$numero_linea" /home/orangepi/YSFClients/YSFGateway/YSFGateway.ini)
letra=c
linea_sed_ID=$numero_linea$letra

var=`grep -n -m 1 '\<RXFrequency\>' /home/orangepi/YSFClients/YSFGateway/YSFGateway.ini` # 2:Callsign=EA3EIZ
var1=`grep -m 1 '\<RXFrequency\>' /home/orangepi/YSFClients/YSFGateway/YSFGateway.ini` # Callsign=EA3EIZ
buscar=":"
largo_linea=`expr index $var $buscar` #comprueba el largo incluyendo los dos puntos (:)
largo_linea=`expr $largo_linea - 1` #comprueba el largo quitando los dos puntos (:)
numero_linea=`expr substr $var 1 $largo_linea` # recoge numero linea (en este caso 2)
RXF=$(awk "NR==$numero_linea" /home/orangepi/YSFClients/YSFGateway/YSFGateway.ini)
letra=c
linea_sed_RXF=$numero_linea$letra

var=`grep -n -m 1 '\<TXFrequency\>' /home/orangepi/YSFClients/YSFGateway/YSFGateway.ini` # 2:Callsign=EA3EIZ
var1=`grep -m 1 '\<TXFrequency\>' /home/orangepi/YSFClients/YSFGateway/YSFGateway.ini` # Callsign=EA3EIZ
buscar=":"
largo_linea=`expr index $var $buscar` #comprueba el largo incluyendo los dos puntos (:)
largo_linea=`expr $largo_linea - 1` #comprueba el largo quitando los dos puntos (:)
numero_linea=`expr substr $var 1 $largo_linea` # recoge numero linea (en este caso 2)
TXF=$(awk "NR==$numero_linea" /home/orangepi/YSFClients/YSFGateway/YSFGateway.ini)
letra=c
linea_sed_TXF=$numero_linea$letra

var=`grep -n -m 1 '\<Latitude\>' /home/orangepi/YSFClients/YSFGateway/YSFGateway.ini`
var1=`grep -m 1 '\<Latitude\>' /home/orangepi/YSFClients/YSFGateway/YSFGateway.ini`
buscar=":"
largo_linea=`expr index $var $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea=`expr substr $var 1 $largo_linea`
LATITUD=$(awk "NR==$numero_linea" /home/orangepi/YSFClients/YSFGateway/YSFGateway.ini)
letra=c
linea_sed_LA=$numero_linea$letra

var=`grep -n -m 1 '\<Longitude\>' /home/orangepi/YSFClients/YSFGateway/YSFGateway.ini`
var1=`grep -m 1 '\<Longitude\>' /home/orangepi/YSFClients/YSFGateway/YSFGateway.ini`
buscar=":"
largo_linea=`expr index $var $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea=`expr substr $var 1 $largo_linea`
LONGITUD=$(awk "NR==$numero_linea" /home/orangepi/YSFClients/YSFGateway/YSFGateway.ini)
letra=c
linea_sed_LO=$numero_linea$letra

var=`grep -n -m 1 '\<Name\>' /home/orangepi/YSFClients/YSFGateway/YSFGateway.ini`
var1=`grep -m 1 '\<Name\>' /home/orangepi/YSFClients/YSFGateway/YSFGateway.ini`
buscar=":"
largo_linea=`expr index $var $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea=`expr substr $var 1 $largo_linea`
NAME=$(awk "NR==$numero_linea" /home/orangepi/YSFClients/YSFGateway/YSFGateway.ini)
letra=c
linea_sed_NAME=$numero_linea$letra

var=`grep -n -m 1 "\[Network\]" /home/orangepi/YSFClients/YSFGateway/YSFGateway.ini`
var1=`grep -m 1 "\[Network\]" /home/orangepi/YSFClients/YSFGateway/YSFGateway.ini`
buscar=":"
largo_linea=`expr index $var $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea=`expr substr $var 1 $largo_linea`
numero_linea=`expr $numero_linea + 1` # y le suma uno qudando coomo: (75)
STARTUP=$(awk "NR==$numero_linea" /home/orangepi/YSFClients/YSFGateway/YSFGateway.ini)
letra=c
linea_sed_ST=$numero_linea$letra

var1=`grep -n -m 1 "\[YSF Network\]" /home/orangepi/YSFClients/YSFGateway/YSFGateway.ini`
var2=`echo "$var1" | tr -d '[[:space:]]'`
buscar=":"
largo_linea=`expr index $var2 $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea=`expr substr $var2 1 $largo_linea`
numero_linea=`expr $numero_linea + 1` # y le suma uno qudando coomo: (75)
YSF=$(awk "NR==$numero_linea" /home/orangepi/YSFClients/YSFGateway/YSFGateway.ini)
letra=c
linea_sed_YSF=$numero_linea$letra

var1=`grep -n -m 1 "\[FCS Network\]" /home/orangepi/YSFClients/YSFGateway/YSFGateway.ini`
var2=`echo "$var1" | tr -d '[[:space:]]'`
buscar=":"
largo_linea=`expr index $var2 $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea=`expr substr $var2 1 $largo_linea`
numero_linea=`expr $numero_linea + 1` # y le suma uno qudando coomo: (75)
FCS=$(awk "NR==$numero_linea" /home/orangepi/YSFClients/YSFGateway/YSFGateway.ini)
letra=c
linea_sed_FCS=$numero_linea$letra



var=`grep -n -m 1 '\<InactivityTimeout\>' /home/orangepi/YSFClients/YSFGateway/YSFGateway.ini`
buscar=":"
largo_linea=`expr index $var $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea=`expr substr $var 1 $largo_linea`
Inactiv=$(awk "NR==$numero_linea" /home/orangepi/YSFClients/YSFGateway/YSFGateway.ini)
letra=c
linea_sed_Inactiv=$numero_linea$letra



echo -n "\33[1;36m   1)\33[0m Modificar Indicativo  - \33[1;33m"
echo "$INDICATIVO"

echo -n "\33[1;36m   2)\33[0m Modificar Id          - \33[1;33m"
echo "$ID"

echo -n "\33[1;36m   3)\33[0m Modificar RXFrequency - \33[1;33m"
echo "$RXF"

echo -n "\33[1;36m   4)\33[0m Modificar TXFrequency - \33[1;33m"
echo "$TXF"

echo -n "\33[1;36m   5)\33[0m Modificar Latitud     - \33[1;33m"
echo "$LATITUD"

echo -n "\33[1;36m   6)\33[0m Modificar Longitud    - \33[1;33m"
echo "$LONGITUD"

echo -n "\33[1;36m   7)\33[0m Modificar Nombre      - \33[1;33m"
echo "$NAME"

echo -n "\33[1;36m   8)\33[0m Modificar Startup     - \33[1;33m"
echo "$STARTUP"

echo -n "\33[1;36m   9)\33[0m Habilitar YSF         - \33[1;33m"
echo "$YSF"

echo -n "\33[1;36m  10)\33[0m Habilitar FCS         - \33[1;33m"
echo "$FCS"

echo -n "\33[1;36m  11)\33[0m InactivityTimeout     - "
echo -n "${AMARILLO}$Inactiv ${CIAN}<Este valor ha de ser 0"

echo ""
echo ""
echo "\33[1;36m  28)\33[1;33m Abrir fichero YSFGateway.ini para hacer cualquier cambio\33[1;33m"

echo ""
echo "\33[1;36m   0)\33[1;32m Salir del script \33[1;31m OJO!! no salir con ctrl+c ni con la x"
echo ""
echo -n "\33[1;36m   Elige una opción: " 
read escoger_menu

case $escoger_menu in
1) echo ""
while true
do
echo "Valor actual:   \33[1;33m$INDICATIVO"
           	               read -p 'Introduce tu indicativo: ' Valor                     
                           actualizar=S 
                           case $actualizar in
			                     [sS]* ) echo ""
                            #Convierte de minúsculas a Mayúsculas
                           Valor=`echo "$Valor" | tr [:lower:] [:upper:]`
                           #Quita los espacios
                           Valor=`echo "$Valor" | tr -d '[[:space:]]'`
                           sed -i "$linea_sed_INDICATIVO Callsign=$Valor" /home/orangepi/YSFClients/YSFGateway/YSFGateway.ini
			                     break;;
			                     [nN]* ) echo ""
			                     break;;
esac
done;;
2) echo ""
while true
do
echo "Valor actual: \33[1;33m$ID"
                           read -p 'Introduce tu Id: ' Valor                     
                           actualizar=S 
                           case $actualizar in
                           [sS]* ) echo ""
                            #Convierte de minúsculas a Mayúsculas
                           Valor=`echo "$Valor" | tr [:lower:] [:upper:]`
                           #Quita los espacios
                           Valor=`echo "$Valor" | tr -d '[[:space:]]'`
                           sed -i "$linea_sed_ID Id=$Valor" /home/orangepi/YSFClients/YSFGateway/YSFGateway.ini
                           break;;
                           [nN]* ) echo ""
                           break;;
esac
done;;
3) echo ""
while true
do
echo "Valor actual: \33[1;33m$RXF"
                           read -p 'Introduce tu RXFrequency: ' Valor                     
                           actualizar=S 
                           case $actualizar in
                           [sS]* ) echo ""
                           #Convierte de minúsculas a Mayúsculas
                           Valor=`echo "$Valor" | tr [:lower:] [:upper:]`
                           #Quita los espacios
                           Valor=`echo "$Valor" | tr -d '[[:space:]]'`
                           sed -i "$linea_sed_RXF RXFrequency=$Valor" /home/orangepi/YSFClients/YSFGateway/YSFGateway.ini
                           break;;
                           [nN]* ) echo ""
                           break;;
esac
done;;
4) echo ""
while true
do
echo "Valor actual: \33[1;33m$TXF"
                           read -p 'Introduce tu TXFrequency: ' Valor                     
                           actualizar=S 
                           case $actualizar in
                           [sS]* ) echo ""
                           #Convierte de minúsculas a Mayúsculas
                           Valor=`echo "$Valor" | tr [:lower:] [:upper:]`
                           #Quita los espacios
                           Valor=`echo "$Valor" | tr -d '[[:space:]]'`
                           sed -i "$linea_sed_TXF TXFrequency=$Valor" /home/orangepi/YSFClients/YSFGateway/YSFGateway.ini
                           break;;
                           [nN]* ) echo ""
                           break;;
esac
done;;
5) echo ""
while true
do
echo "Valor actual: \33[1;33m$LATITUD"
                           read -p 'Introduce tu Latitude: ' Valor                     
                           actualizar=S 
                           case $actualizar in
                           [sS]* ) echo ""
                           #Convierte de minúsculas a Mayúsculas
                           Valor=`echo "$Valor" | tr [:lower:] [:upper:]`
                           #Quita los espacios
                           Valor=`echo "$Valor" | tr -d '[[:space:]]'`
                           sed -i "$linea_sed_LA Latitude=$Valor" /home/orangepi/YSFClients/YSFGateway/YSFGateway.ini
                           break;;
                           [nN]* ) echo ""
                           break;;
esac
done;;
6) echo ""
while true
do
echo "Valor actual: \33[1;33m$LONGITUD"
                           read -p 'Introduce tu Longitude: ' Valor                     
                           actualizar=S 
                           case $actualizar in
                           [sS]* ) echo ""
                           #Convierte de minúsculas a Mayúsculas
                           Valor=`echo "$Valor" | tr [:lower:] [:upper:]`
                           #Quita los espacios
                           Valor=`echo "$Valor" | tr -d '[[:space:]]'`
                           sed -i "$linea_sed_LO Longitude=$Valor" /home/orangepi/YSFClients/YSFGateway/YSFGateway.ini
                           break;;
                           [nN]* ) echo ""
                           break;;
esac
done;;
7) echo ""
while true
do
echo "Valor actual: \33[1;33m$NAME"
                           read -p 'Introduce tu Name: ' Valor                     
                           actualizar=S 
                           case $actualizar in
                           [sS]* ) echo ""
                           #Quita los espacios
                           Valor=`echo "$Valor" | tr -d '[[:space:]]'`
                           sed -i "$linea_sed_NAME Name=$Valor" /home/orangepi/YSFClients/YSFGateway/YSFGateway.ini
                           break;;
                           [nN]* ) echo ""
                           break;;
esac
done;;
8) echo ""
while true
do
echo "Valor actual: \33[1;33m$STARTUP"
                           read -p 'Introduce tu Startup: ' Valor                     
                           actualizar=S 
                           case $actualizar in
                           [sS]* ) echo ""
                           sed -i "$linea_sed_ST Startup=$Valor" /home/orangepi/YSFClients/YSFGateway/YSFGateway.ini

sed -i "21c Startup=$Valor" /home/orangepi/info_panel_control.ini

                           
                           break;;
                           [nN]* ) echo ""
                           break;;
esac
done;;
9) echo ""
while true
do
echo "Valor actual:   \33[1;33m$YSF"
                           read -p 'Introduce Valor 1 ó 0: ' Valor                     
                           actualizar=S 
                           case $actualizar in
                           [sS]* ) echo ""
                           sed -i "$linea_sed_YSF Enable=$Valor" /home/orangepi/YSFClients/YSFGateway/YSFGateway.ini
                           break;;
                           [nN]* ) echo ""
                           break;;
esac
done;;
10) echo ""
while true
do
echo "Valor actual:   \33[1;33m$FCS"
                           read -p 'Introduce Valor 1 ó 0: ' Valor                     
                           actualizar=S 
                           case $actualizar in
                           [sS]* ) echo ""
                           sed -i "$linea_sed_FCS Enable=$Valor" /home/orangepi/YSFClients/YSFGateway/YSFGateway.ini
                           break;;
                           [nN]* ) echo ""
                           break;;
esac
done;;
11) echo ""
while true
do
echo "Valor actual:   \33[1;33m$Inactiv"
                           read -p 'Introduce Valor 0: ' Valor                     
                           actualizar=S 
                           case $actualizar in
                           [sS]* ) echo ""
                           sed -i "$linea_sed_Inactiv InactivityTimeout=$Valor" /home/orangepi/YSFClients/YSFGateway/YSFGateway.ini
                           break;;
                           [nN]* ) echo ""
                           break;;
esac
done;;
28) echo ""
while true
do
                              actualizar=S 
                              case $actualizar in
			                     [sS]* ) echo ""
                              sudo pluma /home/orangepi/YSFClients/YSFGateway/YSFGateway.ini
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

