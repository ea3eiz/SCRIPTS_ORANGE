#!/bin/bash
while true
do
clear

echo "\33[1;32m   **************************************************************************"
#echo "   *                                                                        *"
echo "   *           Script para Modificar MMDVMBM.ini    \33[1;31m by EA3EIZ & EA4AOJ\33[1;32m     *"
#echo "   *                                                                        *"
echo "   **************************************************************************"
echo -n "\33[1;36m   1)\33[0m Modificar indicativo  - \33[1;33m"
ind=`grep -n -m 1 "Callsign" ~/MMDVMHost/MMDVMBM.ini`
ind1=`expr substr $ind 3 30`
echo "$ind1"

echo -n "\33[1;36m   2)\33[0m Modificar RXFrequency - \33[1;33m"
rxf=`grep -n "RXFrequency" ~/MMDVMHost/MMDVMBM.ini`
rxf1=`expr substr $rxf 4 30`
echo "$rxf1"

echo -n "\33[1;36m   3)\33[0m Modificar TXFrequency - \33[1;33m"
txf=`grep -n "TXFrequency" ~/MMDVMHost/MMDVMBM.ini`
txf1=`expr substr $txf 4 30`
echo "$txf1"

echo -n "\33[1;36m   4)\33[0m Modificar Location    - \33[1;33m"
loca=`grep -n "Locatio" ~/MMDVMHost/MMDVMBM.ini`
loca1=`expr substr $loca 4 30`
echo "$loca1"

echo -n "\33[1;36m   5)\33[0m Modificar URL         - \33[1;33m"
url=`grep -n "URL" ~/MMDVMHost/MMDVMBM.ini`
url1=`expr substr $url 4 30`
echo "$url1"

echo "\33[1;36m   6)\33[0m Puerto para placa NTH/ZUM en arduino y Pincho Low Cost (ttyACM0)\33[1;33m"
echo "\33[1;36m   7)\33[0m Puerto para placa NTH/ZUM en arduino y Pincho Low Cost (ttyACM1)\33[1;33m"
echo "\33[1;36m   8)\33[0m Puerto para DVMEGA + Bluestack conectado por USB (ttyUSB0)\33[1;33m"
echo "\33[1;36m   9)\33[0m Puerto para DVMEGA + Bluestack conectado por USB (ttyUSB1)\33[1;33m"
echo -n "                            - "

mode=`grep -n -m 1 '\<Modem\>' ~/MMDVMHost/MMDVMBM.ini`
mode1=`expr substr $mode 4 30`
linea=`expr substr $mode 1 2`
linea=`expr $linea + 2`
linea33=$linea
letra=p
linea2=$linea$letra
var99= sed -n $linea2  ~/MMDVMHost/MMDVMBM.ini;

echo -n "\33[1;36m  10)\33[0m Modificar ID          - \33[1;33m"
idd=`grep -n "Id=" ~/MMDVMHost/MMDVMBM.ini`
idd1=`expr substr $idd 3 30`
echo "$idd1"

echo -n "\33[1;36m  11)\33[0m Modificar Address     - \33[1;33m"
master=`grep -n -m 1 '\<Address\>' ~/MMDVMHost/MMDVMBM.ini`
buscar=":"
largo=`expr index $master $buscar`
largo=`expr $largo + 1`
largo1=`expr $largo - 2`
master1=`expr substr $master $largo 40`
largo=`expr substr $master 1 $largo1`
letra=c            
linea=$largo$letra
echo "$master1"

echo -n "\33[1;36m  12)\33[0m Modificar Puerto      - \33[1;33m"
lineaport=`expr substr $master 1 $largo1`
lineaport=`expr $lineaport + 1`
linea3port=$lineaport
letra=p
linea2port=$lineaport$letra
var100port= sed -n $linea2port  ~/MMDVMHost/MMDVMBM.ini;

echo -n "\33[1;36m  13)\33[0m Modificar Password    - \33[1;33m"
pas=`grep -n '\<Password\>' ~/MMDVMHost/MMDVMBM.ini`
pas1=`expr substr $pas 5 30`
echo "$pas1"

