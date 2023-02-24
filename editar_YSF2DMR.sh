#!/bin/bash
while true
do
clear
                    # Datos para el panel de control
                    frec=$(awk "NR==2" /home/orangepi/YSF2DMR/YSF2DMR.ini)
                    sed -i "24c $frec" /home/orangepi/info_panel_control.ini
                    tg=$(awk "NR==23" /home/orangepi/YSF2DMR/YSF2DMR.ini)
                    sed -i "26c $tg" /home/orangepi/info_panel_control.ini
                    master=$(awk "NR==26" /home/orangepi/YSF2DMR/YSF2DMR.ini)
                    sed -i "25c $master" /home/orangepi/info_panel_control.ini


echo "\33[1;36m   **************************************************************************"
#echo "   *                                                                        *"
echo "   *        Script para Modificar YSF2DMR.ini         \33[1;31m by EA3EIZ & EA4AOJ\33[1;36m   *"
#echo "   *                                                                        *"
echo "   **************************************************************************"

echo -n "\33[1;36m   1)\33[0m Modificar RXFrequency - \33[1;33m"
var1= sed -n 2p  /home/orangepi/YSF2DMR/YSF2DMR.ini;

echo -n "\33[1;36m   2)\33[0m Modificar TXFrequency - \33[1;33m"
var2= sed -n 3p  /home/orangepi/YSF2DMR/YSF2DMR.ini;

echo -n "\33[1;36m   3)\33[0m Latitud               - \33[1;33m"
var3= sed -n 5p  /home/orangepi/YSF2DMR/YSF2DMR.ini;

echo -n "\33[1;36m   4)\33[0m Longitud              - \33[1;33m"
var4= sed -n 6p  /home/orangepi/YSF2DMR/YSF2DMR.ini;

echo -n "\33[1;36m   5)\33[0m Modificar Location    - \33[1;33m"
var5= sed -n 8p  /home/orangepi/YSF2DMR/YSF2DMR.ini;

echo -n "\33[1;36m   6)\33[0m Modificar URL         - \33[1;33m"
var6= sed -n 10p  /home/orangepi/YSF2DMR/YSF2DMR.ini;

echo -n "\33[1;36m   7)\33[0m Modificar indicativo  - \33[1;33m"
var7= sed -n 13p  /home/orangepi/YSF2DMR/YSF2DMR.ini;

echo -n "\33[1;36m   8)\33[0m DstPort               - \33[1;33m"
var=`grep -n -m 1 '\<DstPort\>' /home/orangepi/YSF2DMR/YSF2DMR.ini`
var1=`grep -m 1 '\<DstPort\>' /home/orangepi/YSF2DMR/YSF2DMR.ini`
buscar=":"
largo_linea=`expr index $var $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea=`expr substr $var 1 $largo_linea`
DstPort=$(awk "NR==$numero_linea" /home/orangepi/YSF2DMR/YSF2DMR.ini)
letra=c
linea_sed_8=$numero_linea$letra
echo "$var1"

echo -n "\33[1;36m   9)\33[0m LocalPort             - \33[1;33m"
var=`grep -n -m 1 '\<LocalPort\>' /home/orangepi/YSF2DMR/YSF2DMR.ini`
var1=`grep -m 1 '\<LocalPort\>' /home/orangepi/YSF2DMR/YSF2DMR.ini`
buscar=":"
largo_linea=`expr index $var $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea=`expr substr $var 1 $largo_linea`
LocalPort=$(awk "NR==$numero_linea" /home/orangepi/YSF2DMR/YSF2DMR.ini)
letra=c
linea_sed_9=$numero_linea$letra
echo "$var1"

echo -n "\33[1;36m  10)\33[0m Id                    - \33[1;33m"
idd1=`grep -n -m 1 "^Id=" /home/orangepi/YSF2DMR/YSF2DMR.ini`
buscar=":"
caracteres=`expr index $idd1 $buscar`
caracteres_linea=`expr $caracteres - 1`
numero_linea_idd=`expr substr $idd1 1 $caracteres_linea`
idd1=$(awk "NR==$numero_linea_idd" /home/orangepi/YSF2DMR/YSF2DMR.ini)
letra=c
linea_sed_10=$numero_linea_idd$letra
echo "$idd1"

