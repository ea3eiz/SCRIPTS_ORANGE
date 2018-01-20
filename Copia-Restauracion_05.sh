#!/bin/bash
while true
do
clear

echo "\33[1;32m   ***********************************************************************"
echo "   *      Script para Copiar y Restaurar Configuraciones \33[1;33mV.02.05\33[1;32m         *"
echo "   *                       \33[1;31mby EA3EIZ & EA4AOJ\33[1;32m                            *"
echo "   ***********************************************************************"
echo "\33[1;36m   1)\33[1;37m Copiar BM, DMR+, LIBRE, RADIO, YSF, BlueDV y SVXLINK en .copias"
echo "\33[1;36m   2)\33[1;37m Restaurar BM, DMR+, LIBRE, RADIO, YSF, BlueDV y SVXLINK de .copias"
echo ""
echo "\33[1;36m   3)\33[1;32m Cambiar Indicativo, Id, Frecuencia, Latitud, Longitud"
echo "\33[1;36m   \33[1;32m   Ciudad, Url, Timeout, Duplex, Baliza, Módulo D-STAR"
echo "\33[1;36m   \33[1;32m   y RFModeHang a todos los .INI"
echo ""
echo "\33[1;36m   0)\33[1;34m Salir del script \33[1;31m OJO!! no salir con ctrl+c ni con la x"
echo ""
echo -n "\33[1;36m   Elige una opción del 0 al 2: " 
read escoger_menu
echo ""
case $escoger_menu in

1) echo ""
while true
do
clear
		    ejecutar1=S
		    case $ejecutar1 in
			[sS]* ) echo ""
			echo "Haciendo copias editores BM, DMR+, LIBRE, RADIO, YSF, BlueDV y SVXLINK"
			sleep 3
			sudo chmod -R 777 ~/.copias
            cd ~/MMDVMHost
            sudo cp -f MMDVM.ini ~/.copias
            sudo cp -f MMDVM.ini_copia ~/.copias
            sudo cp -f MMDVM.ini_copia2 ~/.copias
            sudo cp -f MMDVM.ini_copia3 ~/.copias
            sudo cp -f MMDVM.ini_original ~/.copias
            sudo cp -f MMDVMBM.ini ~/.copias
            sudo cp -f MMDVMBM.ini_copia ~/.copias
            sudo cp -f MMDVMBM.ini_copia2 ~/.copias
            sudo cp -f MMDVMBM.ini_copia3 ~/.copias
            sudo cp -f MMDVMLIBRE.ini ~/.copias
            sudo cp -f MMDVMLIBRE.ini_uno ~/.copias
            sudo cp -f MMDVMLIBRE.ini_dos ~/.copias       
            sudo cp -f MMDVMPLUS.ini ~/.copias
            sudo cp -f MMDVMPLUS.ini_copia ~/.copias
            sudo cp -f MMDVMPLUS.ini_copia2 ~/.copias
            sudo cp -f MMDVMPLUS.ini_copia3 ~/.copias

            #solo Dstar y solo Fusion
            sudo cp -f MMDVMDSTAR.ini ~/.copias
            sudo cp -f MMDVMFUSION.ini ~/.copias
            #fin  Dstar y solo Fusion

            cd  ~/YSFClients/YSFGateway/
            sudo cp -f YSFGateway.ini ~/.copias
            
            cd ~/bluedv/
            sudo cp -f BlueDVconfig.ini ~/.copias

            cd /usr/local/etc/svxlink/
            sudo cp -f svxlink.conf ~/.copias

            cd /usr/local/etc/svxlink/svxlink.d/
            sudo cp -f ModuleEchoLink.conf ~/.copias

            sudo rm -R ~/Downloads/copias
            sudo cp -R ~/.copias ~/Downloads/copias
			echo ""
			echo "Ok, se ha ejecutado correctamente"
			echo ""
			break;;
			[nN]* ) echo ""
			break;;
