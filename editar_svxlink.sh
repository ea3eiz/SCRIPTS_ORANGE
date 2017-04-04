#!/bin/bash
# script para instalar md380tools
while true
do
clear

echo "\33[1;32m   **************************************************************************"
echo "   *                                                                        *"
echo "   *    Script para Modificar ModuleEcholink y svxlink    \33[1;31m by EA3EIZ  \33[1;32m      *"
echo "   *                                                                        *"
echo "   **************************************************************************"
echo ""
echo "\33[1;31m   ModuleEchoLink.conf"
echo -n "\33[1;36m    1)\33[0m Indicativo Echolink más  L ó R   - \33[1;33m"
var1= sed -n '14p'  /usr/local/etc/svxlink/svxlink.d/ModuleEchoLink.conf
echo -n "\33[1;36m    2)\33[0m Password del indicativo Echolink - \33[1;33m"
var1= sed -n '15p'  /usr/local/etc/svxlink/svxlink.d/ModuleEchoLink.conf
echo -n "\33[1;36m    3)\33[0m Información en pantalla Echolink - \33[1;33m"
var1= sed -n '16p'  /usr/local/etc/svxlink/svxlink.d/ModuleEchoLink.conf
echo -n "\33[1;36m    4)\33[0m Información donde está conectado - \33[1;33m"
var1= sed -n '17p'  /usr/local/etc/svxlink/svxlink.d/ModuleEchoLink.conf
echo -n "\33[1;36m    5)\33[0m ID conferencia donde se conecta  - \33[1;33m"
var1= sed -n '25p'  /usr/local/etc/svxlink/svxlink.d/ModuleEchoLink.conf
echo "\33[1;36m    6)\33[1;32m Deshabilitar proxy  \33[1;33m"
echo "\33[1;36m    7)\33[1;32m Habilitar proxy     \33[1;33m"
echo -n "\33[1;33m       "
var1= sed -n '18p'  /usr/local/etc/svxlink/svxlink.d/ModuleEchoLink.conf
echo -n "       "
var1= sed -n '19p'  /usr/local/etc/svxlink/svxlink.d/ModuleEchoLink.conf
echo -n "       "
var1= sed -n '20p'  /usr/local/etc/svxlink/svxlink.d/ModuleEchoLink.conf
echo "\33[1;32m"
echo "\33[1;36m    8)\33[1;32m Abrir fichero ModuleEchoLink.conf para hacer cualquier otro cambio\33[1;33m"
echo ""
echo "\33[1;31m   svxlink.conf"
echo -n "\33[1;36m    9)\33[0m Indicativo Baliza    - \33[1;33m"
var1= sed -n '22p'  /usr/local/etc/svxlink/svxlink.conf
echo -n "\33[1;36m   10)\33[0m Intervalo Baliza     - \33[1;33m"
var1= sed -n '23p'  /usr/local/etc/svxlink/svxlink.conf
echo -n "\33[1;36m   11)\33[0m Cambiar audio [Rx1]  - \33[1;33m"
var1= sed -n '158p'  /usr/local/etc/svxlink/svxlink.conf
echo -n "\33[1;36m   12)\33[0m Cambiar audio [Tx1]  - \33[1;33m"
var1= sed -n '224p'  /usr/local/etc/svxlink/svxlink.conf
echo -n "\33[1;36m   13)\33[0m Cambiar a TONOS      - \33[1;33m"
var1= sed -n '170p'  /usr/local/etc/svxlink/svxlink.conf
echo -n "\33[1;36m   14)\33[0m Cambiar a VOX        - \33[1;33m"
var1= sed -n '160p'  /usr/local/etc/svxlink/svxlink.conf
echo -n "\33[1;36m   15)\33[0m Modificar VOX_THRESH - \33[1;33m"
var1= sed -n '168p'  /usr/local/etc/svxlink/svxlink.conf
echo "\33[1;36m   16)\33[1;32m Modem Soundcard o similar (está este por defecto)\33[1;33m"
echo "\33[1;36m   17)\33[1;32m Modem Gpio con transistor y resistencia\33[1;33m"
#var1= sed -n '90p'  /usr/local/etc/svxlink/svxlink.conf
#var1= sed -n '92p'  /usr/local/etc/svxlink/svxlink.conf
#var1= sed -n '93p'  /usr/local/etc/svxlink/svxlink.conf
echo "\33[1;36m   18)\33[1;33m Abrir fichero svxlink.conf para hacer cualquiergpio otro cambio\33[1;33m"
echo ""
echo "   ========================================================================"
echo ""
echo "\33[1;36m   19)\33[1;33m Abrir control de audio. [Esc] para cerrarlo \33[1;33m"
echo ""
echo "\33[1;36m    0)\33[1;34m Salir del script \33[1;31m OJO!! no salir con ctrl+c ni con la x"
echo ""
echo "\33[1;36m   Escoge una opción.. 1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,0 \33[1;33m " 
read escoger_menu