echo -n "\33[1;36m  11)\33[0m StartupDstId          - \33[1;33m"
var=`grep -n -m 1 '\<StartupDstId\>' /home/orangepi/YSF2DMR/YSF2DMR.ini`
var1=`grep -m 1 '\<StartupDstId\>' /home/orangepi/YSF2DMR/YSF2DMR.ini`
buscar=":"
largo_linea=`expr index $var $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea=`expr substr $var 1 $largo_linea`
StartupDstId=$(awk "NR==$numero_linea" /home/orangepi/YSF2DMR/YSF2DMR.ini)
letra=c
linea_sed_11=$numero_linea$letra
echo "$var1"

echo -n "\33[1;36m  12)\33[0m StartupPC             - \33[1;33m"
var=`grep -n -m 1 '\<StartupDstId\>' /home/orangepi/YSF2DMR/YSF2DMR.ini`
var1=`grep -m 1 '\<StartupDstId\>' /home/orangepi/YSF2DMR/YSF2DMR.ini`
buscar=":"
largo_linea=`expr index $var $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea=`expr substr $var 1 $largo_linea`
numero_linea=`expr $numero_linea + 2`
StartupPC=$(awk "NR==$numero_linea" /home/orangepi/YSF2DMR/YSF2DMR.ini)
letra=c
linea_sed_12=$numero_linea$letra
echo "$StartupPC"

echo -n "\33[1;36m  13)\33[0m Address               - \33[1;33m"
var=`grep -n -m 1 '\<Address\>' /home/orangepi/YSF2DMR/YSF2DMR.ini`
var1=`grep -m 1 '\<Address\>' /home/orangepi/YSF2DMR/YSF2DMR.ini`
buscar=":"
largo_linea=`expr index $var $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea=`expr substr $var 1 $largo_linea`
Address=$(awk "NR==$numero_linea" /home/orangepi/YSF2DMR/YSF2DMR.ini)
letra=c
linea_sed_13=$numero_linea$letra
echo "$var1"

echo -n "\33[1;36m  14)\33[0m Port                  - \33[1;33m"
var=`grep -n -m 1 '\<Address\>' /home/orangepi/YSF2DMR/YSF2DMR.ini`
var1=`grep -m 1 '\<Address\>' /home/orangepi/YSF2DMR/YSF2DMR.ini`
buscar=":"
largo_linea=`expr index $var $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea=`expr substr $var 1 $largo_linea`
numero_linea=`expr $numero_linea + 1`
Port=$(awk "NR==$numero_linea" /home/orangepi/YSF2DMR/YSF2DMR.ini)
letra=c
linea_sed_14=$numero_linea$letra
echo "$Port"