esac
done;;
2) echo ""
while true
do
clear
		    ejecutar1=S
		    case $ejecutar1 in
			[sS]* ) echo ""
			echo "Restaurando copias editores BM, DMR+, LIBRE, RADIO, YSF, BlueDV y SVXLINK"
			sleep 3
			sudo chmod -R 777 ~/.copias
            cd ~/.copias
            sudo cp -f MMDVM.ini ~/MMDVMHost
            sudo cp -f MMDVM.ini_copia ~/MMDVMHost
            sudo cp -f MMDVM.ini_copia2 ~/MMDVMHost
            sudo cp -f MMDVM.ini_copia3 ~/MMDVMHost
            sudo cp -f MMDVM.ini_original ~/MMDVMHost
            sudo cp -f MMDVMBM.ini ~/MMDVMHost
            sudo cp -f MMDVMBM.ini_copia ~/MMDVMHost
            sudo cp -f MMDVMBM.ini_copia2 ~/MMDVMHost
            sudo cp -f MMDVMBM.ini_copia3 ~/MMDVMHost
            sudo cp -f MMDVMLIBRE.ini ~/MMDVMHost
            sudo cp -f MMDVMLIBRE.ini_uno ~/MMDVMHost
            sudo cp -f MMDVMLIBRE.ini_dos ~/DoMMDVMHost     
            sudo cp -f MMDVMPLUS.ini ~/MMDVMHost
            sudo cp -f MMDVMPLUS.ini_copia ~/MMDVMHost
            sudo cp -f MMDVMPLUS.ini_copia2 ~/MMDVMHost
            sudo cp -f MMDVMPLUS.ini_copia3 ~/MMDVMHost

            #solo Dstar y solo Fusion
            sudo cp -f MMDVMDSTAR.ini ~/MMDVMHost
            sudo cp -f MMDVMFUSION.ini ~/MMDVMHost
            #fin  Dstar y solo Fusion



            sudo cp -f YSFGateway.ini ~/YSFClients/YSFGateway/

            sudo cp -f BlueDVconfig.ini ~/bluedv/

            sudo cp -f svxlink.conf /usr/local/etc/svxlink/
            
            sudo cp -f ModuleEchoLink.conf /usr/local/etc/svxlink/svxlink.d/

			echo ""
			echo "Ok, se ha ejecutado correctamente"
			echo ""
			break;;
			[nN]* ) echo ""
			break;;
esac
done;;







