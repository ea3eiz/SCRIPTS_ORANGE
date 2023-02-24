﻿#!/bin/bash
while true
do
clear
                  # Datos para el panel de control
                  indi=$(awk "NR==2" /home/orangepi/MMDVMHost/MMDVMBM.ini)
                  sed -i "1c $indi" /home/orangepi/info_panel_control.ini
                  ide=$(awk "NR==3" /home/orangepi/MMDVMHost/MMDVMBM.ini)
                  sed -i "2c $ide" /home/orangepi/info_panel_control.ini
                  frec=$(awk "NR==13" /home/orangepi/MMDVMHost/MMDVMBM.ini)
                  sed -i "3c $frec" /home/orangepi/info_panel_control.ini
master=`grep -n -m 1 "^Address=" /home/orangepi/MMDVMHost/MMDVMBM.ini`
buscar=":"
largo=`expr index $master $buscar`
largo=`expr $largo + 1`
largo1=`expr $largo - 2`
largo=`expr substr $master 1 $largo1`
letra=c            
linea_master=$largo$letra
master=$(awk "NR==$linea_master" /home/orangepi/MMDVMHost/MMDVMBM.ini)
                  sed -i "4c $master" /home/orangepi/info_panel_control.ini

ROJO="\033[1;31m"
VERDE="\033[1;32m"
BLANCO="\033[1;37m"
AMARILLO="\033[1;33m"
CIAN="\033[1;36m"
GRIS="\033[0m"
echo "${VERDE}"
echo "\33[1;32m   *${ROJO} V.02.07.05 ${VERDE}*************************************************************"
echo "   *           Script para Modificar MMDVMBM.ini    \33[1;31m by EA3EIZ & EA4AOJ\33[1;32m     *"
echo "   **************************************************************************"
echo -n "\33[1;36m   1)\33[0m Modificar indicativo  - \33[1;33m"
ind=`grep -n -m 1 "Callsign" /home/orangepi/MMDVMHost/MMDVMBM.ini`
ind1=`expr substr $ind 3 30`
echo "$ind1"

echo -n "\33[1;36m   2)\33[0m Modificar RXFrequency - \33[1;33m"
rxf=`grep -n "RXFrequency" /home/orangepi/MMDVMHost/MMDVMBM.ini`
rxf1=`expr substr $rxf 4 30`
echo "$rxf1"

echo -n "\33[1;36m   3)\33[0m Modificar TXFrequency - \33[1;33m"
txf=`grep -n "TXFrequency" /home/orangepi/MMDVMHost/MMDVMBM.ini`
txf1=`expr substr $txf 4 30`
echo "$txf1"

