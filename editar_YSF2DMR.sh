#!/bin/bash
while true
do
clear

echo "\33[1;36m   **************************************************************************"
#echo "   *                                                                        *"
echo "   *        Script para Modificar YSF2DMR.ini         \33[1;31m by EA3EIZ & EA4AOJ\33[1;36m   *"
#echo "   *                                                                        *"
echo "   **************************************************************************"

echo -n "\33[1;36m   1)\33[0m Modificar RXFrequency - \33[1;33m"
var1= sed -n 2p  ~/YSF2DMR/YSF2DMR.ini;

echo -n "\33[1;36m   2)\33[0m Modificar TXFrequency - \33[1;33m"
var2= sed -n 3p  ~/YSF2DMR/YSF2DMR.ini;

echo -n "\33[1;36m   3)\33[0m Latitud               - \33[1;33m"
var3= sed -n 5p  ~/YSF2DMR/YSF2DMR.ini;

echo -n "\33[1;36m   4)\33[0m Longitud              - \33[1;33m"
var4= sed -n 6p  ~/YSF2DMR/YSF2DMR.ini;

echo -n "\33[1;36m   5)\33[0m Modificar Location    - \33[1;33m"
var5= sed -n 8p  ~/YSF2DMR/YSF2DMR.ini;

echo -n "\33[1;36m   6)\33[0m Modificar URL         - \33[1;33m"
var6= sed -n 10p  ~/YSF2DMR/YSF2DMR.ini;

echo -n "\33[1;36m   7)\33[0m Modificar indicativo  - \33[1;33m"
var7= sed -n 13p  ~/YSF2DMR/YSF2DMR.ini;

echo -n "\33[1;36m   8)\33[0m DstPort               - \33[1;33m"
var8= sed -n 15p  ~/YSF2DMR/YSF2DMR.ini;

echo -n "\33[1;36m   9)\33[0m LocalPort             - \33[1;33m"
var9= sed -n 17p  ~/YSF2DMR/YSF2DMR.ini;

echo -n "\33[1;36m  10)\33[0m Id                    - \33[1;33m"
var10= sed -n 21p  ~/YSF2DMR/YSF2DMR.ini;

echo -n "\33[1;36m  11)\33[0m StartupDsId           - \33[1;33m"
var11= sed -n 22p  ~/YSF2DMR/YSF2DMR.ini;

echo -n "\33[1;36m  12)\33[0m StartupPC             - \33[1;33m"
var12= sed -n 24p  ~/YSF2DMR/YSF2DMR.ini;

echo -n "\33[1;36m  13)\33[0m Address               - \33[1;33m"
var13= sed -n 25p  ~/YSF2DMR/YSF2DMR.ini;

echo -n "\33[1;36m  14)\33[0m Port                  - \33[1;33m"
var14= sed -n 26p  ~/YSF2DMR/YSF2DMR.ini;

echo -n "\33[1;36m  15)\33[0m Password              - \33[1;33m"
var15= sed -n 29p  ~/YSF2DMR/YSF2DMR.ini;


echo ""
echo "\33[1;36m  16)\33[1;33m Abrir fichero YSF2DMR.ini para hacer cualquier cambio\33[1;33m"

echo ""
echo "\33[1;36m   0)\33[1;32m Salir del script \33[1;31m OJO!! no salir con ctrl+c ni con la x"
echo ""
echo -n "\33[1;36m   Elige una opción del 0 al 16: " 
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
                          sed -i "$linea Callsign=$indicativo" ~/YSF2DMR/YSF2DMR.ini
			  break;;
			  [nN]* ) echo ""
			  break;;