echo ""


case $escoger_menu in


1) echo ""
while true
do
           	        read -p '   Introduce el indicativo de tu link: ' indicativo
                        actualizar=S 
                        case $actualizar in
			[sS]* ) echo ""
			echo "Introduce tu indicativo:"
                        sed -i "14c CALLSIGN=$indicativo" /usr/local/etc/svxlink/svxlink.d/ModuleEchoLink.conf
			break;;
			[nN]* ) echo ""
			break;;
esac
done;;

2) echo ""
while true
do
           	        read -p 'Introduce el password de la licencia Echolink: ' password1
                        actualizar=S 
                        case $actualizar in
			[sS]* ) echo ""
			echo "Introduce password licencia Echolink:"
           sed -i "15c PASSWORD=$password1" /usr/local/etc/svxlink/svxlink.d/ModuleEchoLink.conf
			break;;
			[nN]* ) echo ""
			break;;
esac
done;;
3) echo ""
while true
do
           	        read -p 'Introduce Información que sale en la pantalla del Echolink: ' sysop
                        actualizar=S 
                        case $actualizar in
			[sS]* ) echo ""
			echo "Introduce password licencia Echolink:"

           sed -i "16c SYSOPNAME=$sysop" /usr/local/etc/svxlink/svxlink.d/ModuleEchoLink.conf
			break;;
			[nN]* ) echo ""
			break;;
esac
done;;
4) echo ""
while true
do
           	        read -p 'Introduce información a la conferencia que se conecta: ' location
                        actualizar=S 
                        case $actualizar in
			[sS]* ) echo ""
			echo "Introduce password licencia Echolink:"
           sed -i "17c LOCATION=$location" /usr/local/etc/svxlink/svxlink.d/ModuleEchoLink.conf
			break;;
			[nN]* ) echo ""
			break;;
esac
done;;
5) echo ""
while true
do
           	        read -p 'Introduce ID de la conferencia a la que se conecta: ' id
                        actualizar=S 
                        case $actualizar in
			[sS]* ) echo ""
			echo "Introduce password licencia Echolink:"
           sed -i "25c AUTOCON_ECHOLINK_ID=$id" /usr/local/etc/svxlink/svxlink.d/ModuleEchoLink.conf
			break;;
			[nN]* ) echo ""
			break;;
esac
done;;
6) echo ""
while true
do
           	        read -p 'Pulsar enter para deshabilitar proxy ' proxy
                        actualizar=S 
                        case $actualizar in
			[sS]* ) echo ""
sed -i "18c #PROXY_SERVER=dirección o ip" /usr/local/etc/svxlink/svxlink.d/ModuleEchoLink.conf
sed -i "19c #PROXY_PORT=número puerto" /usr/local/etc/svxlink/svxlink.d/ModuleEchoLink.conf
sed -i "20c #PROXY_PASSWORD=password" /usr/local/etc/svxlink/svxlink.d/ModuleEchoLink.conf
                        break;;
			[nN]* ) echo ""
			break;;