3) echo ""
while true
do
clear
            read -p 'Introduce tu Indicativo en mayúsculas: ' tu_indicativo
            read -p 'Introduce tu Id: ' tu_id
            read -p 'Introduce la frecuencia para RX y TX con 9 digitos sin puntos ni comas: ' frecuencia
            read -p 'Introduce tu coordenada Latitud (Ej. 41.530704) : ' tu_latitud
            read -p 'Introduce tu coordenada Longitud (Ej. 2.185437) : ' tu_longitud
            read -p 'Introduce tu Ciudad sin espacios (Ej. Barcelona) : ' tu_ciudad
            read -p 'Introduce tu Página web (Ej. www.associacioader.com) : ' tu_url
            read -p 'Introduce valor para Timeout (Ej. 0) : ' timeou
            read -p 'Introduce valor Duplex (Ej. 0-simplex  1-Repetidor) : ' duplex
            read -p 'Introduce valor de la Baliza CW (Ej. 1-activada 0-desactivada) : ' baliza
            read -p 'Introduce valor del Módulo D-STAR (Ej. B) : ' module
            read -p 'Introduce valor de RFModeHang (Ej. 3) : ' rfmodehang

            ejecutar1=S
            case $ejecutar1 in
            [sS]* ) echo ""
            clear
            echo "\33[1;32m*****************************************"
            echo "* \33[1;31mCAMBIANDO LOS DATOS A TODOS LOS .INI  \33[1;32m*"
            echo "*****************************************"
            sleep 3

            #rutina para localizar el número de linea en el MMDVM.ini donde está el Module D-STAR
            modulo=`grep -n -m 1 '\<Module\>' ~/MMDVMHost/MMDVM.ini`
            linea=`expr substr $modulo 1 2`
            letra1=c
            linea4=$linea$letra1
            # ====================================================================


            #rutina para localizar el número de linea en el MMDVMLIBRE.inil donde está el Module D-STAR
            modulol=`grep -n -m 1 '\<Module\>' ~/MMDVMHost/MMDVMLIBRE.ini`
            lineal=`expr substr $modulol 1 2`
            letra1l=c
            linea4l=$lineal$letra1l
            # ====================================================================


            #Radio
            sed -i "13c RXFrequency=$frecuencia" ~/MMDVMHost/MMDVM.ini
            sed -i "13c RXFrequency=$frecuencia" ~/MMDVMHost/MMDVM.ini_copia
            sed -i "13c RXFrequency=$frecuencia" ~/MMDVMHost/MMDVM.ini_copia2
            sed -i "13c RXFrequency=$frecuencia" ~/MMDVMHost/MMDVM.ini_copia3
            sed -i "14c TXFrequency=$frecuencia" ~/MMDVMHost/MMDVM.ini
            sed -i "14c TXFrequency=$frecuencia" ~/MMDVMHost/MMDVM.ini_copia
            sed -i "14c TXFrequency=$frecuencia" ~/MMDVMHost/MMDVM.ini_copia2
            sed -i "14c TXFrequency=$frecuencia" ~/MMDVMHost/MMDVM.ini_copia3
            #iNDICATIVO
            sed -i "2c Callsign=$tu_indicativo" ~/MMDVMHost/MMDVM.ini
            sed -i "2c Callsign=$tu_indicativo" ~/MMDVMHost/MMDVM.ini_copia
            sed -i "2c Callsign=$tu_indicativo" ~/MMDVMHost/MMDVM.ini_copia2
            sed -i "2c Callsign=$tu_indicativo" ~/MMDVMHost/MMDVM.ini_copia3
            #ID
            sed -i "3c Id=$tu_id" ~/MMDVMHost/MMDVM.ini
            sed -i "3c Id=$tu_id" ~/MMDVMHost/MMDVM.ini_copia
            sed -i "3c Id=$tu_id" ~/MMDVMHost/MMDVM.ini_copia2
            sed -i "3c Id=$tu_id" ~/MMDVMHost/MMDVM.ini_copia3
            #LATITUD
            sed -i "16c Latitude=$tu_latitud" ~/MMDVMHost/MMDVM.ini
            sed -i "16c Latitude=$tu_latitud" ~/MMDVMHost/MMDVM.ini_copia
            sed -i "16c Latitude=$tu_latitud" ~/MMDVMHost/MMDVM.ini_copia2
            sed -i "16c Latitude=$tu_latitud" ~/MMDVMHost/MMDVM.ini_copia3
            #LONGITUD
            sed -i "17c Longitude=$tu_longitud" ~/MMDVMHost/MMDVM.ini
            sed -i "17c Longitude=$tu_longitud" ~/MMDVMHost/MMDVM.ini_copia
            sed -i "17c Longitude=$tu_longitud" ~/MMDVMHost/MMDVM.ini_copia2
            sed -i "17c Longitude=$tu_longitud" ~/MMDVMHost/MMDVM.ini_copia3
            #CIUDAD
            sed -i "19c Location=$tu_ciudad" ~/MMDVMHost/MMDVM.ini
            sed -i "19c Location=$tu_ciudad" ~/MMDVMHost/MMDVM.ini_copia
            sed -i "19c Location=$tu_ciudad" ~/MMDVMHost/MMDVM.ini_copia2
            sed -i "19c Location=$tu_ciudad" ~/MMDVMHost/MMDVM.ini_copia3
            #WEBId
            sed -i "21c URL=$tu_url" ~/MMDVMHost/MMDVM.ini
            sed -i "21c URL=$tu_url" ~/MMDVMHost/MMDVM.ini_copia
            sed -i "21c URL=$tu_url" ~/MMDVMHost/MMDVM.ini_copia2
            sed -i "21c URL=$tu_url" ~/MMDVMHost/MMDVM.ini_copia3
            #TIMEOUT
            sed -i "4c Timeout=$timeou" ~/MMDVMHost/MMDVM.ini
            sed -i "4c Timeout=$timeou" ~/MMDVMHost/MMDVM.ini_copia
            sed -i "4c Timeout=$timeou" ~/MMDVMHost/MMDVM.ini_copia2
            sed -i "4c Timeout=$timeou" ~/MMDVMHost/MMDVM.ini_copia3
            #DUPLEX
            sed -i "5c Duplex=$duplex" ~/MMDVMHost/MMDVM.ini
            sed -i "5c Duplex=$duplex" ~/MMDVMHost/MMDVM.ini_copia
            sed -i "5c Duplex=$duplex" ~/MMDVMHost/MMDVM.ini_copia2
            sed -i "5c Duplex=$duplex" ~/MMDVMHost/MMDVM.ini_copia3
            #BALIZA
            sed -i "31c Enable=$baliza" ~/MMDVMHost/MMDVM.ini
            sed -i "31c Enable=$baliza" ~/MMDVMHost/MMDVM.ini_copia
            sed -i "31c Enable=$baliza" ~/MMDVMHost/MMDVM.ini_copia2
            sed -i "31c Enable=$baliza" ~/MMDVMHost/MMDVM.ini_copia3
            #MODULE D-STAR
            sed -i "$linea4 Module=$module" ~/MMDVMHost/MMDVM.ini
            sed -i "$linea4 Module=$module" ~/MMDVMHost/MMDVM.ini_copia
            sed -i "$linea4 Module=$module" ~/MMDVMHost/MMDVM.ini_copia2
            sed -i "$linea4 Module=$module" ~/MMDVMHost/MMDVM.ini_copia3
            #RFMODEHANG
            sed -i "7c RFModeHang=$rfmodehang" ~/MMDVMHost/MMDVM.ini
            sed -i "7c RFModeHang=$rfmodehang" ~/MMDVMHost/MMDVM.ini_copia
            sed -i "7c RFModeHang=$rfmodehang" ~/MMDVMHost/MMDVM.ini_copia2
            sed -i "7c RFModeHang=$rfmodehang" ~/MMDVMHost/MMDVM.ini_copia3