esac
done;;
1) echo ""
while true
do
                          rxf=`grep -n "RXFrequency" ~/YSF2DMR/YSF2DMR.ini`
                          rxf1=`expr substr $rxf 15 9`
                          echo "   Valor de  RXFrequency =\33[1;33m $rxf1"
                          echo -n "\33[1;37m"
                          read -p '   Introduce RXFrequency = ' rx
                          actualizar=S 
                          case $actualizar in
                          [sS]* ) echo ""
                          sed -i "2c RXFrequency=$rx" ~/YSF2DMR/YSF2DMR.ini
                          break;;
                          [nN]* ) echo ""
                          break;;
esac
done;;
2) echo ""
while true
do
                          

                          txf=`grep -n "TXFrequency" ~/YSF2DMR/YSF2DMR.ini`
                          txf1=`expr substr $txf 15 9`
                          echo "   Valor de  TXFrequency =\33[1;33m $rxf1"
                          echo -n "\33[1;37m"
                          read -p '   Introduce TXFrequency = ' tx
                          actualizar=S 
                          case $actualizar in
                          [sS]* ) echo ""
                          sed -i "3c TXFrequency=$tx" ~/YSF2DMR/YSF2DMR.ini
                          break;;
                          [nN]* ) echo ""
                          break;;
esac
done;;
3) echo ""
while true
do
                          

                          lat=`grep -n "Latitude" ~/YSF2DMR/YSF2DMR.ini`
                          lat1=`expr substr $lat 12 12`
                          echo "   Valor de  Latitud =\33[1;33m $lat1"
                          echo -n "\33[1;37m"
                          read -p '   Introduce Latitud = ' lat
                          actualizar=S 
                          case $actualizar in
                          [sS]* ) echo ""
                          sed -i "5c Latitude=$lat" ~/YSF2DMR/YSF2DMR.ini
                          break;;
                          [nN]* ) echo ""
                          break;;
esac
done;;
4) echo ""
while true
do
                          

                          lonng=`grep -n "Longitude" ~/YSF2DMR/YSF2DMR.ini`
                          lonng1=`expr substr $lonng 13 12`
                          echo "   Valor de  Longitud =\33[1;33m $lonng1"
                          echo -n "\33[1;37m"
                          read -p '   Introduce Longitud = ' lon
                          actualizar=S 
                          case $actualizar in
                          [sS]* ) echo ""
                          sed -i "6c Longitude=$lon" ~/YSF2DMR/YSF2DMR.ini
                          break;;
                          [nN]* ) echo ""
                          break;;
esac
done;;
5) echo ""
while true
do
                          

                          lat=`grep -n "Location" ~/YSF2DMR/YSF2DMR.ini`
                          lat1=`expr substr $lat 12 30`
                          echo "   Valor de  Ciudad =\33[1;33m $lat1"
                          echo -n "\33[1;37m"
                          read -p '   Introduce Ciudad = ' loc1
                          actualizar=S 
                          case $actualizar in
                          [sS]* ) echo ""

                          #quita los espacios que se entren en el imput
                          loc1=`echo "$loc1" | tr -d '[[:space:]]'`
                          sed -i "8c Location=$loc1" ~/YSF2DMR/YSF2DMR.ini
                          break;;
                          [nN]* ) echo ""
                          break;;
esac
done;;
6) echo ""
while true
do
                          

                          lonng=`grep -n "URL" ~/YSF2DMR/YSF2DMR.ini`
                          lonng1=`expr substr $lonng 8 30`
                          echo "   Valor de  URL =\33[1;33m $lonng1"
                          echo -n "\33[1;37m"
                          read -p '   Introduce URL = ' lon
                          actualizar=S 
                          case $actualizar in
                          [sS]* ) echo ""
                          sed -i "10c URL=$lon" ~/YSF2DMR/YSF2DMR.ini
                          break;;
                          [nN]* ) echo ""
                          break;;