echo -n "${CIAN}   4)${GRIS} Modificar Location    - ${AMARILLO}"
loc=`grep -n "^Location=" /home/orangepi/MMDVMHost/MMDVMBM.ini`
loc1=`echo "$loc" | tr -d '[[:space:]]'`
buscar=":"
largo_linea=`expr index $loc1 $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea=`expr substr $loc1 1 $largo_linea`
letrac=c
numero_linea_letrac=$numero_linea$letrac
contenido_location=$(awk "NR==$numero_linea" /home/orangepi/MMDVMHost/MMDVMBM.ini)
echo "$contenido_location"

echo -n "\33[1;36m   5)\33[0m Modificar URL         - \33[1;33m"
url=`grep -n "URL" /home/orangepi/MMDVMHost/MMDVMBM.ini`
url1=`expr substr $url 4 30`
echo "$url1"

echo "\33[1;36m   6)\33[0m Utilizar puerto interno (ttyS3)\33[1;33m"
echo "\33[1;36m   7)\33[0m Utilizar puerto USB (ttyACM0)\33[1;33m"
echo "\33[1;36m   8)\33[0m Utilizar puerto USB (ttyACM1)\33[1;33m"
echo "\33[1;36m   9)\33[0m Utilizar puerto USB (ttyUSB0)\33[1;33m"
echo -n "                            - "

mode=`grep -n -m 1 "^Port=" /home/orangepi/MMDVMHost/MMDVMBM.ini`
buscar=":"
caracteres=`expr index $mode $buscar`
caracteres_linea=`expr $caracteres - 1`
numero_linea_port=`expr substr $mode 1 $caracteres_linea`
mode=$(awk "NR==$numero_linea_port" /home/orangepi/MMDVMHost/MMDVMBM.ini)
echo "$mode"

echo -n "\33[1;36m  10)\33[0m Modificar ID          - \33[1;33m"
idd=`grep -n "Id=" /home/orangepi/MMDVMHost/MMDVMBM.ini`
idd1=`expr substr $idd 3 30`
echo "$idd1"

echo -n "\33[1;36m  11)\33[0m Modificar Address     - \33[1;33m"
master=`grep -n -m 1 "^Address=" /home/orangepi/MMDVMHost/MMDVMBM.ini`
buscar=":"
largo=`expr index $master $buscar`
largo=`expr $largo + 1`
largo1=`expr $largo - 2`
master1=`expr substr $master $largo 40`
largo=`expr substr $master 1 $largo1`
letra=c            
linea_master=$largo$letra
echo "$master1"

echo -n "\33[1;36m  12)\33[0m Modificar Puerto      - \33[1;33m"
lineaport=`expr substr $master 1 $largo1`
lineaport=`expr $lineaport + 1`
linea3port=$lineaport
letra=p
linea2port=$lineaport$letra
var100port= sed -n $linea2port  /home/orangepi/MMDVMHost/MMDVMBM.ini;

echo -n "\33[1;36m  13)\33[0m Modificar Password    - \33[1;33m"
pas=`grep -n '\<Password\>' /home/orangepi/MMDVMHost/MMDVMBM.ini`
pas1=`expr substr $pas 5 30`
echo "$pas1"

echo -n "\33[1;36m  14)\33[0m Modificar TXInvert    - \33[1;33m"
txinv=`grep -n '\<TXInvert\>' /home/orangepi/MMDVMHost/MMDVMBM.ini`
txinv1=`expr substr $txinv 4 30`
echo -n "$txinv1"

echo -n "\33[1;36m      a)\33[0m D-STAR      - \33[1;33m"
dstar=`grep -n "\[D-Star\]" /home/orangepi/MMDVMHost/MMDVMBM.ini` # devuelve ejem: 74:Enable=1
buscar=":"
largo_linea=`expr index $dstar $buscar` #comprueba el largo incluyendo los dos puntos (:)
largo_linea=`expr $largo_linea - 1` #comprueba el largo quitando los dos puntos (:)
numero_linea=`expr substr $dstar 1 $largo_linea` # recoge el numero de linea (74)
numero_linea_dstar=`expr $numero_linea + 1` # y le suma uno qudando coomo: (75)
letra=p
numero_linea_dstar_letrap=$numero_linea_dstar$letra #crea 74p
letrac=c
numero_linea_dstar_letrac=$numero_linea_dstar$letrac #crea 74c
presentar_valo= sed -n $numero_linea_dstar_letrap  /home/orangepi/MMDVMHost/MMDVMBM.ini; #presenta el valor en pantalla

echo -n "\33[1;36m  15)\33[0m Modificar RXLevel     - \33[1;33m"
rx=`grep -n '\<RXLevel\>' /home/orangepi/MMDVMHost/MMDVMBM.ini`
rx1=`expr substr $rx 4 30`
echo -n "$rx1"

echo -n "\33[1;36m      b)\33[0m DMR         - \33[1;33m"
dmr=`grep -n "\[DMR\]" /home/orangepi/MMDVMHost/MMDVMBM.ini` # devuelve ejem: 74:Enable=1
buscar=":"
largo_linea=`expr index $dmr $buscar` #comprueba el largo incluyendo los dos puntos (:)
largo_linea=`expr $largo_linea - 1` #comprueba el largo quitando los dos puntos (:)
numero_linea=`expr substr $dmr 1 $largo_linea` # recoge el numero de linea (74)
numero_linea_dmr=`expr $numero_linea + 1` # y le suma uno qudando coomo: (75)
letra=p
numero_linea_dmr_letrap=$numero_linea_dmr$letra #crea 74p
letrac=c
numero_linea_dmr_letrac=$numero_linea_dmr$letrac #crea 74c
presentar_valor= sed -n $numero_linea_dmr_letrap  /home/orangepi/MMDVMHost/MMDVMBM.ini; #presenta el valor en pantalla

echo -n "\33[1;36m  16)\33[0m Modificar TXLevel     - \33[1;33m"
tx=`grep -n -m 1 '\<TXLevel\>' /home/orangepi/MMDVMHost/MMDVMBM.ini`
tx1=`expr substr $tx 4 30`
echo -n "$tx1"

echo -n "\33[1;36m      c)\33[0m FUSION      - \33[1;33m"
fusion=`grep -n "LowDeviation" /home/orangepi/MMDVMHost/MMDVMBM.ini` # devuelve ejem: 74:Enable=1
buscar=":"
largo_linea=`expr index $fusion $buscar` #comprueba el largo incluyendo los dos puntos (:)
largo_linea=`expr $largo_linea - 1` #comprueba el largo quitando los dos puntos (:)
numero_linea=`expr substr $fusion 1 $largo_linea` # recoge el numero de linea ejemplo (74)
numero_linea_fusion=`expr $numero_linea - 1` # y le resta uno quedando como: ejemplo (73)
letra=p
numero_linea_fusion_letrap=$numero_linea_fusion$letra #crea 74p
letrac=c
numero_linea_fusion_letrac=$numero_linea_fusion$letrac #crea 74c
presentar_valor= sed -n $numero_linea_fusion_letrap  /home/orangepi/MMDVMHost/MMDVMBM.ini; #presenta el valor en pantalla

echo -n "\33[1;36m  17)\33[0m Modificar Duplex      - \33[1;33m"
dup=`grep -n -m 1 '\<Duplex\>' /home/orangepi/MMDVMHost/MMDVMBM.ini`
dup1=`expr substr $dup 3 30`
echo -n "$dup1"


echo -n "\33[1;36m        d)\33[0m P25         - \33[1;33m"
p25=`grep -n "\[P25\]" /home/orangepi/MMDVMHost/MMDVMBM.ini` # devuelve ejem: 74:Enable=1
buscar=":"
largo_linea=`expr index $p25 $buscar` #comprueba el largo incluyendo los dos puntos (:)
largo_linea=`expr $largo_linea - 1` #comprueba el largo quitando los dos puntos (:)
numero_linea=`expr substr $p25 1 $largo_linea` # recoge el numero de linea (74)
numero_linea_p25=`expr $numero_linea + 1` # y le suma uno qudando coomo: (75)
letra=p
numero_linea_p25_letrap=$numero_linea_p25$letra #crea 74p
letrac=c
numero_linea_p25_letrac=$numero_linea_p25$letrac #crea 74c
presentar_valor= sed -n $numero_linea_p25_letrap  /home/orangepi/MMDVMHost/MMDVMBM.ini; #presenta el valor en pantalla

echo -n "\33[1;36m  18)\33[0m Modificar TXHang      - \33[1;33m"
txh=`grep -n -m 1 '\<TXHang\>' /home/orangepi/MMDVMHost/MMDVMBM.ini`
txh1=`expr substr $txh 5 30`
echo -n "$txh1"

echo -n "\33[1;36m        e)\33[0m Baliza      - \33[1;33m"
cw= sed -n "31p"  /home/orangepi/MMDVMHost/MMDVMBM.ini; #presenta el valor en pantalla

echo -n "\33[1;36m  19)\33[0m Modificar Tramas      - \33[1;33m"
lg=`grep -n -m 1 '\<DisplayLevel\>' /home/orangepi/MMDVMHost/MMDVMBM.ini`
lg1=`expr substr $lg 4 30`
echo -n "$lg1"

echo -n "\33[1;36m  f)\33[0m RFModeHang  - \33[1;33m"
modehang=`grep -n -m 1 -c '\<RFModeHang\>' /home/orangepi/MMDVMHost/MMDVMBM.ini`
if [ $modehang = 0 ]; then
echo "\33[1;31mEsta versión MMDVMHost no trae este parámetro"
else
modehang=`grep -n -m 1 '\<RFModeHang\>' /home/orangepi/MMDVMHost/MMDVMBM.ini`
modehang1=`expr substr $modehang 3 30`
echo "$modehang1"
fi

echo -n "\33[1;36m  20)\33[0m Modificar Slot1       - \33[1;33m"
sl=`grep -n -m 1 '\<Slot1\>' /home/orangepi/MMDVMHost/MMDVMBM.ini`
sl1=`expr substr $sl 5 30`
echo -n "$sl1"

echo -n "\33[1;36m         g)\33[0m Timeout     - \33[1;33m"
timeo=`grep -n -m 1 -c '\<Timeout\>' /home/orangepi/MMDVMHost/MMDVMBM.ini`
if [ $timeo = 0 ]; then
echo "\33[1;31mEsta versión MMDVMHost no trae este parámetro"
else
timeo=`grep -n -m 1 '\<Timeout\>' /home/orangepi/MMDVMHost/MMDVMBM.ini`
timeo1=`expr substr $timeo 3 30`
echo "$timeo1"
fi

echo -n "\33[1;36m  21)\33[0m Tipo Pantalla Display - \33[1;33m"
Display=`grep -n -m 1 -c '\<Display\>' /home/orangepi/MMDVMHost/MMDVMBM.ini`
if [ $Display = 0 ]; then
echo "\33[1;31mEsta versión MMDVMHost no trae este parámetro"
else
Display=`grep -n -m 1 '\<Display\>' /home/orangepi/MMDVMHost/MMDVMBM.ini`
Display1=`expr substr $Display 3 30`
echo -n "$Display1"
fi

var=`grep -n -m 1 "\[Nextion\]" /home/orangepi/MMDVMHost/MMDVMBM.ini`
#var1=`grep -m 1 "\[Nextion\]" /home/orangepi/MMDVMHost/MMDVMBM.ini`
buscar=":"
largo_linea=`expr index $var $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea=`expr substr $var 1 $largo_linea`
numero_linea=`expr $numero_linea + 2` # y le suma uno qudando coomo: (75)
MODEMNEXTION=$(awk "NR==$numero_linea" /home/orangepi/MMDVMHost/MMDVMBM.ini)
letra=c
linea_sed_MN=$numero_linea$letra
echo " ${CIAN}h) ${GRIS}Port Nextion- ${AMARILLO}$MODEMNEXTION"