#BM
            sed -i "13c RXFrequency=$frecuencia" ~/MMDVMHost/MMDVMBM.ini
            sed -i "13c RXFrequency=$frecuencia" ~/MMDVMHost/MMDVMBM.ini_copia
            sed -i "13c RXFrequency=$frecuencia" ~/MMDVMHost/MMDVMBM.ini_copia2
            sed -i "13c RXFrequency=$frecuencia" ~/MMDVMHost/MMDVMBM.ini_copia3
            sed -i "14c TXFrequency=$frecuencia" ~/MMDVMHost/MMDVMBM.ini
            sed -i "14c TXFrequency=$frecuencia" ~/MMDVMHost/MMDVMBM.ini_copia
            sed -i "14c TXFrequency=$frecuencia" ~/MMDVMHost/MMDVMBM.ini_copia2
            sed -i "14c TXFrequency=$frecuencia" ~/MMDVMHost/MMDVMBM.ini_copia3
            #iNDICATIVO
            sed -i "2c Callsign=$tu_indicativo" ~/MMDVMHost/MMDVMBM.ini
            sed -i "2c Callsign=$tu_indicativo" ~/MMDVMHost/MMDVMBM.ini_copia
            sed -i "2c Callsign=$tu_indicativo" ~/MMDVMHost/MMDVMBM.ini_copia2
            sed -i "2c Callsign=$tu_indicativo" ~/MMDVMHost/MMDVMBM.ini_copia3
            #ID
            sed -i "3c Id=$tu_id" ~/MMDVMHost/MMDVMBM.ini
            sed -i "3c Id=$tu_id" ~/MMDVMHost/MMDVMBM.ini_copia
            sed -i "3c Id=$tu_id" ~/MMDVMHost/MMDVMBM.ini_copia2
            sed -i "3c Id=$tu_id" ~/MMDVMHost/MMDVMBM.ini_copia3
            #LATITUD
            sed -i "16c Latitude=$tu_latitud" ~/MMDVMHost/MMDVMBM.ini
            sed -i "16c Latitude=$tu_latitud" ~/MMDVMHost/MMDVMBM.ini_copia
            sed -i "16c Latitude=$tu_latitud" ~/MMDVMHost/MMDVMBM.ini_copia2
            sed -i "16c Latitude=$tu_latitud" ~/MMDVMHost/MMDVMBM.ini_copia3
            #LONGITUD
            sed -i "17c Longitude=$tu_longitud" ~/MMDVMHost/MMDVMBM.ini
            sed -i "17c Longitude=$tu_longitud" ~/MMDVMHost/MMDVMBM.ini_copia
            sed -i "17c Longitude=$tu_longitud" ~/MMDVMHost/MMDVMBM.ini_copia2
            sed -i "17c Longitude=$tu_longitud" ~/MMDVMHost/MMDVMBM.ini_copia3
            #CIUDAD
            sed -i "19c Location=$tu_ciudad" ~/MMDVMHost/MMDVMBM.ini
            sed -i "19c Location=$tu_ciudad" ~/MMDVMHost/MMDVMBM.ini_copia
            sed -i "19c Location=$tu_ciudad" ~/MMDVMHost/MMDVMBM.ini_copia2
            sed -i "19c Location=$tu_ciudad" ~/MMDVMHost/MMDVMBM.ini_copia3
            #WEBId
            sed -i "21c URL=$tu_url" ~/MMDVMHost/MMDVMBM.ini
            sed -i "21c URL=$tu_url" ~/MMDVMHost/MMDVMBM.ini_copia
            sed -i "21c URL=$tu_url" ~/MMDVMHost/MMDVMBM.ini_copia2
            sed -i "21c URL=$tu_url" ~/MMDVMHost/MMDVMBM.ini_copia3
            #TIMEOUT
            sed -i "4c Timeout=$timeou" ~/MMDVMHost/MMDVMBM.ini
            sed -i "4c Timeout=$timeou" ~/MMDVMHost/MMDVMBM.ini_copia
            sed -i "4c Timeout=$timeou" ~/MMDVMHost/MMDVMBM.ini_copia2
            sed -i "4c Timeout=$timeou" ~/MMDVMHost/MMDVMBM.ini_copia3
            #DUPLEX
            sed -i "5c Duplex=$duplex" ~/MMDVMHost/MMDVMBM.ini
            sed -i "5c Duplex=$duplex" ~/MMDVMHost/MMDVMBM.ini_copia
            sed -i "5c Duplex=$duplex" ~/MMDVMHost/MMDVMBM.ini_copia2
            sed -i "5c Duplex=$duplex" ~/MMDVMHost/MMDVMBM.ini_copia3
            #BALIZA
            sed -i "31c Enable=$baliza" ~/MMDVMHost/MMDVMBM.ini
            sed -i "31c Enable=$baliza" ~/MMDVMHost/MMDVMBM.ini_copia
            sed -i "31c Enable=$baliza" ~/MMDVMHost/MMDVMBM.ini_copia2
            sed -i "31c Enable=$baliza" ~/MMDVMHost/MMDVMBM.ini_copia3
            #MODULE D-STAR
            sed -i "$linea4 Module=$module" ~/MMDVMHost/MMDVMBM.ini
            sed -i "$linea4 Module=$module" ~/MMDVMHost/MMDVMBM.ini_copia
            sed -i "$linea4 Module=$module" ~/MMDVMHost/MMDVMBM.ini_copia2
            sed -i "$linea4 Module=$module" ~/MMDVMHost/MMDVMBM.ini_copia3
            #RFMODEHANG
            sed -i "7c RFModeHang=$rfmodehang" ~/MMDVMHost/MMDVMBM.ini
            sed -i "7c RFModeHang=$rfmodehang" ~/MMDVMHost/MMDVMBM.ini_copia
            sed -i "7c RFModeHang=$rfmodehang" ~/MMDVMHost/MMDVMBM.ini_copia2
            sed -i "7c RFModeHang=$rfmodehang" ~/MMDVMHost/MMDVMBM.ini_copia3