echo -n "\33[1;36m  14)\33[0m Modificar TXInvert    - \33[1;33m"
txinv=`grep -n '\<TXInvert\>' ~/MMDVMHost/MMDVMBM.ini`
txinv1=`expr substr $txinv 4 30`
echo "$txinv1"

echo -n "\33[1;36m  15)\33[0m Modificar RXLevel     - \33[1;33m"
rx=`grep -n '\<RXLevel\>' ~/MMDVMHost/MMDVMBM.ini`
rx1=`expr substr $rx 4 30`
echo "$rx1"

echo -n "\33[1;36m  16)\33[0m Modificar TXLevel     - \33[1;33m"
tx=`grep -n -m 1 '\<TXLevel\>' ~/MMDVMHost/MMDVMBM.ini`
tx1=`expr substr $tx 4 30`
echo "$tx1"

echo -n "\33[1;36m  17)\33[0m Modificar Duplex      - \33[1;33m"
dup=`grep -n -m 1 '\<Duplex\>' ~/MMDVMHost/MMDVMBM.ini`
dup1=`expr substr $dup 3 30`
echo "$dup1"

echo -n "\33[1;36m  18)\33[0m Modificar TXHang      - \33[1;33m"
txh=`grep -n -m 1 '\<TXHang\>' ~/MMDVMHost/MMDVMBM.ini`
txh1=`expr substr $txh 4 30`
echo "$txh1"

echo -n "\33[1;36m  19)\33[0m Modificar Tramas      - \33[1;33m"
lg=`grep -n -m 1 '\<DisplayLevel\>' ~/MMDVMHost/MMDVMBM.ini`
lg1=`expr substr $lg 4 30`
echo "$lg1"

echo -n "\33[1;36m  20)\33[0m Modificar Slot1       - \33[1;33m"
sl=`grep -n -m 1 '\<Slot1\>' ~/MMDVMHost/MMDVMBM.ini`
sl1=`expr substr $sl 5 30`
echo "$sl1"

echo -n "\33[1;36m  21)\33[0m Display               - \33[1;33m"
mod=`grep -n -m 1 '\<Display\>' ~/MMDVMHost/MMDVMBM.ini`
mod1=`expr substr $mod 3 30`
echo "$mod1"

echo -n "\33[1;36m  22)\33[0m Modulo D-STAR         - \33[1;33m"
modu=`grep -n -m 1 '\<Module\>' ~/MMDVMHost/MMDVMBM.ini`
modu1=`expr substr $modu 4 30`
echo "$modu1"

echo -n "\33[1;36m  23)\33[0m Desactivar DMR        - \33[1;33m"
linea=`expr substr $idd 1 1`
linea=`expr $linea + 72`
linea3=$linea
letra=p
linea2=$linea$letra
var200= sed -n $linea2  ~/MMDVMHost/MMDVMBM.ini;

echo -n "\33[1;36m  24)\33[0m Coordenada Latitud    - \33[1;33m"
lat=`grep -n "Latitude" ~/MMDVMHost/MMDVMBM.ini`
lat1=`expr substr $lat 4 30`
echo "$lat1"

echo -n "\33[1;36m  25)\33[0m Coordenada Longitud   - \33[1;33m"
long=`grep -n "Longitude" ~/MMDVMHost/MMDVMBM.ini`
long1=`expr substr $long 4 30`
echo "$long1"

#echo -n "\33[1;36m  26)\33[0m Entra reflector DMR+  - \33[1;33m"
#OPCION=`expr substr $master 1 $largo1`
#OPCION=`expr $OPCION + 5`
#linea33port=$OPCION
#letra=p
#linea22port=$OPCION$letra
#var300port= sed -n $linea22port  ~/MMDVMHost/MMDVMBM.ini;

echo -n "\33[1;36m  27)\33[0m Modificar RXInvert    - \33[1;33m"
rxinv=`grep -n '\<RXInvert\>' ~/MMDVMHost/MMDVMBM.ini`
rxinv1=`expr substr $rxinv 4 30`
echo "$rxinv1"