echo -n "\33[1;36m  22)\33[0m Version Display       - \33[1;33m"
ScreenLayout=`grep -n -m 1 -c '\<ScreenLayout\>' /home/orangepi/MMDVMHost/MMDVMBM.ini`
if [ $ScreenLayout = 0 ]; then
echo "\33[1;31mEsta versión MMDVMHost no trae este parámetro"
else
ScreenLayout=`grep -n -m 1 '\<ScreenLayout\>' /home/orangepi/MMDVMHost/MMDVMBM.ini`
ScreenLayout1=`expr substr $ScreenLayout 5 30`
echo -n "$ScreenLayout1"
fi

# i) NXDN Enable=
var=`grep -n -m 1 "\[NXDN\]" /home/orangepi/MMDVMHost/MMDVMBM.ini`
buscar=":"
largo_linea=`expr index $var $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea=`expr substr $var 1 $largo_linea`
numero_linea=`expr $numero_linea + 1` # Se le suma 1 al número de linea
NXDN=$(awk "NR==$numero_linea" /home/orangepi/MMDVMHost/MMDVMBM.ini)
letra=c
linea_sed_NXDN=$numero_linea$letra
echo "  ${CIAN}i) ${GRIS}NXDN        - ${AMARILLO}$NXDN"

# 23) Brightness=
var=`grep -n -m 1 "\[Nextion\]" /home/orangepi/MMDVMHost/MMDVMBM.ini`
buscar=":"
largo_linea=`expr index $var $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea=`expr substr $var 1 $largo_linea`
numero_linea=`expr $numero_linea + 3` # Se le suma 3 al número de linea
Brightness=$(awk "NR==$numero_linea" /home/orangepi/MMDVMHost/MMDVMBM.ini)
letra=c
linea_sed_Brightness=$numero_linea$letra
echo -n "  ${CIAN}23) ${GRIS}Brillo Display Nextion- ${AMARILLO}$Brightness"