#DMR+
            sed -i "13c RXFrequency=$frecuencia" ~/MMDVMHost/MMDVMPLUS.ini
            sed -i "13c RXFrequency=$frecuencia" ~/MMDVMHost/MMDVMPLUS.ini_copia
            sed -i "13c RXFrequency=$frecuencia" ~/MMDVMHost/MMDVMPLUS.ini_copia2
            sed -i "13c RXFrequency=$frecuencia" ~/MMDVMHost/MMDVMPLUS.ini_copia3
            sed -i "14c TXFrequency=$frecuencia" ~/MMDVMHost/MMDVMPLUS.ini
            sed -i "14c TXFrequency=$frecuencia" ~/MMDVMHost/MMDVMPLUS.ini_copia
            sed -i "14c TXFrequency=$frecuencia" ~/MMDVMHost/MMDVMPLUS.ini_copia2
            sed -i "14c TXFrequency=$frecuencia" ~/MMDVMHost/MMDVMPLUS.ini_copia3
            #iNDICATIVO
            sed -i "2c Callsign=$tu_indicativo" ~/MMDVMHost/MMDVMPLUS.ini
            sed -i "2c Callsign=$tu_indicativo" ~/MMDVMHost/MMDVMPLUS.ini_copia
            sed -i "2c Callsign=$tu_indicativo" ~/MMDVMHost/MMDVMPLUS.ini_copia2
            sed -i "2c Callsign=$tu_indicativo" ~/MMDVMHost/MMDVMPLUS.ini_copia3
            #ID
            sed -i "3c Id=$tu_id" ~/MMDVMHost/MMDVMPLUS.ini
            sed -i "3c Id=$tu_id" ~/MMDVMHost/MMDVMPLUS.ini_copia
            sed -i "3c Id=$tu_id" ~/MMDVMHost/MMDVMPLUS.ini_copia2
            sed -i "3c Id=$tu_id" ~/MMDVMHost/MMDVMPLUS.ini_copia3
            #LATITUD
            sed -i "16c Latitude=$tu_latitud" ~/MMDVMHost/MMDVMPLUS.ini
            sed -i "16c Latitude=$tu_latitud" ~/MMDVMHost/MMDVMPLUS.ini_copia
            sed -i "16c Latitude=$tu_latitud" ~/MMDVMHost/MMDVMPLUS.ini_copia2
            sed -i "16c Latitude=$tu_latitud" ~/MMDVMHost/MMDVMPLUS.ini_copia3
            #LONGITUD
            sed -i "17c Longitude=$tu_longitud" ~/MMDVMHost/MMDVMPLUS.ini
            sed -i "17c Longitude=$tu_longitud" ~/MMDVMHost/MMDVMPLUS.ini_copia
            sed -i "17c Longitude=$tu_longitud" ~/MMDVMHost/MMDVMPLUS.ini_copia2
            sed -i "17c Longitude=$tu_longitud" ~/MMDVMHost/MMDVMPLUS.ini_copia3
            #CIUDAD
            sed -i "19c Location=$tu_ciudad" ~/MMDVMHost/MMDVMPLUS.ini
            sed -i "19c Location=$tu_ciudad" ~/MMDVMHost/MMDVMPLUS.ini_copia
            sed -i "19c Location=$tu_ciudad" ~/MMDVMHost/MMDVMPLUS.ini_copia2
            sed -i "19c Location=$tu_ciudad" ~/MMDVMHost/MMDVMPLUS.ini_copia3
            #WEBId
            sed -i "21c URL=$tu_url" ~/MMDVMHost/MMDVMPLUS.ini
            sed -i "21c URL=$tu_url" ~/MMDVMHost/MMDVMPLUS.ini_copia
            sed -i "21c URL=$tu_url" ~/MMDVMHost/MMDVMPLUS.ini_copia2
            sed -i "21c URL=$tu_url" ~/MMDVMHost/MMDVMPLUS.ini_copia3
            #TIMEOUT
            sed -i "4c Timeout=$timeou" ~/MMDVMHost/MMDVMPLUS.ini
            sed -i "4c Timeout=$timeou" ~/MMDVMHost/MMDVMPLUS.ini_copia
            sed -i "4c Timeout=$timeou" ~/MMDVMHost/MMDVMPLUS.ini_copia2
            sed -i "4c Timeout=$timeou" ~/MMDVMHost/MMDVMPLUS.ini_copia3
            #DUPLEX
            sed -i "5c Duplex=$duplex" ~/MMDVMHost/MMDVMPLUS.ini
            sed -i "5c Duplex=$duplex" ~/MMDVMHost/MMDVMPLUS.ini_copia
            sed -i "5c Duplex=$duplex" ~/MMDVMHost/MMDVMPLUS.ini_copia2
            sed -i "5c Duplex=$duplex" ~/MMDVMHost/MMDVMPLUS.ini_copia3
            #BALIZA
            sed -i "31c Enable=$baliza" ~/MMDVMHost/MMDVMPLUS.ini
            sed -i "31c Enable=$baliza" ~/MMDVMHost/MMDVMPLUS.ini_copia
            sed -i "31c Enable=$baliza" ~/MMDVMHost/MMDVMPLUS.ini_copia2
            sed -i "31c Enable=$baliza" ~/MMDVMHost/MMDVMPLUS.ini_copia3
            #MODULE D-STAR
            sed -i "$linea4 Module=$module" ~/MMDVMHost/MMDVMPLUS.ini
            sed -i "$linea4 Module=$module" ~/MMDVMHost/MMDVMPLUS.ini_copia
            sed -i "$linea4 Module=$module" ~/MMDVMHost/MMDVMPLUS.ini_copia2
            sed -i "$linea4 Module=$module" ~/MMDVMHost/MMDVMPLUS.ini_copia3
            #RFMODEHANG
            sed -i "7c RFModeHang=$rfmodehang" ~/MMDVMHost/MMDVMPLUS.ini
            sed -i "7c RFModeHang=$rfmodehang" ~/MMDVMHost/MMDVMPLUS.ini_copia
            sed -i "7c RFModeHang=$rfmodehang" ~/MMDVMHost/MMDVMPLUS.ini_copia2
            sed -i "7c RFModeHang=$rfmodehang" ~/MMDVMHost/MMDVMPLUS.ini_copia3


            