esac
done;;
7) echo ""
while true
do
           	        read -p 'Entrar ip del proxy ' ip
                        actualizar=S 
                        case $actualizar in
			[sS]* ) echo -n ""
sed -i "18c PROXY_SERVER=$ip" /usr/local/etc/svxlink/svxlink.d/ModuleEchoLink.conf
                        read -p 'Entrar puerto del proxy ' puerto
sed -i "19c PROXY_PORT=$puerto" /usr/local/etc/svxlink/svxlink.d/ModuleEchoLink.conf
                        read -p 'Entrar password del proxy ' passproxy
sed -i "20c PROXY_PASSWORD=$passproxy" /usr/local/etc/svxlink/svxlink.d/ModuleEchoLink.conf

                        break;;
			[nN]* ) echo ""
			break;;
esac
done;;
8) echo ""
while true
do


           	          read -p 'Pulsa enter para abrir el fichero ModuleEchoLink.conf: ' var2
                              actualizar=S 
                              case $actualizar in
			[sS]* ) echo ""
                              sudo nano /usr/local/etc/svxlink/svxlink.d/ModuleEchoLink.conf
			break;;
			[nN]* ) echo ""
			break;;
esac
done;;
9) echo ""
while true
do
           	        read -p 'Introduce tu indicativo: ' callsign
                        actualizar=S 
                        case $actualizar in
			[sS]* ) echo ""
           sed -i "22c CALLSIGN=$callsign" /usr/local/etc/svxlink/svxlink.conf
           sed -i "47c CALLSIGN=$callsign" /usr/local/etc/svxlink/svxlink.conf
			break;;
			[nN]* ) echo ""
			break;;
esac
done;;

10) echo ""
while true
do
           	        read -p 'Introduce cada cuantos minutos dará la baliza: ' baliza
                        actualizar=S 
                        case $actualizar in
			[sS]* ) echo ""
           sed -i "23c SHORT_IDENT_INTERVAL=$baliza" /usr/local/etc/svxlink/svxlink.conf
			break;;
			[nN]* ) echo ""
			break;;
esac
done;;

11) echo ""
while true
do
           	        read -p 'Introduce el valor del audio RX (1 ó 0): ' audiorx
                        actualizar=S 
                        case $actualizar in
			[sS]* ) echo ""
           sed -i "158c AUDIO_DEV=alsa:plughw:$audiorx" /usr/local/etc/svxlink/svxlink.conf
			break;;
			[nN]* ) echo ""
			break;;
esac
done;;
12) echo ""
while true
do
           	        read -p 'Introduce el valor del audio  TX (1 ó 0): ' audiotx
                        actualizar=S 
                        case $actualizar in
			[sS]* ) echo ""
           sed -i "224c AUDIO_DEV=alsa:plughw:$audiotx" /usr/local/etc/svxlink/svxlink.conf
			break;;
			[nN]* ) echo ""
			break;;
esac
done;;



13) echo ""
while true
do
           	        read -p 'Introduce el tono deseado: ' tono
                        actualizar=S 
                        case $actualizar in
			[sS]* ) echo ""

sed -i "160c SQL_DET=CTCSS" /usr/local/etc/svxlink/svxlink.conf
sed -i "170c CTCSS_FQ=$tono" /usr/local/etc/svxlink/svxlink.conf
sed -i "169c CTCSS_MODE=3" /usr/local/etc/svxlink/svxlink.conf
sed -i "171c CTCSS_SNR_OFFSET=0" /usr/local/etc/svxlink/svxlink.conf
sed -i "172c CTCSS_OPEN_THRESH=6" /usr/local/etc/svxlink/svxlink.conf
sed -i "173c CTCSS_CLOSE_THRESH=4" /usr/local/etc/svxlink/svxlink.conf
sed -i "174c CTCSS_BPF_LOW=60" /usr/local/etc/svxlink/svxlink.conf
sed -i "175c CTCSS_BPF_HIGH=80" /usr/local/etc/svxlink/svxlink.conf

			break;;
			[nN]* ) echo ""
			break;;