# j) POCSAG Enable=
var=`grep -n -m 1 "\[POCSAG\]" /home/orangepi/MMDVMHost/MMDVMBM.ini`
buscar=":"
largo_linea=`expr index $var $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea=`expr substr $var 1 $largo_linea`
numero_linea=`expr $numero_linea + 1` # Se le suma 1 al número de linea
POCSAG=$(awk "NR==$numero_linea" /home/orangepi/MMDVMHost/MMDVMBM.ini)
letra=c
linea_sed_POCSAG=$numero_linea$letra
echo "  ${CIAN} j) ${GRIS}POCSAG      - ${AMARILLO}$POCSAG"

# 24) Latitude=
echo -n "\33[1;36m  24)\33[0m Coordenada Latitud    - \33[1;33m"
lat=`grep -n "Latitude" /home/orangepi/MMDVMHost/MMDVMBM.ini`
lat1=`expr substr $lat 4 30`
echo "$lat1"

# 25) Longitude=
echo -n "\33[1;36m  25)\33[0m Coordenada Longitud   - \33[1;33m"
long=`grep -n "Longitude" /home/orangepi/MMDVMHost/MMDVMBM.ini`
long1=`expr substr $long 4 30`
echo "$long1"

echo -n "\33[1;36m  26)\33[0m Modulo D-STAR         - \33[1;33m"
modu=`grep -n -m 1 '\<Module\>' /home/orangepi/MMDVMHost/MMDVMBM.ini`
modu1=`expr substr $modu 4 30`
echo "$modu1"

echo -n "\33[1;36m  27)\33[0m Entra reflector DMR+  - \33[1;33m"
OPCION=`expr substr $pas 1 $largo1`
OPCION=`expr $OPCION + 1`
linea33port=$OPCION
letra=p
linea22port=$OPCION$letra
var300port= sed -n $linea22port  /home/orangepi/MMDVMHost/MMDVMBM.ini;

echo ""
echo "\33[1;36m  28)\33[1;33m Abrir fichero MMDVMBM.ini para hacer cualquier cambio\33[1;33m"
echo "\33[1;36m  29)\33[1;37m Guardar  fichero de Configuración en M1 \33[1;36m"
echo -n "\33[1;36m  30)\33[1;32m Utilizar fichero de Configuración de M1: \33[1;36m"
master=`grep -n -m 1 "^Address=" /home/orangepi/MMDVMHost/MMDVMBM.ini_copia`
buscar=":"
largo=`expr index $master $buscar`
largo=`expr $largo + 9`
copia1=`expr substr $master $largo 40`
echo "$copia1"

echo "\33[1;36m  31)\33[1;37m Guardar  fichero de Configuración en M2: \33[1;36m"
echo -n "\33[1;36m  32)\33[1;32m Utilizar fichero de Configuración en M2: \33[1;36m"
master=`grep -n -m 1 "^Address=" /home/orangepi/MMDVMHost/MMDVMBM.ini_copia2`
buscar=":"
largo=`expr index $master $buscar`
largo=`expr $largo + 9`
copia2=`expr substr $master $largo 40`
echo "$copia2"

echo "\33[1;36m  33)\33[1;37m Guardar  fichero de Configuración en M3: \33[1;36m"
echo -n "\33[1;36m  34)\33[1;32m Utilizar fichero de Configuración en M3: \33[1;36m"
master=`grep -n -m 1 "^Address=" /home/orangepi/MMDVMHost/MMDVMBM.ini_copia3`
buscar=":"
largo=`expr index $master $buscar`
largo=`expr $largo + 9`
copia3=`expr substr $master $largo 40`
echo "$copia3"

echo ""
echo "\33[1;36m  35)\33[1;31m Recuperar el fichero original MMDVMBM.ini\33[1;33m"

echo ""
echo "\33[1;36m   0)\33[1;34m Salir del script \33[1;31m OJO!! no salir con ctrl+c ni con la x"
echo ""
echo -n "\33[1;36m   Elige una opción: " 
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
#Convierte indicativo si se introduce en minúsculas a Mayúsculas
indicativo=`echo "$indicativo" | tr [:lower:] [:upper:]`

			              indicativo=`echo "$indicativo" | tr -d '[[:space:]]'`
                          sed -i "$linea Callsign=$indicativo" /home/orangepi/MMDVMHost/MMDVMBM.ini

indi=$(awk "NR==2" /home/orangepi/MMDVMHost/MMDVMBM.ini)
sed -i "1c $indi" /home/orangepi/info_panel_control.ini

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
                              sed -i "$linea RXFrequency=$var2" /home/orangepi/MMDVMHost/MMDVMBM.ini

frec=$(awk "NR==13" /home/orangepi/MMDVMHost/MMDVMBM.ini)
sed -i "3c $frec" /home/orangepi/info_panel_control.ini


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
                          sed -i "$linea TXFrequency=$var2" /home/orangepi/MMDVMHost/MMDVMBM.ini
			  break;;
			  [nN]* ) echo ""
			  break;;
esac
done;;
4) echo ""
while true
do
                          echo "Valor de la Ciudad: ${AMARILLO}${contenido_location#*=}\33[1;37m"
                          read -p 'Introduce tu Ciudad ' loc1
                          actualizar=S 
                          case $actualizar in
                          [sS]* ) echo ""
                          sed -i "$numero_linea_letrac Location=$loc1" /home/orangepi/MMDVMHost/MMDVMBM.ini
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
                          sed -i "$linea URL=$ur1" /home/orangepi/MMDVMHost/MMDVMBM.ini
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
                          letrac=c
                          numero_linea_port=$numero_linea_port$letrac
                          sed -i "$numero_linea_port Port=/dev/ttyS3" /home/orangepi/MMDVMHost/MMDVMBM.ini
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
                          letrac=c
                          numero_linea_port=$numero_linea_port$letrac
                          sed -i "$numero_linea_port Port=/dev/ttyACM0" /home/orangepi/MMDVMHost/MMDVMBM.ini
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
                          letrac=c
                          numero_linea_port=$numero_linea_port$letrac
                          sed -i "$numero_linea_port Port=/dev/ttyACM1" /home/orangepi/MMDVMHost/MMDVMBM.ini
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
                          letrac=c
                          numero_linea_port=$numero_linea_port$letrac
                          sed -i "$numero_linea_port Port=/dev/ttyUSB0" /home/orangepi/MMDVMHost/MMDVMBM.ini
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
                          sed -i "$linea Id=$miid" /home/orangepi/MMDVMHost/MMDVMBM.ini


ide=$(awk "NR==3" /home/orangepi/MMDVMHost/MMDVMBM.ini)
sed -i "2c $ide" /home/orangepi/info_panel_control.ini
                        
			  break;;
			  [nN]* ) echo ""
			  break;;
esac
done;;
11) echo ""
while true
do
echo "Valor actual del Master: \33[1;33m${master#*=}\33[1;37m"
                      read -p 'Brandmeister=master.spain-dmr.es / DMR+=eamaster04.xreflector.es: ' master1
                          actualizar=S 
                          case $actualizar in
                    [sS]* ) echo ""
                    master1=`echo "$master1" | tr -d '[[:space:]]'`


#Convierte mayusculas en minúsculas
master1=`echo "$master1" | tr [:upper:] [:lower:]`

                          sed -i "$linea_master Address=$master1" /home/orangepi/MMDVMHost/MMDVMBM.ini

master=$(awk "NR==139" /home/orangepi/MMDVMHost/MMDVMBM.ini)
sed -i "4c $master" /home/orangepi/info_panel_control.ini

        break;;
        [nN]* ) echo ""
        break;;
esac
done;;
12) echo ""
while true
do
                          echo -n "Valor actual del \33[1;37m${var100port#*=}\33[1;37m"
                          var100port= sed -n $linea2port  /home/orangepi/MMDVMHost/MMDVMBM.ini;
                      read -p 'Puerto para Brandmeister=62031 puerto para DMR+=55555 : ' miid
                          actualizar=S 
                          case $actualizar in
        [sS]* ) echo ""
                          letra1=c
                          linea4=$linea3port$letra1
                          sed -i "$linea4 Port=$miid" /home/orangepi/MMDVMHost/MMDVMBM.ini
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
                          sed -i "$linea Password=$pas1" /home/orangepi/MMDVMHost/MMDVMBM.ini
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
                          sed -i "$linea TXInvert=$txinv1" /home/orangepi/MMDVMHost/MMDVMBM.ini
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
                          sed -i "$linea RXLevel=$var2" /home/orangepi/MMDVMHost/MMDVMBM.ini
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
                          sed -i "$linea TXLevel=$var2" /home/orangepi/MMDVMHost/MMDVMBM.ini
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
                          sed -i "$linea Duplex=$dup1" /home/orangepi/MMDVMHost/MMDVMBM.ini
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
                          sed -i "$linea TXHang=$txh1" /home/orangepi/MMDVMHost/MMDVMBM.ini
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
                          sed -i "$linea DisplayLevel=$lg1" /home/orangepi/MMDVMHost/MMDVMBM.ini
			  break;;
			  [nN]* ) echo ""
			  break;;
esac
done;;
20) echo ""
while true
do
sl=`grep -n -m 1 -c '\<Slot1\>' /home/orangepi/MMDVMHost/MMDVMBM.ini`
if [ $sl = 0 ]; then
echo "no existe este comando"
else
sl=`grep -n -m 1 '\<Slot1\>' /home/orangepi/MMDVMHost/MMDVMBM.ini`
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
                          sed -i "$linea Slot1=$V" /home/orangepi/MMDVMHost/MMDVMBM.ini             
			  break;;
			  [nN]* ) echo ""
			  break;;
esac
done;;
21) echo ""
while true
do
Display=`grep -n -m 1 -c '\<Display\>' /home/orangepi/MMDVMHost/MMDVMBM.ini`
if [ $Display = 0 ]; then
echo "no existe este comando"
else
Display=`grep -n -m 1 '\<Display\>' /home/orangepi/MMDVMHost/MMDVMBM.ini`
Display1=`expr substr $Display 5 30`
#echo "$Display1"
fi
buscar=":"
largo=`expr index $Display $buscar`
echo "Valor actual del Display=: \33[1;33m${Display1#*=}\33[1;37m"
                      read -p 'Introcuce el nombre de tu Dispaly: ' V
                          letra=c
                          if [ $largo = 2 ]
                          then
                          linea=`expr substr $Display 1 1`
                          else
                          linea=`expr substr $Display 1 2`
                          fi
                          linea=$linea$letra
                          actualizar=S 
                          case $actualizar in                                            
                    [sS]* ) echo ""
                    V=`echo "$V" | tr -d '[[:space:]]'`       
                          sed -i "$linea Display=$V" /home/orangepi/MMDVMHost/MMDVMBM.ini             
        break;;
        [nN]* ) echo ""
        break;;
esac
done;;
22) echo ""
while true
do
ScreenLayout=`grep -n -m 1 -c '\<ScreenLayout\>' /home/orangepi/MMDVMHost/MMDVMBM.ini`
if [ $ScreenLayout = 0 ]; then
echo "no existe este comando"
else
ScreenLayout=`grep -n -m 1 '\<ScreenLayout\>' /home/orangepi/MMDVMHost/MMDVMBM.ini`
ScreenLayout1=`expr substr $ScreenLayout 5 30`
#echo "$ScreenLayout1"
fi
buscar=":"
largo=`expr index $ScreenLayout $buscar`
echo "Valor actual del ScreenLayout=: \33[1;33m${ScreenLayout1#*=}\33[1;37m"
                      read -p 'Este parametro puede ser 0 ó 1: ' V
                          letra=c
                          if [ $largo = 3 ]
                          then
                          linea=`expr substr $ScreenLayout 1 2`
                          else
                          linea=`expr substr $ScreenLayout 1 3`
                          fi
                          linea=$linea$letra
                          actualizar=S 
                          case $actualizar in                                            
                    [sS]* ) echo ""
                    V=`echo "$V" | tr -d '[[:space:]]'`       
                          sed -i "$linea ScreenLayout=$V" /home/orangepi/MMDVMHost/MMDVMBM.ini             
        break;;
        [nN]* ) echo ""
        break;;
esac
done;;
23) echo ""
while true
do

                          read -p 'Introduce el brillo Brightness: ' V
                          actualizar=S 
                          case $actualizar in                                            
                          [sS]* ) echo ""
                          V=`echo "$V" | tr -d '[[:space:]]'`      
                          sed -i "$linea_sed_Brightness Brightness=$V" /home/orangepi/MMDVMHost/MMDVMBM.ini             
        break;;
        [nN]* ) echo ""
        break;;
esac
done;;
26) echo ""
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

#Convierte indicativo si se introduce en minúsculas a Mayúsculas
modu1=`echo "$modu1" | tr [:lower:] [:upper:]`

                          sed -i "$linea Module=$modu1" /home/orangepi/MMDVMHost/MMDVMBM.ini
			  break;;
			  [nN]* ) echo ""
			  break;;
esac
done;;
a) echo ""
while true
do
                          echo -n "Valor actual D-STAR \33[1;33m${presentar_valor#*=}\33[1;37m"
                          presenta_valor= sed -n $numero_linea_dstar_letrap  /home/orangepi/MMDVMHost/MMDVMBM.ini;
                          read -p 'Desactivado=0 Activado=1:  '   dmrac1
                          actualizar=S 
                          case $actualizar in
                          [sS]* ) echo ""
                          sed -i "$numero_linea_dstar_letrac Enable=$dmrac1" /home/orangepi/MMDVMHost/MMDVMBM.ini
                          break;;
                          [nN]* ) echo ""
                          break;;
esac
done;;
b) echo ""
while true
do
                          echo -n "Valor  actual  DMR \33[1;33m${presentar_valor#*=}\33[1;37m"
                          presenta_valor= sed -n $numero_linea_dmr_letrap  /home/orangepi/MMDVMHost/MMDVMBM.ini;
           	              read -p 'Desactivado=0 Activado=1: '   dmrac1
                          actualizar=S 
                          case $actualizar in
			                    [sS]* ) echo ""
                          sed -i "$numero_linea_dmr_letrac Enable=$dmrac1" /home/orangepi/MMDVMHost/MMDVMBM.ini
			                    break;;
			                    [nN]* ) echo ""
			                    break;;
esac
done;;
c) echo ""
while true
do
                          echo -n "Valor actual FUSION \33[1;33m${presentar_valor#*=}\33[1;37m"
                          presenta_valor= sed -n $numero_linea_fusion_letrap  /home/orangepi/MMDVMHost/MMDVMBM.ini;
                          read -p 'Desactivado=0 Activado=1:  '   dmrac1
                          actualizar=S 
                          case $actualizar in
                          [sS]* ) echo ""
                          sed -i "$numero_linea_fusion_letrac Enable=$dmrac1" /home/orangepi/MMDVMHost/MMDVMBM.ini
                          break;;
                          [nN]* ) echo ""
                          break;;
esac
done;;
d) echo ""
while true
do
                          echo -n "Valor  actual  P25 \33[1;33m${presentar_valor#*=}\33[1;37m"
                          presenta_valor= sed -n $numero_linea_p25_letrap  /home/orangepi/MMDVMHost/MMDVMBM.ini;
                          read -p 'Desactivado=0 Activado=1: '   dmrac1
                          actualizar=S 
                          case $actualizar in
                          [sS]* ) echo ""
                          sed -i "$numero_linea_p25_letrac Enable=$dmrac1" /home/orangepi/MMDVMHost/MMDVMBM.ini
                          break;;
                          [nN]* ) echo ""
                          break;;
esac
done;;
e) echo ""
while true
do
                      read -p 'Introduce el valor de la Baliza (Ej. 1-activada 0-desactivada) : ' baliza
                      actualizar=S 
                      case $actualizar in
                      [sS]* ) echo ""
                      sed -i "31c Enable=$baliza" /home/orangepi/MMDVMHost/MMDVMBM.ini
                      break;;
                      [nN]* ) echo ""
                      break;;
esac
done;;
f) echo ""
while true
do
modehang=`grep -n -m 1 -c '\<RFModeHang\>' /home/orangepi/MMDVMHost/MMDVMBM.ini`
if [ $modehang = 0 ]; then
echo "no existe este comando"
else
modehang=`grep -n -m 1 '\<RFModeHang\>' /home/orangepi/MMDVMHost/MMDVMBM.ini`
modehang1=`expr substr $modehang 5 30`
fi
buscar=":"
largo=`expr index $modehang $buscar`
echo "Valor actual del RFModeHang = : \33[1;33m${modehang1#*=}\33[1;37m"
                      read -p 'Introcuce el valor para RFModeHang (optimo=3): ' V
                          letra=c
                          if [ $largo = 2 ]
                          then
                          linea=`expr substr $modehang 1 1`
                          else
                          linea=`expr substr $modehang 1 2`
                          fi
                          linea=$linea$letra
                          actualizar=S 
                          case $actualizar in                                            
                    [sS]* ) echo ""
                    V=`echo "$V" | tr -d '[[:space:]]'`       
                          sed -i "$linea RFModeHang=$V" /home/orangepi/MMDVMHost/MMDVMBM.ini             
        break;;
        [nN]* ) echo ""
        break;;
esac
done;;
g) echo ""
while true
do
timeo=`grep -n -m 1 -c '\<Timeout\>' /home/orangepi/MMDVMHost/MMDVMBM.ini`
if [ $timeo = 0 ]; then
echo "no existe este comando"
else
timeo=`grep -n -m 1 '\<Timeout\>' /home/orangepi/MMDVMHost/MMDVMBM.ini`
timeo1=`expr substr $timeo 5 30`
fi
buscar=":"
largo=`expr index $timeo $buscar`
echo "Valor actual del Timeout = : \33[1;33m${timeo1#*=}\33[1;37m"
                      read -p 'Introcuce el valor para Timeout (valor optimo=0): ' V
                          letra=c
                          if [ $largo = 2 ]
                          then
                          linea=`expr substr $timeo 1 1`
                          else
                          linea=`expr substr $timeo 1 2`
                          fi
                          linea=$linea$letra
                          actualizar=S 
                          case $actualizar in                                            
                    [sS]* ) echo ""
                    V=`echo "$V" | tr -d '[[:space:]]'`       
                          sed -i "$linea Timeout=$V" /home/orangepi/MMDVMHost/MMDVMBM.ini             
        break;;
        [nN]* ) echo ""
        break;;
esac
done;;
h) echo ""
while true
do
echo "Valor del Port: \33[1;33m$MODEMNEXTION"
                          read -p 'Ejp. modem, /dev/ttyAMA0, /dev/rfcomm0, /dev/ttyUSB0 :' lat1
                          actualizar=S 
                          case $actualizar in
                          [sS]* ) echo ""
                          sed -i "$linea_sed_MN Port=$lat1" /home/orangepi/MMDVMHost/MMDVMBM.ini
                          break;;
                          [nN]* ) echo ""
                          break;;
esac
done;;
i) echo ""
while true
do
echo "Valor actual NXDN: \33[1;33m$NXDN"
                          read -p 'Desactivado=0 Activado=1: '   NXDN1
                          actualizar=S 
                          case $actualizar in
                          [sS]* ) echo ""
                          sed -i "$linea_sed_NXDN Enable=$NXDN1" /home/orangepi/MMDVMHost/MMDVMBM.ini
                          break;;
                          [nN]* ) echo ""
                          break;;
esac
done;;
j) echo ""
while true
do
                          echo "Valor actual POCSAG: \33[1;33m$POCSAG"
                          read -p 'Desactivado=0 Activado=1: '   POCSAG1
                          actualizar=S 
                          case $actualizar in
                          [sS]* ) echo ""
                          sed -i "$linea_sed_POCSAG Enable=$POCSAG1" /home/orangepi/MMDVMHost/MMDVMBM.ini
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
                          sed -i "$linea Latitude=$lat1" /home/orangepi/MMDVMHost/MMDVMBM.ini
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
                          sed -i "$linea Longitude=$long1" /home/orangepi/MMDVMHost/MMDVMBM.ini
			  break;;
			  [nN]* ) echo ""
			  break;;
esac
done;;
27) echo ""
while true
do
              read -p 'Estas en DMR+ ? S/N ' actualizar     
           	 
                          
                          case $actualizar in
			  [sS]* ) echo ""
			   read -p 'Intruduce reflector DMR+ al que se conectara (ej:4374) ' opcion
                          letra1=c
                          linea4=$linea33port$letra1
                          sed -i "$linea4 Options=StartRef=$opcion;RelinkTime=10;" /home/orangepi/MMDVMHost/MMDVMBM.ini
			  break;;
			  [nN]* ) echo ""
			  letra1=c
                          linea4=$linea33port$letra1
			  sed -i "$linea4 #Options=StartRef=4370;RelinkTime=10;" /home/orangepi/MMDVMHost/MMDVMBM.ini
			  break;;
esac
done;;
#27) echo ""
#while true
#do
#buscar=":"
#largo=`expr index $rxinv $buscar`
#echo "Valor  actual del  RXInvert: \33[1;33m${rxinv#*=}\33[1;37m"
                     #read -p 'Valor óptimo para Motorola=0 para otras=1 : ' rxinv11
                          #letra=c
                         #if [ $largo = 3 ]
                         #then
                          #linea=`expr substr $rxinv 1 2`
                          #else
                          #linea=`expr substr $rxinv 1 3`
                          #fi
                          #linea=$linea$letra
                          #actualizar=S 
                          #case $actualizar in
        #[sS]* ) echo ""
                          #sed -i "$linea RXInvert=$rxinv11" /home/orangepi/MMDVMHost/MMDVMBM.ini
        #break;;
        #[nN]* ) echo ""
        #break;;
#esac
#done;;
28) echo ""
while true
do
                              actualizar=S 
                              case $actualizar in
			                        [sS]* ) echo ""
                              sudo pluma /home/orangepi/MMDVMHost/MMDVMBM.ini
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
                        sudo cp -f /home/orangepi/MMDVMHost/MMDVMBM.ini /home/orangepi/MMDVMHost/MMDVMBM.ini_copia
			                  break;;
			                  [nN]* ) echo ""
			                  break;;
esac
done;;
30) echo ""
while true
do
                        actualizar=S
                        case $actualizar in
                        [sS]* ) echo ""
                        clear
                        echo "<<<<<< Restaurando copia de seguridad de la M1 >>>>>"
                        sleep 3
                        sudo cp -f /home/orangepi/MMDVMHost/MMDVMBM.ini_copia /home/orangepi/MMDVMHost/MMDVMBM.ini
			                  break;;
			                  [nN]* ) echo ""
			                  break;;
esac
done;;
31) echo ""
while true
do
                        actualizar=S 
                        case $actualizar in
			                  [sS]* ) echo ""
                        clear
                        echo "<<<<<< Haciendo copia de seguridad de la M2 >>>>>"
                        sleep 3
                        sudo cp -f /home/orangepi/MMDVMHost/MMDVMBM.ini /home/orangepi/MMDVMHost/MMDVMBM.ini_copia2
			                  break;;
			                  [nN]* ) echo ""
			                  break;;
esac
done;;
32) echo ""
while true
do
                        actualizar=S 
                        case $actualizar in
			                  [sS]* ) echo ""
                        clear
                        echo "<<<<<< Restaurando copia de seguridad  de la M2 >>>>>"
                        sleep 3
                        sudo cp -f /home/orangepi/MMDVMHost/MMDVMBM.ini_copia2 /home/orangepi/MMDVMHost/MMDVMBM.ini
			                  break;;
			                  [nN]* ) echo ""
			                  break;;
esac
done;;
33) echo ""
while true
do
                        actualizar=S 
                        case $actualizar in
			                  [sS]* ) echo ""
                        clear
                        echo "<<<<<< Haciendo copia de seguridad de la M3 >>>>>"
                        sleep 3
                        sudo cp -f /home/orangepi/MMDVMHost/MMDVMBM.ini /home/orangepi/MMDVMHost/MMDVMBM.ini_copia3
			                  break;;
			                  [nN]* ) echo ""
			                  break;;
esac
done;;
34) echo ""
while true
do
                        actualizar=S 
                        case $actualizar in
			                  [sS]* ) echo ""
                        clear
                        echo "<<<<<< Restaurando copia de seguridad de la M3 >>>>>"
                        sleep 3
                        sudo cp -f /home/orangepi/MMDVMHost/MMDVMBM.ini_copia3 /home/orangepi/MMDVMHost/MMDVMBM.ini
			                  break;;
			                  [nN]* ) echo ""
			                  break;;
esac
done;;
35) echo ""
while true
do
          	        
           	        read -p 'Quieres restaurar el fichero original MMDVMBM.ini? S/N ' restaurar1   
                        case $restaurar1 in
			[sS]* ) echo ""
                        clear
                        echo "<<<<<< Restaurando el fichero original MMDVMBM.ini >>>>>"
                        sleep 3
                        sudo cp -f /home/orangepi/MMDVMHost/MMDVM.ini_original /home/orangepi/MMDVMHost/MMDVMBM.ini
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