#LIBRE+
            sed -i "12c RXFrequency=$frecuencia" ~/MMDVMHost/MMDVMLIBRE.ini
            sed -i "12c RXFrequency=$frecuencia" ~/MMDVMHost/MMDVMLIBRE.ini_uno
            sed -i "12c RXFrequency=$frecuencia" ~/MMDVMHost/MMDVMLIBRE.ini_dos
            sed -i "13c TXFrequency=$frecuencia" ~/MMDVMHost/MMDVMLIBRE.ini
            sed -i "13c TXFrequency=$frecuencia" ~/MMDVMHost/MMDVMLIBRE.ini_uno
            sed -i "13c TXFrequency=$frecuencia" ~/MMDVMHost/MMDVMLIBRE.ini_dos
            #iNDICATIVO
            sed -i "2c Callsign=$tu_indicativo" ~/MMDVMHost/MMDVMLIBRE.ini
            sed -i "2c Callsign=$tu_indicativo" ~/MMDVMHost/MMDVMLIBRE.ini_uno
            sed -i "2c Callsign=$tu_indicativo" ~/MMDVMHost/MMDVMLIBRE.ini_dos
            #ID
            sed -i "54c Id=$tu_id" ~/MMDVMHost/MMDVMLIBRE.ini
            sed -i "54c Id=$tu_id" ~/MMDVMHost/MMDVMLIBRE.ini_uno
            sed -i "54c Id=$tu_id" ~/MMDVMHost/MMDVMLIBRE.ini_dos
            #LATITUD
            sed -i "15c Latitude=$tu_latitud" ~/MMDVMHost/MMDVMLIBRE.ini
            sed -i "15c Latitude=$tu_latitud" ~/MMDVMHost/MMDVMLIBRE.ini_uno
            sed -i "15c Latitude=$tu_latitud" ~/MMDVMHost/MMDVMLIBRE.ini_dos
            #LONGITUD
            sed -i "16c Longitude=$tu_longitud" ~/MMDVMHost/MMDVMLIBRE.ini
            sed -i "16c Longitude=$tu_longitud" ~/MMDVMHost/MMDVMLIBRE.ini_uno
            sed -i "16c Longitude=$tu_longitud" ~/MMDVMHost/MMDVMLIBRE.ini_dos
            #CIUDAD
            sed -i "18c Location=$tu_ciudad" ~/MMDVMHost/MMDVMLIBRE.ini
            sed -i "18c Location=$tu_ciudad" ~/MMDVMHost/MMDVMLIBRE.ini_uno
            sed -i "18c Location=$tu_ciudad" ~/MMDVMHost/MMDVMLIBRE.ini_dos
            #WEBId
            sed -i "20c URL=$tu_url" ~/MMDVMHost/MMDVMLIBRE.ini
            sed -i "20c URL=$tu_url" ~/MMDVMHost/MMDVMLIBRE.ini_uno
            sed -i "20c URL=$tu_url" ~/MMDVMHost/MMDVMLIBRE.ini_dos
            #TIMEOUT
            sed -i "3c Timeout=$timeou" ~/MMDVMHost/MMDVMLIBRE.ini
            sed -i "3c Timeout=$timeou" ~/MMDVMHost/MMDVMLIBRE.ini_uno
            sed -i "3c Timeout=$timeou" ~/MMDVMHost/MMDVMLIBRE.ini_dos
            #DUPLEX
            sed -i "4c Duplex=$duplex" ~/MMDVMHost/MMDVMLIBRE.ini
            sed -i "4c Duplex=$duplex" ~/MMDVMHost/MMDVMLIBRE.ini_uno
            sed -i "4c Duplex=$duplex" ~/MMDVMHost/MMDVMLIBRE.ini_dos
            #BALIZA
            sed -i "30c Enable=$baliza" ~/MMDVMHost/MMDVMLIBRE.ini
            sed -i "30c Enable=$baliza" ~/MMDVMHost/MMDVMLIBRE.ini_uno
            sed -i "30c Enable=$baliza" ~/MMDVMHost/MMDVMLIBRE.ini_dos
            #MODULE D-STAR
            sed -i "$linea4l Module=$module" ~/MMDVMHost/MMDVMLIBRE.ini
            sed -i "$linea4l Module=$module" ~/MMDVMHost/MMDVMLIBRE.ini_uno
            sed -i "$linea4l Module=$module" ~/MMDVMHost/MMDVMLIBRE.ini_dos
            