esac
done;;
7) echo ""
while true
do
                          

                          lonng=`grep -n "Callsign" ~/YSF2DMR/YSF2DMR.ini`
                          lonng1=`expr substr $lonng 13 30`
                          echo "   Valor de  Indicativo =\33[1;33m $lonng1"
                          echo -n "\33[1;37m"
                          read -p '   Introduce Indicativo = ' lon
                          actualizar=S 
                          case $actualizar in
                          [sS]* ) echo ""

                          #Convierte indicativo si se introduce en minúsculas a Mayúsculas
                          lonM=`echo "$lon" | tr [:lower:] [:upper:]`
                          sed -i "13c Callsign=$lonM" ~/YSF2DMR/YSF2DMR.ini
                          break;;
                          [nN]* ) echo ""
                          break;;
esac
done;;
8) echo ""
while true
do
                          

                          lonng=`grep -n "DstPort" ~/YSF2DMR/YSF2DMR.ini`
                          lonng1=`expr substr $lonng 12 30`
                          echo "   Valor  de  DstPort  =\33[1;33m $lonng1"
                          echo -n "\33[1;32m"
                          echo "   El valor correcto es: 3200"
                          echo -n "\33[1;37m"
                          read -p '   Introduce  DstPort  = ' lon
                          actualizar=S 
                          case $actualizar in
                          [sS]* ) echo ""
                          sed -i "15c DstPort=$lon" ~/YSF2DMR/YSF2DMR.ini
                          break;;
                          [nN]* ) echo ""
                          break;;
esac
done;;
9) echo ""
while true
do
                          

                          lonng=`grep -n "LocalPort" ~/YSF2DMR/YSF2DMR.ini`
                          lonng1=`expr substr $lonng 14 30`
                          echo "   Valor de LocalPort  =\33[1;33m $lonng1"
                          echo -n "\33[1;32m"
                          echo "   El valor correcto es: 4200"
                          echo -n "\33[1;37m"
                          read -p '   Introduce LocalPort = ' lon
                          actualizar=S 
                          case $actualizar in
                          [sS]* ) echo ""
                          sed -i "17c LocalPort=$lon" ~/YSF2DMR/YSF2DMR.ini
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
                          sed -i "21c Id=$lon" ~/YSF2DMR/YSF2DMR.ini
                          break;;
                          [nN]* ) echo ""
                          break;;
esac
done;;
11) echo ""
while true
do
                          

                          lonng=`grep -n "StartupDstId" ~/YSF2DMR/YSF2DMR.ini`
                          lonng1=`expr substr $lonng 17 30`
                          echo "   Valor de StartupDstId  =\33[1;33m $lonng1"
                          echo -n "\33[1;32m"
                          echo "   Pondremos un talkgroup o una Id dependiendo del valor en StartuoPC"
                          echo -n "\33[1;37m"
                          read -p '   Introduce StartupDstId = ' lon
                          actualizar=S 
                          case $actualizar in
                          [sS]* ) echo ""
                          sed -i "22c StartupDstId=$lon" ~/YSF2DMR/YSF2DMR.ini
                          break;;
                          [nN]* ) echo ""
                          break;;
esac
done;;
12) echo ""
while true
do
                          

                          echo "\33[1;32m   El Valor correcto es: 0 ó 1\33[1;37m" 
                          echo "\33[1;32m   Si el valor es 0, pondremos un talkgroup StartupDstId, si es 1 pondremos una Id en StartupDstId\33[1;37m"
                          read -p '   Introduce StartupPC = ' lon
                          actualizar=S 
                          case $actualizar in
                          [sS]* ) echo ""
                          sed -i "24c StartupPC=$lon" ~/YSF2DMR/YSF2DMR.ini
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
                          sed -i "25c Address=$lon" ~/YSF2DMR/YSF2DMR.ini
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
                          sed -i "26c Port=$lon" ~/YSF2DMR/YSF2DMR.ini
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
                          sed -i "29c Password=$lon" ~/YSF2DMR/YSF2DMR.ini
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
                              sudo pluma ~/YSF2DMR/YSF2DMR.ini
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