echo ""
echo "\33[1;36m  28)\33[1;33m Abrir fichero MMDVMBM.ini para hacer cualquier cambio\33[1;33m"

echo "\33[1;36m  29)\33[1;37m Guardar  fichero de Configuración en M1 \33[1;36m"
echo -n "\33[1;36m  30)\33[1;32m Utilizar fichero de Configuración de M1: \33[1;36m"
reflector=`grep -n -m 1 '\<Address\>' ~/MMDVMHost/MMDVMBM.ini_copia`
reflector=`expr substr $reflector 13 40`
echo "$reflector"

echo "\33[1;36m  31)\33[1;37m Guardar  fichero de Configuración en M2: \33[1;36m"
echo -n "\33[1;36m  32)\33[1;32m Utilizar fichero de Configuración en M2: \33[1;36m"
reflector2=`grep -n -m 1 '\<Address\>' ~/MMDVMHost/MMDVMBM.ini_copia2`
reflector2=`expr substr $reflector2 13 40`
echo "$reflector2"

echo "\33[1;36m  33)\33[1;37m Guardar  fichero de Configuración en M3: \33[1;36m"
echo -n "\33[1;36m  34)\33[1;32m Utilizar fichero de Configuración en M3: \33[1;36m"
reflector3=`grep -n -m 1 '\<Address\>' ~/MMDVMHost/MMDVMBM.ini_copia3`
reflector3=`expr substr $reflector3 13 40`
echo "$reflector3"

echo ""
echo "\33[1;36m  35)\33[1;31m Recuperar el fichero original MMDVMBM.ini\33[1;33m"

echo ""
echo "\33[1;36m   0)\33[1;34m Salir del script \33[1;31m OJO!! no salir con ctrl+c ni con la x"
echo ""
echo -n "\33[1;36m   Elige una opción del 0 al 35: " 
read escoger_menu

case $escoger_menu in
1) echo ""
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
                          sed -i "$linea Callsign=$indicativo" ~/MMDVMHost/MMDVMBM.ini
			  break;;
			  [nN]* ) echo ""
			  break;;
esac
done;;
2) echo ""
while true
do
buscar=":"
largo=`expr index $rxf $buscar`
echo "Valor actual del RXFrequency: \33[1;33m${rxf#*=}\33[1;37m"

           	          read -p 'Introduce RXFrequency:        ' var2
                          letra=c
                          if [ $largo = 3 ]
                          then
                          linea=`expr substr $rxf 1 2`
                          else
                          linea=`expr substr $rxf 1 3`
                          fi
                          linea=$linea$letra
                          actualizar=S 
                          case $actualizar in
			  [sS]* ) echo ""
                              sed -i "$linea RXFrequency=$var2" ~/MMDVMHost/MMDVMBM.ini
			break;;
			[nN]* ) echo ""
			break;;
esac
done;;
3) echo ""
while true
do
buscar=":"
largo=`expr index $txf $buscar`
echo "Valor actual del TXFrequency: \33[1;33m${txf#*=}\33[1;37m"

           	          read -p 'Introduce TXFrequency:        ' var2
                          letra=c
                          if [ $largo = 3 ]
                          then
                          linea=`expr substr $txf 1 2`
                          else
                          linea=`expr substr $txf 1 3`
                          fi
                          linea=$linea$letra
                          actualizar=S 
                          case $actualizar in
			  [sS]* ) echo ""
                          sed -i "$linea TXFrequency=$var2" ~/MMDVMHost/MMDVMBM.ini
			  break;;
			  [nN]* ) echo ""
			  break;;
esac
done;;
4) echo ""
while true
do
buscar=":"
largo=`expr index $loca $buscar`
echo "Valor de la Ciudad: \33[1;33m${loca#*=}\33[1;37m"
           	          read -p 'Introduce tu Ciudad ' loc1
                          letra=c
                          if [ $largo = 3 ]
                          then
                          linea=`expr substr $loca 1 2`
                          else
                          linea=`expr substr $loca 1 3`
                          fi
                          linea=$linea$letra
                          actualizar=S 
                          case $actualizar in
			  [sS]* ) echo ""
			  loc1=`echo "$loc1" | tr -d '[[:space:]]'`
              sed -i "$linea Location=$loc1" ~/MMDVMHost/MMDVMBM.ini
			  break;;
			  [nN]* ) echo ""
			  break;;