#SOLO DSTAR
            sed -i "13c RXFrequency=$frecuencia" ~/MMDVMHost/MMDVMDSTAR.ini
            sed -i "14c TXFrequency=$frecuencia" ~/MMDVMHost/MMDVMDSTAR.ini           
            #iNDICATIVO
            sed -i "2c Callsign=$tu_indicativo" ~/MMDVMHost/MMDVMDSTAR.ini
            #ID
            sed -i "3c Id=$tu_id" ~/MMDVMHost/MMDVMDSTAR.ini
            #LATITUD
            sed -i "16c Latitude=$tu_latitud" ~/MMDVMHost/MMDVMDSTAR.ini
            #LONGITUD
            sed -i "17c Longitude=$tu_longitud" ~/MMDVMHost/MMDVMDSTAR.ini
            #CIUDAD
            sed -i "19c Location=$tu_ciudad" ~/MMDVMHost/MMDVMDSTAR.ini
            #WEBId
            sed -i "21c URL=$tu_url" ~/MMDVMHost/MMDVMDSTAR.ini
            #TIMEOUT
            sed -i "4c Timeout=$timeou" ~/MMDVMHost/MMDVMDSTAR.ini
            #DUPLEX
            sed -i "5c Duplex=$duplex" ~/MMDVMHost/MMDVMDSTAR.ini
            #BALIZA
            sed -i "31c Enable=$baliza" ~/MMDVMHost/MMDVMDSTAR.ini
            #MODULE D-STAR
            sed -i "$linea4 Module=$module" ~/MMDVMHost/MMDVMDSTAR.ini
            #RFMODEHANG
            sed -i "7c RFModeHang=$rfmodehang" ~/MMDVMHost/MMDVMDSTAR.ini