esac
done;;
14) echo ""
while true
do
           	        read -p 'Quieres Cambiar a VOX? S/N' actualizar
                       
                        case $actualizar in
			[sS]* ) echo ""

sed -i "160c SQL_DET=VOX" /usr/local/etc/svxlink/svxlink.conf
sed -i "169c #CTCSS_MODE=3" /usr/local/etc/svxlink/svxlink.conf
sed -i "171c #CTCSS_SNR_OFFSET=0" /usr/local/etc/svxlink/svxlink.conf
sed -i "172c #CTCSS_OPEN_THRESH=6" /usr/local/etc/svxlink/svxlink.conf
sed -i "173c #CTCSS_CLOSE_THRESH=4" /usr/local/etc/svxlink/svxlink.conf
sed -i "174c #CTCSS_BPF_LOW=60" /usr/local/etc/svxlink/svxlink.conf
sed -i "175c #CTCSS_BPF_HIGH=80" /usr/local/etc/svxlink/svxlink.conf

			break;;
			[nN]* ) echo ""
			break;;
esac
done;;
15) echo ""
while true
do
           	        read -p 'Introduce el valor del VOX_THRESH: ' tono
                        actualizar=S 
                        case $actualizar in
			[sS]* ) echo ""
sed -i "168c VOX_THRESH=$tono" /usr/local/etc/svxlink/svxlink.conf
			break;;
			[nN]* ) echo ""
			break;;
esac
done;;
16) echo ""
while true
do


           	        read -p 'Pulsa enter para Usar Modem Soundcard o similar: ' var2
                        actualizar=S 
                        case $actualizar in
			[sS]* ) echo ""
sed -i "227c PTT_PORT=/dev/ttyUSB0" /usr/local/etc/svxlink/svxlink.conf
sed -i "226c PTT_TYPE=SerialPin" /usr/local/etc/svxlink/svxlink.conf
sed -i "228c PTT_PIN=DTRRTS" /usr/local/etc/svxlink/svxlink.conf
sed -i "10c #" /etc/rc.local
sed -i "11c #" /etc/rc.local
sed -i "12c #" /etc/rc.local
			break;;
			[nN]* ) echo ""
			break;;
esac
done;;
17) echo ""
while true
do


           	        read -p 'Pulsa enter para Usar Gpio con transistor y resistencia: ' var2
                        actualizar=S 
                        case $actualizar in
			[sS]* ) echo ""
sed -i "227c PTT_PORT=/dev/ttyAMA0" /usr/local/etc/svxlink/svxlink.conf
sed -i "226c PTT_TYPE=GPIO" /usr/local/etc/svxlink/svxlink.conf
sed -i "228c PTT_PIN=gpio17" /usr/local/etc/svxlink/svxlink.conf
sed -i "10c echo "17" > /sys/class/gpio/export" /etc/rc.local
sed -i "11c chmod 777 -R /sys/class/gpio/gpio17" /etc/rc.local
sed -i "12c echo "out" > /sys/class/gpio/gpio17/direction" /etc/rc.local
sed -i "14c exit 0" /etc/rc.local
			break;;
			[nN]* ) echo ""
			break;;
esac
done;;
18) echo ""
while true
do


           	          read -p 'Pulsa enter para abrir el fichero svxlink.conf: ' var2
                              actualizar=S 
                              case $actualizar in
			[sS]* ) echo ""
                              sudo nano /usr/local/etc/svxlink/svxlink.conf
			break;;
			[nN]* ) echo ""
			break;;
esac
done;;
19) echo ""

while true
do


           	          read -p 'Pulsa enter para abrir el control de audio: ' var2
                              actualizar=S 
                              case $actualizar in
			[sS]* ) echo ""
                        alsamixer
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