esac
done;;
5) echo ""
while true
do
buscar=":"
largo=`expr index $url $buscar`
echo "Valor de  la  URL   Web: \33[1;33m${url#*=}\33[1;37m"
           	          read -p 'Introduce URL de tu Web: ' ur1
                          letra=c
                          if [ $largo = 3 ]
                          then
                          linea=`expr substr $url 1 2`
                          else
                          linea=`expr substr $url 1 3`
                          fi
                          linea=$linea$letra
                          actualizar=S 
                          case $actualizar in
			  [sS]* ) echo ""
			  ur1=`echo "$ur1" | tr -d '[[:space:]]'`
                          sed -i "$linea URL=$ur1" ~/MMDVMHost/MMDVMBM.ini
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
                          letra1=c
                          linea4=$linea33$letra1
                          sed -i "$linea4 Port=/dev/ttyACM0" ~/MMDVMHost/MMDVMBM.ini
			  break;;
			  [nN]* ) echo ""
			  break;;
esac
done;;
7) echo ""
while true
do
                          actualizar=S 
                          case $actualizar in
			  [sS]* ) echo ""
                          letra1=c
                          linea4=$linea33$letra1
                          sed -i "$linea4 Port=/dev/ttyACM1" ~/MMDVMHost/MMDVMBM.ini
			  break;;
			  [nN]* ) echo ""
			  break;;
esac
done;;
8) echo ""
while true
do
                          actualizar=S 
                          case $actualizar in
			  [sS]* ) echo ""
                          letra1=c
                          linea4=$linea33$letra1
                          sed -i "$linea4 Port=/dev/ttyUSB0" ~/MMDVMHost/MMDVMBM.ini
			  break;;
			  [nN]* ) echo ""
			  break;;
esac
done;;
9) echo ""
while true
do
                     
                          actualizar=S 
                          case $actualizar in
			  [sS]* ) echo ""
                          letra1=c
                          linea4=$linea33$letra1
                          sed -i "$linea4 Port=/dev/ttyUSB1" ~/MMDVMHost/MMDVMBM.ini
			  break;;
			  [nN]* ) echo ""
			  break;;
esac
done;;

10) echo ""
while true
do
buscar=":"
largo=`expr index $idd $buscar`
echo "Valor  actual  del Id: \33[1;33m${idd#*=}\33[1;37m"
           	          read -p 'Introduce un ID válido ' miid
                          letra=c
                          if [ $largo = 3 ]
                          then
                          linea=`expr substr $idd 1 1`
                          else
                          linea=`expr substr $idd 1 1`
                          fi
                          linea=$linea$letra
                          actualizar=S 
                          case $actualizar in
			  [sS]* ) echo ""
                          sed -i "$linea Id=$miid" ~/MMDVMHost/MMDVMBM.ini
			  break;;
			  [nN]* ) echo ""
			  break;;
esac
done;;
11) echo ""
while true
do
echo "   Valor actual del Master: \33[1;33m${master#*=}\33[1;37m"
echo "   Brandmeister=84.232.5.113 / DMR+=217.61.0.154:"
                      read -p '   Brandmeister=master.spain-dmr.es / DMR+=eaglobalmaster.xreflector.es: ' master1
                          actualizar=S 
                          case $actualizar in
                    [sS]* ) echo ""
                    master1=`echo "$master1" | tr -d '[[:space:]]'`
                    letra=c            
linea=$largo$letra
                          sed -i "$linea Address=$master1" ~/MMDVMHost/MMDVMBM.ini
                          
                         
                          
        break;;
        [nN]* ) echo ""
        break;;