#SOLO FUSION
            sed -i "13c RXFrequency=$frecuencia" ~/MMDVMHost/MMDVMFUSION.ini
            sed -i "14c TXFrequency=$frecuencia" ~/MMDVMHost/MMDVMFUSION.ini           
            #iNDICATIVO
            sed -i "2c Callsign=$tu_indicativo" ~/MMDVMHost/MMDVMFUSION.ini
            #ID
            sed -i "3c Id=$tu_id" ~/MMDVMHost/MMDVMFUSION.ini
            #LATITUD
            sed -i "16c Latitude=$tu_latitud" ~/MMDVMHost/MMDVMFUSION.ini
            #LONGITUD
            sed -i "17c Longitude=$tu_longitud" ~/MMDVMHost/MMDVMFUSION.ini
            #CIUDAD
            sed -i "19c Location=$tu_ciudad" ~/MMDVMHost/MMDVMFUSION.ini
            #WEBId
            sed -i "21c URL=$tu_url" ~/MMDVMHost/MMDVMFUSION.ini
            #TIMEOUT
            sed -i "4c Timeout=$timeou" ~/MMDVMHost/MMDVMFUSION.ini
            #DUPLEX
            sed -i "5c Duplex=$duplex" ~/MMDVMHost/MMDVMFUSION.ini
            #BALIZA
            sed -i "31c Enable=$baliza" ~/MMDVMHost/MMDVMFUSION.ini
            #MODULE D-STAR
            sed -i "$linea4 Module=$module" ~/MMDVMHost/MMDVMFUSION.ini
            #RFMODEHANG
            sed -i "7c RFModeHang=$rfmodehang" ~/MMDVMHost/MMDVMFUSION.ini

#YSF
            sed -i "12c RXFrequency=$frecuencia" ~/YSFClients/YSFGateway/YSFGateway.ini
            sed -i "13c TXFrequency=$frecuencia" ~/YSFClients/YSFGateway/YSFGateway.ini
            #iNDICATIVO
            sed -i "2c Callsign=$tu_indicativo" ~/YSFClients/YSFGateway/YSFGateway.ini
            
                  echo ""
                  echo "Ok, se ha ejecutado correctamente"
                  echo ""
                  break;;
                  [nN]* ) echo ""
                  break;;
esac
done;;












1000) echo ""
while true
do
clear
                ejecutar1=S
                case $ejecutar1 in
                  [sS]* ) echo ""
                  echo "Restaurando copias editores BM, DMR+, LIBRE, RADIO, YSF, BlueDV y SVXLINK"
                  sleep 3
            cd ~/Downloads/copias
            sudo cp -f MMDVM.ini ~/MMDVMHost
            sudo cp -f MMDVM.ini_copia ~/MMDVMHost
            sudo cp -f MMDVM.ini_copia2 ~/MMDVMHost
            sudo cp -f MMDVM.ini_copia3 ~/MMDVMHost
            sudo cp -f MMDVM.ini_original ~/MMDVMHost
            sudo cp -f MMDVMBM.ini ~/MMDVMHost
            sudo cp -f MMDVMBM.ini_copia ~/MMDVMHost
            sudo cp -f MMDVMBM.ini_copia2 ~/MMDVMHost
            sudo cp -f MMDVMBM.ini_copia3 ~/MMDVMHost
            sudo cp -f MMDVMLIBRE.ini ~/MMDVMHost
            sudo cp -f MMDVMLIBRE.ini_uno ~/MMDVMHost
            sudo cp -f MMDVMLIBRE.ini_dos ~/DoMMDVMHost     
            sudo cp -f MMDVMPLUS.ini ~/MMDVMHost
            sudo cp -f MMDVMPLUS.ini_copia ~/MMDVMHost
            sudo cp -f MMDVMPLUS.ini_copia2 ~/MMDVMHost
            sudo cp -f MMDVMPLUS.ini_copia3 ~/MMDVMHost

            #solo Dstar y solo Fusion
            sudo cp -f MMDVMDSTAR.ini ~/MMDVMHost
            sudo cp -f MMDVMFUSION.ini ~/MMDVMHost
            #fin  Dstar y solo Fusion



            sudo cp -f YSFGateway.ini ~/YSFClients/YSFGateway/

            sudo cp -f BlueDVconfig.ini ~/bluedv/

            sudo cp -f svxlink.conf /usr/local/etc/svxlink/
            
            sudo cp -f ModuleEchoLink.conf /usr/local/etc/svxlink/svxlink.d/

                  echo ""
                  echo "Ok, se ha ejecutado correctamente"
                  echo ""
                  break;;
                  [nN]* ) echo ""
                  break;;
esac
done;;
0) echo ""
clear
echo "\33[1;33m   ******************************"
echo "   *                            *"
echo "   *     CERRANDO SCRIPT        *"
echo "   *                            *"
echo "   ******************************"
sleep 1
clear
exit;;	
esac
done