echo -n "\33[1;36m  15)\33[0m Password              - \33[1;33m"
var=`grep -n -m 1 '\<Password\>' /home/orangepi/YSF2DMR/YSF2DMR.ini`
var1=`grep -m 1 '\<Password\>' /home/orangepi/YSF2DMR/YSF2DMR.ini`
buscar=":"
largo_linea=`expr index $var $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea=`expr substr $var 1 $largo_linea`
Password=$(awk "NR==$numero_linea" /home/orangepi/YSF2DMR/YSF2DMR.ini)
letra=c
linea_sed_15=$numero_linea$letra
echo "$var1"

echo ""
echo "\33[1;36m  16)\33[1;37m Guardar  fichero de Configuración en M1 \33[1;36m"
echo -n "\33[1;36m  17)\33[1;32m Utilizar fichero de Configuración de M1: \33[1;36m"
reflector=`grep -n -m 1 '\<Address\>' /home/orangepi/YSF2DMR/YSF2DMR.ini_copia_01`
reflector=`expr substr $reflector 12 40`
echo "$reflector"

echo ""
echo "\33[1;36m  18)\33[1;37m Guardar  fichero de Configuración en M2 \33[1;36m"
echo -n "\33[1;36m  19)\33[1;32m Utilizar fichero de Configuración de M2: \33[1;36m"
reflector=`grep -n -m 1 '\<Address\>' /home/orangepi/YSF2DMR/YSF2DMR.ini_copia_02`
reflector=`expr substr $reflector 12 40`
echo "$reflector"

echo ""
echo "\33[1;36m  20)\33[1;37m Guardar  fichero de Configuración en M3 \33[1;36m"
echo -n "\33[1;36m  21)\33[1;32m Utilizar fichero de Configuración de M3: \33[1;36m"
reflector=`grep -n -m 1 '\<Address\>' /home/orangepi/YSF2DMR/YSF2DMR.ini_copia_03`
reflector=`expr substr $reflector 12 40`
echo "$reflector"

echo ""
echo "\33[1;36m  22)\33[1;37m Guardar  fichero de Configuración en M4 \33[1;36m"
echo -n "\33[1;36m  23)\33[1;32m Utilizar fichero de Configuración de M4: \33[1;36m"
reflector=`grep -n -m 1 '\<Address\>' /home/orangepi/YSF2DMR/YSF2DMR.ini_copia_04`
reflector=`expr substr $reflector 12 40`
echo "$reflector"

echo ""
echo "\33[1;36m  24)\33[1;33m Abrir fichero YSF2DMR.ini para hacer cualquier cambio\33[1;33m"

echo ""
echo "\33[1;36m   0)\33[1;32m Salir del script \33[1;31m OJO!! no salir con ctrl+c ni con la x"
echo ""
echo -n "\33[1;36m   Elige una opción del 0 al 24: " 
read escoger_menu

case $escoger_menu in
011) echo ""
while true
do
buscar=":"
largo=`expr index $ind $buscar`
echo "Valor actual Indicativo: \33[1;33m${ind#*=}\33[1;37m"
           	          read -p 'Introduce tu indicativo: ' indicativo
                          letra=c
                          if [ $largo = 3 ]
                          then
                          linea=`expr substr $ind 1 1`
                          else
                          linea=`expr substr $ind 1 1`
                          fi
                          linea=$linea$letra
                          actualizar=S 
                          case $actualizar in
			              [sS]* ) echo ""
			              indicativo=`echo "$indicativo" | tr -d '[[:space:]]'`
                          sed -i "$linea Callsign=$indicativo" /home/orangepi/YSF2DMR/YSF2DMR.ini
			  break;;
			  [nN]* ) echo ""
			  break;;
esac
done;;
1) echo ""
while true
do
                          rxf=`grep -n "RXFrequency" /home/orangepi/YSF2DMR/YSF2DMR.ini`
                          rxf1=`expr substr $rxf 15 9`
                          echo "   Valor de  RXFrequency =\33[1;33m $rxf1"
                          echo -n "\33[1;37m"
                          read -p '   Introduce RXFrequency = ' rx
                          actualizar=S 
                          case $actualizar in
                          [sS]* ) echo ""
                          sed -i "2c RXFrequency=$rx" /home/orangepi/YSF2DMR/YSF2DMR.ini
                          break;;
                          [nN]* ) echo ""
                          break;;
esac
done;;
2) echo ""
while true
do
                          

                          txf=`grep -n "TXFrequency" /home/orangepi/YSF2DMR/YSF2DMR.ini`
                          txf1=`expr substr $txf 15 9`
                          echo "   Valor de  TXFrequency =\33[1;33m $rxf1"
                          echo -n "\33[1;37m"
                          read -p '   Introduce TXFrequency = ' tx
                          actualizar=S 
                          case $actualizar in
                          [sS]* ) echo ""
                          sed -i "3c TXFrequency=$tx" /home/orangepi/YSF2DMR/YSF2DMR.ini
                          break;;
                          [nN]* ) echo ""
                          break;;
esac
done;;
3) echo ""
while true
do
                          

                          lat=`grep -n "Latitude" /home/orangepi/YSF2DMR/YSF2DMR.ini`
                          lat1=`expr substr $lat 12 12`
                          echo "   Valor de  Latitud =\33[1;33m $lat1"
                          echo -n "\33[1;37m"
                          read -p '   Introduce Latitud = ' lat
                          actualizar=S 
                          case $actualizar in
                          [sS]* ) echo ""
                          sed -i "5c Latitude=$lat" /home/orangepi/YSF2DMR/YSF2DMR.ini
                          break;;
                          [nN]* ) echo ""
                          break;;
esac
done;;
4) echo ""
while true
do
                          

                          lonng=`grep -n "Longitude" /home/orangepi/YSF2DMR/YSF2DMR.ini`
                          lonng1=`expr substr $lonng 13 12`
                          echo "   Valor de  Longitud =\33[1;33m $lonng1"
                          echo -n "\33[1;37m"
                          read -p '   Introduce Longitud = ' lon
                          actualizar=S 
                          case $actualizar in
                          [sS]* ) echo ""
                          sed -i "6c Longitude=$lon" /home/orangepi/YSF2DMR/YSF2DMR.ini
                          break;;
                          [nN]* ) echo ""
                          break;;
esac
done;;
5) echo ""
while true
do
                          

                          lat=`grep -n "Location" /home/orangepi/YSF2DMR/YSF2DMR.ini`
                          lat1=`expr substr $lat 12 30`
                          echo "   Valor de  Ciudad =\33[1;33m $lat1"
                          echo -n "\33[1;37m"
                          read -p '   Introduce Ciudad = ' loc1
                          actualizar=S 
                          case $actualizar in
                          [sS]* ) echo ""

                          #quita los espacios que se entren en el imput
                          loc1=`echo "$loc1" | tr -d '[[:space:]]'`
                          sed -i "8c Location=$loc1" /home/orangepi/YSF2DMR/YSF2DMR.ini
                          break;;
                          [nN]* ) echo ""
                          break;;
esac
done;;
6) echo ""
while true
do
                          

                          lonng=`grep -n "URL" /home/orangepi/YSF2DMR/YSF2DMR.ini`
                          lonng1=`expr substr $lonng 8 30`
                          echo "   Valor de  URL =\33[1;33m $lonng1"
                          echo -n "\33[1;37m"
                          read -p '   Introduce URL = ' lon
                          actualizar=S 
                          case $actualizar in
                          [sS]* ) echo ""
                          sed -i "10c URL=$lon" /home/orangepi/YSF2DMR/YSF2DMR.ini
                          break;;
                          [nN]* ) echo ""
                          break;;
esac
done;;
7) echo ""
while true
do
                          

                          lonng=`grep -n "Callsign" /home/orangepi/YSF2DMR/YSF2DMR.ini`
                          lonng1=`expr substr $lonng 13 30`
                          echo "   Valor de  Indicativo =\33[1;33m $lonng1"
                          echo -n "\33[1;37m"
                          read -p '   Introduce Indicativo = ' lon
                          actualizar=S 
                          case $actualizar in
                          [sS]* ) echo ""

                          #Convierte indicativo si se introduce en minúsculas a Mayúsculas
                          lonM=`echo "$lon" | tr [:lower:] [:upper:]`
                          sed -i "13c Callsign=$lonM" /home/orangepi/YSF2DMR/YSF2DMR.ini
                          break;;
                          [nN]* ) echo ""
                          break;;
esac
done;;
8) echo ""
while true
do
                          

                          echo "   Valor  de  DstPort  =\33[1;33m $DstPort"
                          echo -n "\33[1;32m"
                          echo "   El valor correcto es: 3200"
                          echo -n "\33[1;37m"
                          read -p '   Introduce  DstPort  = ' lon
                          actualizar=S 
                          case $actualizar in
                          [sS]* ) echo ""
                          sed -i "$linea_sed_8 DstPort=$lon" /home/orangepi/YSF2DMR/YSF2DMR.ini
                          break;;
                          [nN]* ) echo ""
                          break;;
esac
done;;
9) echo ""
while true
do
                          echo "   Valor de LocalPort  =\33[1;33m $LocalPort"
                          echo -n "\33[1;32m"
                          echo "   El valor correcto es: 4200"
                          echo -n "\33[1;37m"
                          read -p '   Introduce LocalPort = ' lon
                          actualizar=S 
                          case $actualizar in
                          [sS]* ) echo ""
                          sed -i "$linea_sed_9 LocalPort=$lon" /home/orangepi/YSF2DMR/YSF2DMR.ini
                          break;;
                          [nN]* ) echo ""
                          break;;
esac
done;;
10) echo ""
while true
do                         
                          echo -n "\33[1;37m"
                          read -p '   Introduce Id = ' lon
                          actualizar=S 
                          case $actualizar in
                          [sS]* ) echo ""
                          sed -i "$linea_sed_10 Id=$lon" /home/orangepi/YSF2DMR/YSF2DMR.ini
                          break;;
                          [nN]* ) echo ""
                          break;;
esac
done;;
11) echo ""
while true
do
                          echo "   Valor de StartupDstId  =\33[1;33m $StartupDstId"
                          echo -n "\33[1;32m"
                          echo "   Pondremos un talkgroup o una Id dependiendo del valor en StartuoPC"
                          echo -n "\33[1;37m"
                          read -p '   Introduce StartupDstId = ' lon
                          actualizar=S 
                          case $actualizar in
                          [sS]* ) echo ""
                          sed -i "$linea_sed_11 StartupDstId=$lon" /home/orangepi/YSF2DMR/YSF2DMR.ini
                          break;;
                          [nN]* ) echo ""
                          break;;
esac
done;;
12) echo ""
while true
do
                          

                          echo "\33[1;32m   El Valor correcto es: 0 ó 1\33[1;37m" 
                          echo "\33[1;32m   Si ponemos un "0", pondremos un talkgroup en StartupDstId para llamada a grupo\33[1;37m"
                          echo "\33[1;32m   Si ponemos un "1", deberemos poner una Id en StartupDstId para llamada privada\33[1;37m"
                          read -p '   Introduce StartupPC = ' lon
                          actualizar=S 
                          case $actualizar in
                          [sS]* ) echo ""
                          sed -i "$linea_sed_12 StartupPC=$lon" /home/orangepi/YSF2DMR/YSF2DMR.ini
                          break;;
                          [nN]* ) echo ""
                          break;;
esac
done;;
13) echo ""
while true
do                      
                          echo "\33[1;32m   Brandmeister=master.spain-dmr.es  DMR+=eamaster04.xreflector.es\33[1;37m" 
                          read -p '   Introduce Address = ' lon
                          actualizar=S 
                          case $actualizar in
                          [sS]* ) echo ""
                          sed -i "$linea_sed_13 Address=$lon" /home/orangepi/YSF2DMR/YSF2DMR.ini
                          break;;
                          [nN]* ) echo ""
                          break;;
esac
done;;
14) echo ""
while true
do                      
                          echo "\33[1;32m   Puerto para Brandmeister=62031 para DMR+=55555\33[1;37m" 
                          read -p '   Introduce Port = ' lon
                          actualizar=S 
                          case $actualizar in
                          [sS]* ) echo ""
                          sed -i "$linea_sed_14 Port=$lon" /home/orangepi/YSF2DMR/YSF2DMR.ini
                          break;;
                          [nN]* ) echo ""
                          break;;
esac
done;;
15) echo ""
while true
do                      
                          echo "\33[1;32m   Password para Brandmeister=passw0rd para DMR+=PASSWORD\33[1;37m" 
                          read -p '   Introduce Password = ' lon
                          actualizar=S 
                          case $actualizar in
                          [sS]* ) echo ""
                          sed -i "$linea_sed_15 Password=$lon" /home/orangepi/YSF2DMR/YSF2DMR.ini
                          break;;
                          [nN]* ) echo ""
                          break;;
esac
done;;

16) echo ""
while true
do                
                        actualizar=S 
                        case $actualizar in
                        [sS]* ) echo ""
                        clear
                        echo "<<<<<< Haciendo copia de seguridad de la M1 >>>>>"
                        sleep 3
                        sudo cp -f /home/orangepi/YSF2DMR/YSF2DMR.ini /home/orangepi/YSF2DMR/YSF2DMR.ini_copia_01
                        break;;
                        [nN]* ) echo ""
                        break;;
esac
done;;
17) echo ""
while true
do
                        actualizar=S 
                        case $actualizar in
                        [sS]* ) echo ""
                        clear
                        echo "<<<<<< Restaurando copia de seguridad de la M1 >>>>>"
                        sleep 3
                        sudo cp -f /home/orangepi/YSF2DMR/YSF2DMR.ini_copia_01 /home/orangepi/YSF2DMR/YSF2DMR.ini
                        break;;
                        [nN]* ) echo ""
                        break;;
esac
done;;
18) echo ""
while true
do                
                        actualizar=S 
                        case $actualizar in
                        [sS]* ) echo ""
                        clear
                        echo "<<<<<< Haciendo copia de seguridad de la M2 >>>>>"
                        sleep 3
                        sudo cp -f /home/orangepi/YSF2DMR/YSF2DMR.ini /home/orangepi/YSF2DMR/YSF2DMR.ini_copia_02
                        break;;
                        [nN]* ) echo ""
                        break;;
esac
done;;
19) echo ""
while true
do
                        actualizar=S 
                        case $actualizar in
                        [sS]* ) echo ""
                        clear
                        echo "<<<<<< Restaurando copia de seguridad de la M2 >>>>>"
                        sleep 3
                        sudo cp -f /home/orangepi/YSF2DMR/YSF2DMR.ini_copia_02 /home/orangepi/YSF2DMR/YSF2DMR.ini
                        break;;
                        [nN]* ) echo ""
                        break;;
esac
done;;
20) echo ""
while true
do                
                        actualizar=S 
                        case $actualizar in
                        [sS]* ) echo ""
                        clear
                        echo "<<<<<< Haciendo copia de seguridad de la M3 >>>>>"
                        sleep 3
                        sudo cp -f /home/orangepi/YSF2DMR/YSF2DMR.ini /home/orangepi/YSF2DMR/YSF2DMR.ini_copia_03
                        break;;
                        [nN]* ) echo ""
                        break;;
esac
done;;
21) echo ""
while true
do
                        actualizar=S 
                        case $actualizar in
                        [sS]* ) echo ""
                        clear
                        echo "<<<<<< Restaurando copia de seguridad de la M3 >>>>>"
                        sleep 3
                        sudo cp -f /home/orangepi/YSF2DMR/YSF2DMR.ini_copia_03 /home/orangepi/YSF2DMR/YSF2DMR.ini
                        break;;
                        [nN]* ) echo ""
                        break;;
esac
done;;
22) echo ""
while true
do                
                        actualizar=S 
                        case $actualizar in
                        [sS]* ) echo ""
                        clear
                        echo "<<<<<< Haciendo copia de seguridad de la M4 >>>>>"
                        sleep 3
                        sudo cp -f /home/orangepi/YSF2DMR/YSF2DMR.ini /home/orangepi/YSF2DMR/YSF2DMR.ini_copia_04
                        break;;
                        [nN]* ) echo ""
                        break;;
esac
done;;
23) echo ""
while true
do
                        actualizar=S 
                        case $actualizar in
                        [sS]* ) echo ""
                        clear
                        echo "<<<<<< Restaurando copia de seguridad de la M4 >>>>>"
                        sleep 3
                        sudo cp -f /home/orangepi/YSF2DMR/YSF2DMR.ini_copia_04 /home/orangepi/YSF2DMR/YSF2DMR.ini
                        break;;
                        [nN]* ) echo ""
                        break;;
esac
done;;
24) echo ""
while true
do
                              actualizar=S 
                              case $actualizar in
                              [sS]* ) echo ""
                              sudo pluma /home/orangepi/YSF2DMR/YSF2DMR.ini
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