esac
done;;
12) echo ""
while true
do
                          echo -n "Valor actual del \33[1;37m${var100port#*=}\33[1;37m"
                          var100port= sed -n $linea2port  ~/MMDVMHost/MMDVMBM.ini;
                      read -p 'Puerto para Brandmeister=62031 puerto para DMR+=55555 : ' miid
                          actualizar=S 
                          case $actualizar in
        [sS]* ) echo ""
                          letra1=c
                          linea4=$linea3port$letra1
                          sed -i "$linea4 Port=$miid" ~/MMDVMHost/MMDVMBM.ini
        break;;
        [nN]* ) echo ""
        break;;
esac
done;;
13) echo ""
while true
do
buscar=":"
largo=`expr index $pas $buscar`
   echo "   Valor actual del Password: \33[1;33m${pas#*=}\33[1;37m"
read -p '   Introduce el password que corresponda: ' pas1
                          letra=c
                          if [ $largo = 3 ]
                          then
                          linea=`expr substr $pas 1 2`
                          else
                          linea=`expr substr $pas 1 3`
                          fi
                          linea=$linea$letra
                          actualizar=S 
                          case $actualizar in
			              [sS]* ) echo ""
			              pas1=`echo "$pas1" | tr -d '[[:space:]]'`
                          sed -i "$linea Password=$pas1" ~/MMDVMHost/MMDVMBM.ini
			  break;;
			  [nN]* ) echo ""
			  break;;
esac
done;;
14) echo ""
while true
do
buscar=":"
largo=`expr index $txinv $buscar`
echo "Valor  actual del  TXInvert: \33[1;33m${txinv#*=}\33[1;37m"
           	          read -p 'Valor óptimo para DVMEGA=1 : ' txinv1
                          letra=c
                         if [ $largo = 3 ]
                          then
                          linea=`expr substr $txinv 1 2`
                          else
                          linea=`expr substr $txinv 1 3`
                          fi
                          linea=$linea$letra
                          actualizar=S 
                          case $actualizar in
			  [sS]* ) echo ""
                          sed -i "$linea TXInvert=$txinv1" ~/MMDVMHost/MMDVMBM.ini
			  break;;
			  [nN]* ) echo ""
			  break;;
esac
done;;
15) echo ""
while true
do
buscar=":"
largo=`expr index $rx $buscar`
echo "Valor  actual  del  RXLevel : \33[1;33m${rx#*=}\33[1;37m"
           	          read -p 'Valor óptimo para DVMEGA=45 : ' var2
                          letra=c
                          if [ $largo = 3 ]
                          then
                          linea=`expr substr $rx 1 2`
                          else
                          linea=`expr substr $rx 1 3`
                          fi
                          linea=$linea$letra
                          actualizar=S 
                          case $actualizar in
			  [sS]* ) echo ""
                          sed -i "$linea RXLevel=$var2" ~/MMDVMHost/MMDVMBM.ini
			  break;;
			  [nN]* ) echo ""
			  break;;
esac
done;;
16) echo ""
while true
do
buscar=":"
largo=`expr index $tx $buscar`
echo "Valor  actual  del  TXLevel : \33[1;33m${tx#*=}\33[1;37m"
           	          read -p 'Valor óptimo para DVMEGA=50 : ' var2
                          letra=c
                          if [ $largo = 3 ]3
                          then
                          linea=`expr substr $tx 1 2`
                          else
                          linea=`expr substr $tx 1 3`
                          fi
                          linea=$linea$letra
                          actualizar=S 
                          case $actualizar in
			  [sS]* ) echo ""
                          sed -i "$linea TXLevel=$var2" ~/MMDVMHost/MMDVMBM.ini
			  break;;
			  [nN]* ) echo ""
			  break;;
esac
done;;
17) echo ""
while true
do
buscar=":"
largo=`expr index $dup $buscar`
echo "Valor actual del Duplex: \33[1;33m${dup#*=}\33[1;37m"
           	          read -p 'Para un repetidor Duplex=1 Para un DVMEGA Duplex=0: ' dup1
                          letra=c
                          if [ $largo = 3 ]
                          then
                          linea=`expr substr $dup 1 1`
                          else
                          linea=`expr substr $dup 1 1`
                          fi
                          linea=$linea$letra
                          actualizar=S 
                          case $actualizar in
			  [sS]* ) echo ""
                          sed -i "$linea Duplex=$dup1" ~/MMDVMHost/MMDVMBM.ini
			  break;;
			  [nN]* ) echo ""
			  break;;
esac
done;;
18) echo ""
while true
do
buscar=":"
largo=`expr index $txh $buscar`
echo "Valor actual del TXHang: \33[1;33m${txh#*=}\33[1;37m"
           	          read -p 'Para un repetidor TXHang=4 Para un DVMEGA TXHang=0: ' txh1
                          letra=c
                          if [ $largo = 3 ]
                          then
                          linea=`expr substr $txh 1 2`
                          else
                          linea=`expr substr $txh 1 3`
                          fi
                          linea=$linea$letra
                          actualizar=S 
                          case $actualizar in
			  [sS]* ) echo ""
                          sed -i "$linea TXHang=$txh1" ~/MMDVMHost/MMDVMBM.ini
			  break;;
			  [nN]* ) echo ""
			  break;;
esac
done;;
19) echo ""
while true
do
buscar=":"
largo=`expr index $lg $buscar`
echo "Valor actual del DisplayLevel: \33[1;33m${lg#*=}\33[1;37m"
           	     read -p 'Para visualizar tramas seguidas introduce 1, para una sola trama introduce 2:' lg1
                          letra=c
                          if [ $largo = 3 ]
                          then
                          linea=`expr substr $lg 1 2`
                          else
                          linea=`expr substr $lg 1 3`
                          fi
                          linea=$linea$letra
                          actualizar=S 
                          case $actualizar in
			  [sS]* ) echo ""
                          sed -i "$linea DisplayLevel=$lg1" ~/MMDVMHost/MMDVMBM.ini
			  break;;
			  [nN]* ) echo ""
			  break;;
esac
done;;
20) echo ""
while true
do

sl=`grep -n -m 1 -c '\<Slot1\>' ~/MMDVMHost/MMDVMBM.ini`
if [ $sl = 0 ]; then
echo "no existe este comando"
else
sl=`grep -n -m 1 '\<Slot1\>' ~/MMDVMHost/MMDVMBM.ini`
sl1=`expr substr $sl 5 30`
echo "$sl1"
fi



buscar=":"
largo=`expr index $sl $buscar`
echo "Valor actual del Slot1=: \33[1;33m${sl#*=}\33[1;37m"
           	          read -p 'Para DVMEGA Modificar el valor del Slot1=0: ' V
                          letra=c
                          if [ $largo = 3 ]
                          then
                          linea=`expr substr $sl 1 2`
                          else
                          linea=`expr substr $sl 1 3`
                          fi
                          linea=$linea$letra
                          actualizar=S 
                          case $actualizar in                                            
			              [sS]* ) echo ""
			              V=`echo "$V" | tr -d '[[:space:]]'`			  
                          sed -i "$linea Slot1=$V" ~/MMDVMHost/MMDVMBM.ini
              
			  break;;
			  [nN]* ) echo ""
			  break;;
esac
done;;
21) echo ""
while true
do
buscar=":"
largo=`expr index $mod $buscar`
echo "$largo"
read a
echo "Valor  actual  del  Display: \33[1;33m${mod#*=}\33[1;37m"
                      read -p 'Nextion, OLED: '  modu1
                          letra=c
                         if [ $largo = 3 ]
                          then
                          linea=`expr substr $mod 1 2`
                          else
                          linea=`expr substr $mod 1 3`
                          fi
                          linea=$linea$letra
                          actualizar=S 
                          case $actualizar in
        [sS]* ) echo ""
                          sed -i "$linea Display=$modu1" ~/MMDVMHost/MMDVMBM.ini
        break;;
        [nN]* ) echo ""
        break;;
esac
done;;
22) echo ""
while true
do
buscar=":"
largo=`expr index $modu $buscar`
echo "Valor  actual  del  Module: \33[1;33m${modu#*=}\33[1;37m"
           	          read -p 'Valor óptimo para D-STAR=B: '  modu1
                          letra=c
                         if [ $largo = 3 ]
                          then
                          linea=`expr substr $modu 1 2`
                          else
                          linea=`expr substr $modu 1 3`
                          fi
                          linea=$linea$letra
                          actualizar=S 
                          case $actualizar in
			  [sS]* ) echo ""
                          sed -i "$linea Module=$modu1" ~/MMDVMHost/MMDVMBM.ini
			  break;;
			  [nN]* ) echo ""
			  break;;
esac
done;;
23) echo ""
while true
do
echo -n "Valor  actual  del \33[1;33m${var200#*=}\33[1;37m"
                          var100= sed -n $linea2  ~/MMDVMHost/MMDVMBM.ini;
           	              read -p 'Desactivado=0 Activado=1: '   dmrac1
                          actualizar=S 
                          case $actualizar in
			              [sS]* ) echo ""
                          letra1=c
                          linea4=$linea3$letra1
                          sed -i "$linea4 Enable=$dmrac1" ~/MMDVMHost/MMDVMBM.ini
			              break;;
			              [nN]* ) echo ""
			              break;;
esac
done;;


24) echo ""
while true
do
buscar=":"
largo=`expr index $lat $buscar`
echo "Valor de la Latitud: \33[1;33m${lat#*=}\33[1;37m"
           	          read -p 'Introduce la Latitud ' lat1
                          letra=c
                          if [ $largo = 3 ]
                          then
                          linea=`expr substr $lat 1 2`
                          else
                          linea=`expr substr $lat 1 3`
                          fi
                          linea=$linea$letra
                          actualizar=S 
                          case $actualizar in
			  [sS]* ) echo ""
                          sed -i "$linea Latitude=$lat1" ~/MMDVMHost/MMDVMBM.ini
			  break;;
			  [nN]* ) echo ""
			  break;;
esac
done;;

25) echo ""
while true
do
buscar=":"
largo=`expr index $long $buscar`
echo "Valor de la Longitud: \33[1;33m${long#*=}\33[1;37m"
           	          read -p 'Introduce la Longitud ' long1
                          letra=c
                          if [ $largo = 3 ]
                          then
                          linea=`expr substr $long 1 2`
                          else
                          linea=`expr substr $long 1 3`
                          fi
                          linea=$linea$letra
                          actualizar=S 
                          case $actualizar in
			  [sS]* ) echo ""
                          sed -i "$linea Longitude=$long1" ~/MMDVMHost/MMDVMBM.ini
			  break;;
			  [nN]* ) echo ""
			  break;;
esac
done;;
26) echo ""
while true
do
              read -p 'Estas en DMR+ ? S/N ' actualizar     
           	 
                          
                          case $actualizar in
			  [sS]* ) echo ""
			   read -p 'Intruduce reflector DMR+ al que se conectara (ej:4370) ' opcion
                          letra1=c
                          linea4=$linea33port$letra1
                          sed -i "$linea4 Options=StartRef=$opcion;RelinkTime=10;" ~/MMDVMHost/MMDVMBM.ini
			  break;;
			  [nN]* ) echo ""
			  letra1=c
                          linea4=$linea33port$letra1
			  sed -i "$linea4 #Options=StartRef=4370;RelinkTime=10;" ~/MMDVMHost/MMDVMBM.ini
			  break;;
esac
done;;
27) echo ""
while true
do
buscar=":"
largo=`expr index $rxinv $buscar`
echo "Valor  actual del  RXInvert: \33[1;33m${rxinv#*=}\33[1;37m"
                      read -p 'Valor óptimo para Motorola=0 para otras=1 : ' rxinv11
                          letra=c
                         if [ $largo = 3 ]
                          then
                          linea=`expr substr $rxinv 1 2`
                          else
                          linea=`expr substr $rxinv 1 3`
                          fi
                          linea=$linea$letra
                          actualizar=S 
                          case $actualizar in
        [sS]* ) echo ""
                          sed -i "$linea RXInvert=$rxinv11" ~/MMDVMHost/MMDVMBM.ini
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
                              sudo pluma ~/MMDVMHost/MMDVMBM.ini
			                        break;;
			                        [nN]* ) echo ""
			                        break;;
esac
done;;
29) echo ""
while true
do      	        
                        actualizar=S 
                        case $actualizar in
			                  [sS]* ) echo ""
                        clear
                        echo "<<<<<< Haciendo copia de seguridad de la M1 >>>>>"
                        sleep 3
                        sudo cp -f ~/MMDVMHost/MMDVMBM.ini ~/MMDVMHost/MMDVMBM.ini_copia
			break;;
			[nN]* ) echo ""
			break;;
esac
done;;
30) echo ""
while true
do
          	        
           	            #read -p 'Quieres Recuperar el  fichero de Configuración Brandmeister Spain S/N ' restaurar   
                        actualizar=S 
                        case $actualizar in
			                  [sS]* ) echo ""
                        clear
                        echo "<<<<<< Restaurando copia de seguridad de la M1 >>>>>"
                        sleep 3
                        sudo cp -f ~/MMDVMHost/MMDVMBM.ini_copia ~/MMDVMHost/MMDVMBM.ini
			break;;
			[nN]* ) echo ""
			break;;
esac
done;;
31) echo ""
while true
do
          	        
           	            #read -p 'Quieres Guardar el fichero de Configuración Brandmeister (1) ? S/N ' copia   
                        actualizar=S 
                        case $actualizar in
			                  [sS]* ) echo ""
                        clear
                        echo "<<<<<< Haciendo copia de seguridad de la M2  >>>>>"
                        sleep 3
                        sudo cp -f ~/MMDVMHost/MMDVMBM.ini ~/MMDVMHost/MMDVMBM.ini_copia2
                        #sed -i "2c $master1" ~/V30/info_MMDVMBM.ini
			break;;
			[nN]* ) echo ""
			break;;
esac
done;;
32) echo ""
while true
do
          	        
           	            #read -p 'Quieres Recuperar el fichero de Configuración Brandmeister (1) ? S/N ' restaurar   
                        actualizar=S 
                        case $actualizar in
			                  [sS]* ) echo ""
                        clear
                        echo "<<<<<< Restaurando copia de seguridad de la M2>>>>>"
                        sleep 3
                        sudo cp -f ~/MMDVMHost/MMDVMBM.ini_copia2 ~/MMDVMHost/MMDVMBM.ini
			break;;
			[nN]* ) echo ""
			break;;
esac
done;;
33) echo ""
while true
do
          	        
           	            #read -p 'Quieres Guardar otro fichero de Configuración Brandmeister (2) ? S/N ' copia   
                        actualizar=S 
                        case $actualizar in
			                  [sS]* ) echo ""
                        clear
                        echo "<<<<<< Haciendo copia de seguridad de la M3>>>>>"
                        sleep 3
                        sudo cp -f ~/MMDVMHost/MMDVMBM.ini ~/MMDVMHost/MMDVMBM.ini_copia3
                        #sed -i "3c $master1" ~/V30/info_MMDVMBM.ini
			break;;
			[nN]* ) echo ""
			break;;
esac
done;;
34) echo ""
while true
do
          	        
           	            #read -p 'Quieres Recuperar otro fichero de Configuración Brandmeister (2) ? S/N ' restaurar   
                        actualizar=S 
                        case $actualizar in
			                  [sS]* ) echo ""
                        clear
                        echo "<<<<<< Restaurando copia de seguridad de la M3 >>>>>"
                        sleep 3
                        sudo cp -f ~/MMDVMHost/MMDVMBM.ini_copia3 ~/MMDVMHost/MMDVMBM.ini
			break;;
			[nN]* ) echo ""
			break;;
esac
done;;
35) echo ""
while true
do
          	        
           	            read -p 'Quieres restaurar el fichero original MMDVM.ini? S/N ' restaurar1   
                        case $restaurar1 in
			                  [sS]* ) echo ""
                        clear
                        echo "<<<<<< Restaurando el fichero original MMDVMBM.ini >>>>>"
                        sleep 3
                        sudo cp -f ~/MMDVMHost/MMDVM.ini_original ~/MMDVMHost/MMDVMBM.ini
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

