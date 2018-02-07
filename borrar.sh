#!/bin/bash
while true
do
clear

echo "\33[1;32m   ***********************************************************************"
echo "   *      Script para Copiar y Restaurar Configuraciones \33[1;33mV.02.05\33[1;32m         *"
echo "   *                          \33[1;31mby EA3EIZ\33[1;32m                                  *"
echo "   ***********************************************************************"
echo "\33[1;36m   1)\33[1;37m Copiar BM, DMR+, LIBRE, RADIO, solo D-STAR, solo FUSION"
echo "      YSF2DMR, YSF, BlueDV y SVXLINK en Downloads"
echo ""
echo "\33[1;36m   2)\33[1;37m Restaurar BM, DMR+, LIBRE, RADIO, solo D-STAR, solo FUSION"
echo "      YSF2DMR, YSF, BlueDV y SVXLINK de Downloads"
#echo "\33[1;36m   2)\33[1;37m Actualizar DV4mini Control Panel (Stick ID:8D-6E-8C V1,77)"
echo ""
echo "\33[1;36m   3)\33[1;32m Cambiar Indicativo, Id, Frecuencia, Latitud, Longitud"
echo "\33[1;36m   \33[1;32m   Ciudad, Url, Timeout, Duplex, Baliza, Módulo D-STAR"
echo "\33[1;36m   \33[1;32m   y RFModeHang a todos los .INI"
echo ""
echo "\33[1;36m   0)\33[1;34m Salir del script \33[1;31m OJO!! no salir con ctrl+c ni con la x"
echo ""
echo -n "\33[1;36m   Elige una opción del 0 al 3: " 
read escoger_menu
echo ""
case $escoger_menu in
#

3) echo ""
while true
do                      
                          echo "ABRIR EDITOR editar_INIS.sh"
                          actualizar=S 
                          case $actualizar in
                          [sS]* ) echo ""
                          clear
                          sudo sh editar_INIS.sh
                          exit;
                          break;;
                          [nN]* ) echo ""
                          break;;
esac
done;;
1) echo ""
while true
do
clear
		ejecutar1=S
		case $ejecutar1 in
		[sS]* ) echo ""
            echo "Haciendo copias editores BM, DMR+, LIBRE, RADIO"
            echo "Solo D-STAR, solo FUSION, YSF2DMR, YSF, BlueDV y SVXLINK"
            sleep 5
            
            #Comprueba si existe el fichero info.ini
            if [ -f /home/pi/Downloads/info.ini ];
            then
            echo ""
            else
            sudo cp /home/pi/V30/info.ini /home/pi/Downloads
            fi
            sudo chmod 777 /home/pi/Downloads/info.ini
            #===============================================


match1=$(awk "NR==2" /home/pi/Downloads/info.ini)
sed -i "1c $match1" /home/pi/Downloads/info.ini



            cd /home/pi/MMDVMHost
            sudo cp -f MMDVM.ini /home/pi/Downloads
            sudo cp -f MMDVM.ini_copia /home/pi/Downloads
            sudo cp -f MMDVM.ini_copia2 /home/pi/Downloads
            sudo cp -f MMDVM.ini_copia3 /home/pi/Downloads
            sudo cp -f MMDVM.ini_original /home/pi/Downloads
            sudo cp -f MMDVMBM.ini /home/pi/Downloads
            sudo cp -f MMDVMBM.ini_copia /home/pi/Downloads
            sudo cp -f MMDVMBM.ini_copia2 /home/pi/Downloads
            sudo cp -f MMDVMBM.ini_copia3 /home/pi/Downloads
            sudo cp -f MMDVMLIBRE.ini /home/pi/Downloads
            sudo cp -f MMDVMLIBRE.ini_uno /home/pi/Downloads
            sudo cp -f MMDVMLIBRE.ini_dos /home/pi/Downloads      
            sudo cp -f MMDVMPLUS.ini /home/pi/Downloads
            sudo cp -f MMDVMPLUS.ini_copia /home/pi/Downloads
            sudo cp -f MMDVMPLUS.ini_copia2 /home/pi/Downloads
            sudo cp -f MMDVMPLUS.ini_copia3 /home/pi/Downloads

            #solo Dstar y solo Fusion
            cp -f MMDVMDSTAR.ini /home/pi/Downloads
            cp -f MMDVMFUSION.ini /home/pi/Downloads
            #fin  Dstar y solo Fusion

            cd  /home/pi/YSF2DMR
            cp -f YSF2DMR.ini /home/pi/Downloads


            cd  /home/pi/YSFClients/YSFGateway/
            sudo cp -f YSFGateway.ini /home/pi/Downloads
            
            cd /home/pi/bluedv/
            sudo cp -f BlueDVconfig.ini /home/pi/Downloads

            cd /usr/local/etc/svxlink/
            sudo cp -f svxlink.conf /home/pi/Downloads

            cd /usr/local/etc/svxlink/svxlink.d/
            sudo cp -f ModuleEchoLink.conf /home/pi/Downloads
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

match1=$(awk "NR==1" /home/pi/Downloads/info.ini)
match2=$(awk "NR==2" /home/pi/Downloads/info.ini)

if [ $match1 = $match2 ];
      then
      clear
echo "\33[1;32m" #color verde
echo "***************************************************"
echo "* ESTAS RESTAURANDO UNA COPIA DE LA MISMA VERSIÓN *"
echo "*      DEL MMDVMHOST QUE TIENES INSTALADO         *"
echo "***************************************************"

      else
clear
echo "\33[1;31m" #color rojo
echo "************************************************************"
echo "* ESTAS RESTAURANDO UNA COPIA CON LOS INIS DE UNA VERSIÓN  *"
echo "*      ANTERIOR DEL MMDVMHOST QUE ESTÁ INSTALADO           *"
echo "*        PODRÍA SER QUE LOS INIS NO FUNCIONARAN            *"
echo "************************************************************"
fi
echo "\33[1;36m" #color cian
read -p 'QUIERES SEGUIR ADELANTE S/N ? ' sino
  case $sino in
      s|S) 
clear
echo "\33[1;32m" #color verde
echo "*********************************************"
echo "*     SE ESTÁ REALIZANDO LA RESTAURACIÓN    *"
echo "*********************************************"
sleep 3
            cd /home/pi/Downloads
            sudo cp -f MMDVM.ini /home/pi/MMDVMHost
            sudo cp -f MMDVM.ini_copia /home/pi/MMDVMHost
            sudo cp -f MMDVM.ini_copia2 /home/pi/MMDVMHost
            sudo cp -f MMDVM.ini_copia3 /home/pi/MMDVMHost
            sudo cp -f MMDVM.ini_original /home/pi/MMDVMHost
            sudo cp -f MMDVMBM.ini /home/pi/MMDVMHost
            sudo cp -f MMDVMBM.ini_copia /home/pi/MMDVMHost
            sudo cp -f MMDVMBM.ini_copia2 /home/pi/MMDVMHost
            sudo cp -f MMDVMBM.ini_copia3 /home/pi/MMDVMHost
            sudo cp -f MMDVMLIBRE.ini /home/pi/MMDVMHost
            sudo cp -f MMDVMLIBRE.ini_uno /home/pi/MMDVMHost
            sudo cp -f MMDVMLIBRE.ini_dos /home/pi/DoMMDVMHost     
            sudo cp -f MMDVMPLUS.ini /home/pi/MMDVMHost
            sudo cp -f MMDVMPLUS.ini_copia /home/pi/MMDVMHost
            sudo cp -f MMDVMPLUS.ini_copia2 /home/pi/MMDVMHost
            sudo cp -f MMDVMPLUS.ini_copia3 /home/pi/MMDVMHost

            #solo Dstar y solo Fusion
            cp -f MMDVMDSTAR.ini /home/pi/MMDVMHost
            cp -f MMDVMFUSION.ini /home/pi/MMDVMHost
            #fin  Dstar y solo Fusion

            cp -f YSF2DMR.ini /home/pi/YSF2DMR

            sudo cp -f YSFGateway.ini /home/pi/YSFClients/YSFGateway/

            sudo cp -f BlueDVconfig.ini /home/pi/bluedv/

            sudo cp -f svxlink.conf /usr/local/etc/svxlink/
            
            sudo cp -f ModuleEchoLink.conf /usr/local/etc/svxlink/svxlink.d/
      
      ;;
      *)
         clear
echo "\33[1;31m" #color rojo
echo "*********************************************"
echo "*        NO SE HIZO LA RESTAURACIÓN         *"
echo "*********************************************"
sleep 3
      ;;

      esac

          		echo ""
			echo "Ok, se ha ejecutado correctamente"
			echo ""
			break;;
			[nN]* ) echo ""
			break;;
esac
done;;
3000) echo ""
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
            read -p 'Introduce valor Duplex (Ej. 0-simple  1-Repetidor) : ' duplex
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
            modulo=`grep -n -m 1 '\<Module\>' /home/pi/MMDVMHost/MMDVM.ini`
            linea=`expr substr $modulo 1 2`
            letra1=c
            linea4=$linea$letra1
            # ====================================================================


            #rutina para localizar el número de linea en el MMDVMLIBRE.inil donde está el Module D-STAR
            modulol=`grep -n -m 1 '\<Module\>' /home/pi/MMDVMHost/MMDVMLIBRE.ini`
            lineal=`expr substr $modulol 1 2`
            letra1l=c
            linea4l=$lineal$letra1l
            # ====================================================================


            #Radio
            sed -i "13c RXFrequency=$frecuencia" /home/pi/MMDVMHost/MMDVM.ini
            sed -i "13c RXFrequency=$frecuencia" /home/pi/MMDVMHost/MMDVM.ini_copia
            sed -i "13c RXFrequency=$frecuencia" /home/pi/MMDVMHost/MMDVM.ini_copia2
            sed -i "13c RXFrequency=$frecuencia" /home/pi/MMDVMHost/MMDVM.ini_copia3
            sed -i "14c TXFrequency=$frecuencia" /home/pi/MMDVMHost/MMDVM.ini
            sed -i "14c TXFrequency=$frecuencia" /home/pi/MMDVMHost/MMDVM.ini_copia
            sed -i "14c TXFrequency=$frecuencia" /home/pi/MMDVMHost/MMDVM.ini_copia2
            sed -i "14c TXFrequency=$frecuencia" /home/pi/MMDVMHost/MMDVM.ini_copia3
            #iNDICATIVO
            sed -i "2c Callsign=$tu_indicativo" /home/pi/MMDVMHost/MMDVM.ini
            sed -i "2c Callsign=$tu_indicativo" /home/pi/MMDVMHost/MMDVM.ini_copia
            sed -i "2c Callsign=$tu_indicativo" /home/pi/MMDVMHost/MMDVM.ini_copia2
            sed -i "2c Callsign=$tu_indicativo" /home/pi/MMDVMHost/MMDVM.ini_copia3
            #ID
            sed -i "3c Id=$tu_id" /home/pi/MMDVMHost/MMDVM.ini
            sed -i "3c Id=$tu_id" /home/pi/MMDVMHost/MMDVM.ini_copia
            sed -i "3c Id=$tu_id" /home/pi/MMDVMHost/MMDVM.ini_copia2
            sed -i "3c Id=$tu_id" /home/pi/MMDVMHost/MMDVM.ini_copia3
            #LATITUD
            sed -i "16c Latitude=$tu_latitud" /home/pi/MMDVMHost/MMDVM.ini
            sed -i "16c Latitude=$tu_latitud" /home/pi/MMDVMHost/MMDVM.ini_copia
            sed -i "16c Latitude=$tu_latitud" /home/pi/MMDVMHost/MMDVM.ini_copia2
            sed -i "16c Latitude=$tu_latitud" /home/pi/MMDVMHost/MMDVM.ini_copia3
            #LONGITUD
            sed -i "17c Longitude=$tu_longitud" /home/pi/MMDVMHost/MMDVM.ini
            sed -i "17c Longitude=$tu_longitud" /home/pi/MMDVMHost/MMDVM.ini_copia
            sed -i "17c Longitude=$tu_longitud" /home/pi/MMDVMHost/MMDVM.ini_copia2
            sed -i "17c Longitude=$tu_longitud" /home/pi/MMDVMHost/MMDVM.ini_copia3
            #CIUDAD
            sed -i "19c Location=$tu_ciudad" /home/pi/MMDVMHost/MMDVM.ini
            sed -i "19c Location=$tu_ciudad" /home/pi/MMDVMHost/MMDVM.ini_copia
            sed -i "19c Location=$tu_ciudad" /home/pi/MMDVMHost/MMDVM.ini_copia2
            sed -i "19c Location=$tu_ciudad" /home/pi/MMDVMHost/MMDVM.ini_copia3
            #WEBId
            sed -i "21c URL=$tu_url" /home/pi/MMDVMHost/MMDVM.ini
            sed -i "21c URL=$tu_url" /home/pi/MMDVMHost/MMDVM.ini_copia
            sed -i "21c URL=$tu_url" /home/pi/MMDVMHost/MMDVM.ini_copia2
            sed -i "21c URL=$tu_url" /home/pi/MMDVMHost/MMDVM.ini_copia3
            #TIMEOUT
            sed -i "4c Timeout=$timeou" /home/pi/MMDVMHost/MMDVM.ini
            sed -i "4c Timeout=$timeou" /home/pi/MMDVMHost/MMDVM.ini_copia
            sed -i "4c Timeout=$timeou" /home/pi/MMDVMHost/MMDVM.ini_copia2
            sed -i "4c Timeout=$timeou" /home/pi/MMDVMHost/MMDVM.ini_copia3
            #DUPLEX
            sed -i "5c Duplex=$duplex" /home/pi/MMDVMHost/MMDVM.ini
            sed -i "5c Duplex=$duplex" /home/pi/MMDVMHost/MMDVM.ini_copia
            sed -i "5c Duplex=$duplex" /home/pi/MMDVMHost/MMDVM.ini_copia2
            sed -i "5c Duplex=$duplex" /home/pi/MMDVMHost/MMDVM.ini_copia3
            #BALIZA
            sed -i "31c Enable=$baliza" /home/pi/MMDVMHost/MMDVM.ini
            sed -i "31c Enable=$baliza" /home/pi/MMDVMHost/MMDVM.ini_copia
            sed -i "31c Enable=$baliza" /home/pi/MMDVMHost/MMDVM.ini_copia2
            sed -i "31c Enable=$baliza" /home/pi/MMDVMHost/MMDVM.ini_copia3
            #MODULE D-STAR
            sed -i "$linea4 Module=$module" /home/pi/MMDVMHost/MMDVM.ini
            sed -i "$linea4 Module=$module" /home/pi/MMDVMHost/MMDVM.ini_copia
            sed -i "$linea4 Module=$module" /home/pi/MMDVMHost/MMDVM.ini_copia2
            sed -i "$linea4 Module=$module" /home/pi/MMDVMHost/MMDVM.ini_copia3
            #RFMODEHANG
            sed -i "7c RFModeHang=$rfmodehang" /home/pi/MMDVMHost/MMDVM.ini
            sed -i "7c RFModeHang=$rfmodehang" /home/pi/MMDVMHost/MMDVM.ini_copia
            sed -i "7c RFModeHang=$rfmodehang" /home/pi/MMDVMHost/MMDVM.ini_copia2
            sed -i "7c RFModeHang=$rfmodehang" /home/pi/MMDVMHost/MMDVM.ini_copia3


#BM
            sed -i "13c RXFrequency=$frecuencia" /home/pi/MMDVMHost/MMDVMBM.ini
            sed -i "13c RXFrequency=$frecuencia" /home/pi/MMDVMHost/MMDVMBM.ini_copia
            sed -i "13c RXFrequency=$frecuencia" /home/pi/MMDVMHost/MMDVMBM.ini_copia2
            sed -i "13c RXFrequency=$frecuencia" /home/pi/MMDVMHost/MMDVMBM.ini_copia3
            sed -i "14c TXFrequency=$frecuencia" /home/pi/MMDVMHost/MMDVMBM.ini
            sed -i "14c TXFrequency=$frecuencia" /home/pi/MMDVMHost/MMDVMBM.ini_copia
            sed -i "14c TXFrequency=$frecuencia" /home/pi/MMDVMHost/MMDVMBM.ini_copia2
            sed -i "14c TXFrequency=$frecuencia" /home/pi/MMDVMHost/MMDVMBM.ini_copia3
            #iNDICATIVO
            sed -i "2c Callsign=$tu_indicativo" /home/pi/MMDVMHost/MMDVMBM.ini
            sed -i "2c Callsign=$tu_indicativo" /home/pi/MMDVMHost/MMDVMBM.ini_copia
            sed -i "2c Callsign=$tu_indicativo" /home/pi/MMDVMHost/MMDVMBM.ini_copia2
            sed -i "2c Callsign=$tu_indicativo" /home/pi/MMDVMHost/MMDVMBM.ini_copia3
            #ID
            sed -i "3c Id=$tu_id" /home/pi/MMDVMHost/MMDVMBM.ini
            sed -i "3c Id=$tu_id" /home/pi/MMDVMHost/MMDVMBM.ini_copia
            sed -i "3c Id=$tu_id" /home/pi/MMDVMHost/MMDVMBM.ini_copia2
            sed -i "3c Id=$tu_id" /home/pi/MMDVMHost/MMDVMBM.ini_copia3
            #LATITUD
            sed -i "16c Latitude=$tu_latitud" /home/pi/MMDVMHost/MMDVMBM.ini
            sed -i "16c Latitude=$tu_latitud" /home/pi/MMDVMHost/MMDVMBM.ini_copia
            sed -i "16c Latitude=$tu_latitud" /home/pi/MMDVMHost/MMDVMBM.ini_copia2
            sed -i "16c Latitude=$tu_latitud" /home/pi/MMDVMHost/MMDVMBM.ini_copia3
            #LONGITUD
            sed -i "17c Longitude=$tu_longitud" /home/pi/MMDVMHost/MMDVMBM.ini
            sed -i "17c Longitude=$tu_longitud" /home/pi/MMDVMHost/MMDVMBM.ini_copia
            sed -i "17c Longitude=$tu_longitud" /home/pi/MMDVMHost/MMDVMBM.ini_copia2
            sed -i "17c Longitude=$tu_longitud" /home/pi/MMDVMHost/MMDVMBM.ini_copia3
            #CIUDAD
            sed -i "19c Location=$tu_ciudad" /home/pi/MMDVMHost/MMDVMBM.ini
            sed -i "19c Location=$tu_ciudad" /home/pi/MMDVMHost/MMDVMBM.ini_copia
            sed -i "19c Location=$tu_ciudad" /home/pi/MMDVMHost/MMDVMBM.ini_copia2
            sed -i "19c Location=$tu_ciudad" /home/pi/MMDVMHost/MMDVMBM.ini_copia3
            #WEBId
            sed -i "21c URL=$tu_url" /home/pi/MMDVMHost/MMDVMBM.ini
            sed -i "21c URL=$tu_url" /home/pi/MMDVMHost/MMDVMBM.ini_copia
            sed -i "21c URL=$tu_url" /home/pi/MMDVMHost/MMDVMBM.ini_copia2
            sed -i "21c URL=$tu_url" /home/pi/MMDVMHost/MMDVMBM.ini_copia3
            #TIMEOUT
            sed -i "4c Timeout=$timeou" /home/pi/MMDVMHost/MMDVMBM.ini
            sed -i "4c Timeout=$timeou" /home/pi/MMDVMHost/MMDVMBM.ini_copia
            sed -i "4c Timeout=$timeou" /home/pi/MMDVMHost/MMDVMBM.ini_copia2
            sed -i "4c Timeout=$timeou" /home/pi/MMDVMHost/MMDVMBM.ini_copia3
            #DUPLEX
            sed -i "5c Duplex=$duplex" /home/pi/MMDVMHost/MMDVMBM.ini
            sed -i "5c Duplex=$duplex" /home/pi/MMDVMHost/MMDVMBM.ini_copia
            sed -i "5c Duplex=$duplex" /home/pi/MMDVMHost/MMDVMBM.ini_copia2
            sed -i "5c Duplex=$duplex" /home/pi/MMDVMHost/MMDVMBM.ini_copia3
            #BALIZA
            sed -i "31c Enable=$baliza" /home/pi/MMDVMHost/MMDVMBM.ini
            sed -i "31c Enable=$baliza" /home/pi/MMDVMHost/MMDVMBM.ini_copia
            sed -i "31c Enable=$baliza" /home/pi/MMDVMHost/MMDVMBM.ini_copia2
            sed -i "31c Enable=$baliza" /home/pi/MMDVMHost/MMDVMBM.ini_copia3
            #MODULE D-STAR
            sed -i "$linea4 Module=$module" /home/pi/MMDVMHost/MMDVMBM.ini
            sed -i "$linea4 Module=$module" /home/pi/MMDVMHost/MMDVMBM.ini_copia
            sed -i "$linea4 Module=$module" /home/pi/MMDVMHost/MMDVMBM.ini_copia2
            sed -i "$linea4 Module=$module" /home/pi/MMDVMHost/MMDVMBM.ini_copia3
            #RFMODEHANG
            sed -i "7c RFModeHang=$rfmodehang" /home/pi/MMDVMHost/MMDVMBM.ini
            sed -i "7c RFModeHang=$rfmodehang" /home/pi/MMDVMHost/MMDVMBM.ini_copia
            sed -i "7c RFModeHang=$rfmodehang" /home/pi/MMDVMHost/MMDVMBM.ini_copia2
            sed -i "7c RFModeHang=$rfmodehang" /home/pi/MMDVMHost/MMDVMBM.ini_copia3


#DMR+
            sed -i "13c RXFrequency=$frecuencia" /home/pi/MMDVMHost/MMDVMPLUS.ini
            sed -i "13c RXFrequency=$frecuencia" /home/pi/MMDVMHost/MMDVMPLUS.ini_copia
            sed -i "13c RXFrequency=$frecuencia" /home/pi/MMDVMHost/MMDVMPLUS.ini_copia2
            sed -i "13c RXFrequency=$frecuencia" /home/pi/MMDVMHost/MMDVMPLUS.ini_copia3
            sed -i "14c TXFrequency=$frecuencia" /home/pi/MMDVMHost/MMDVMPLUS.ini
            sed -i "14c TXFrequency=$frecuencia" /home/pi/MMDVMHost/MMDVMPLUS.ini_copia
            sed -i "14c TXFrequency=$frecuencia" /home/pi/MMDVMHost/MMDVMPLUS.ini_copia2
            sed -i "14c TXFrequency=$frecuencia" /home/pi/MMDVMHost/MMDVMPLUS.ini_copia3
            #iNDICATIVO
            sed -i "2c Callsign=$tu_indicativo" /home/pi/MMDVMHost/MMDVMPLUS.ini
            sed -i "2c Callsign=$tu_indicativo" /home/pi/MMDVMHost/MMDVMPLUS.ini_copia
            sed -i "2c Callsign=$tu_indicativo" /home/pi/MMDVMHost/MMDVMPLUS.ini_copia2
            sed -i "2c Callsign=$tu_indicativo" /home/pi/MMDVMHost/MMDVMPLUS.ini_copia3
            #ID
            sed -i "3c Id=$tu_id" /home/pi/MMDVMHost/MMDVMPLUS.ini
            sed -i "3c Id=$tu_id" /home/pi/MMDVMHost/MMDVMPLUS.ini_copia
            sed -i "3c Id=$tu_id" /home/pi/MMDVMHost/MMDVMPLUS.ini_copia2
            sed -i "3c Id=$tu_id" /home/pi/MMDVMHost/MMDVMPLUS.ini_copia3
            #LATITUD
            sed -i "16c Latitude=$tu_latitud" /home/pi/MMDVMHost/MMDVMPLUS.ini
            sed -i "16c Latitude=$tu_latitud" /home/pi/MMDVMHost/MMDVMPLUS.ini_copia
            sed -i "16c Latitude=$tu_latitud" /home/pi/MMDVMHost/MMDVMPLUS.ini_copia2
            sed -i "16c Latitude=$tu_latitud" /home/pi/MMDVMHost/MMDVMPLUS.ini_copia3
            #LONGITUD
            sed -i "17c Longitude=$tu_longitud" /home/pi/MMDVMHost/MMDVMPLUS.ini
            sed -i "17c Longitude=$tu_longitud" /home/pi/MMDVMHost/MMDVMPLUS.ini_copia
            sed -i "17c Longitude=$tu_longitud" /home/pi/MMDVMHost/MMDVMPLUS.ini_copia2
            sed -i "17c Longitude=$tu_longitud" /home/pi/MMDVMHost/MMDVMPLUS.ini_copia3
            #CIUDAD
            sed -i "19c Location=$tu_ciudad" /home/pi/MMDVMHost/MMDVMPLUS.ini
            sed -i "19c Location=$tu_ciudad" /home/pi/MMDVMHost/MMDVMPLUS.ini_copia
            sed -i "19c Location=$tu_ciudad" /home/pi/MMDVMHost/MMDVMPLUS.ini_copia2
            sed -i "19c Location=$tu_ciudad" /home/pi/MMDVMHost/MMDVMPLUS.ini_copia3
            #WEBId
            sed -i "21c URL=$tu_url" /home/pi/MMDVMHost/MMDVMPLUS.ini
            sed -i "21c URL=$tu_url" /home/pi/MMDVMHost/MMDVMPLUS.ini_copia
            sed -i "21c URL=$tu_url" /home/pi/MMDVMHost/MMDVMPLUS.ini_copia2
            sed -i "21c URL=$tu_url" /home/pi/MMDVMHost/MMDVMPLUS.ini_copia3
            #TIMEOUT
            sed -i "4c Timeout=$timeou" /home/pi/MMDVMHost/MMDVMPLUS.ini
            sed -i "4c Timeout=$timeou" /home/pi/MMDVMHost/MMDVMPLUS.ini_copia
            sed -i "4c Timeout=$timeou" /home/pi/MMDVMHost/MMDVMPLUS.ini_copia2
            sed -i "4c Timeout=$timeou" /home/pi/MMDVMHost/MMDVMPLUS.ini_copia3
            #DUPLEX
            sed -i "5c Duplex=$duplex" /home/pi/MMDVMHost/MMDVMPLUS.ini
            sed -i "5c Duplex=$duplex" /home/pi/MMDVMHost/MMDVMPLUS.ini_copia
            sed -i "5c Duplex=$duplex" /home/pi/MMDVMHost/MMDVMPLUS.ini_copia2
            sed -i "5c Duplex=$duplex" /home/pi/MMDVMHost/MMDVMPLUS.ini_copia3
            #BALIZA
            sed -i "31c Enable=$baliza" /home/pi/MMDVMHost/MMDVMPLUS.ini
            sed -i "31c Enable=$baliza" /home/pi/MMDVMHost/MMDVMPLUS.ini_copia
            sed -i "31c Enable=$baliza" /home/pi/MMDVMHost/MMDVMPLUS.ini_copia2
            sed -i "31c Enable=$baliza" /home/pi/MMDVMHost/MMDVMPLUS.ini_copia3
            #MODULE D-STAR
            sed -i "$linea4 Module=$module" /home/pi/MMDVMHost/MMDVMPLUS.ini
            sed -i "$linea4 Module=$module" /home/pi/MMDVMHost/MMDVMPLUS.ini_copia
            sed -i "$linea4 Module=$module" /home/pi/MMDVMHost/MMDVMPLUS.ini_copia2
            sed -i "$linea4 Module=$module" /home/pi/MMDVMHost/MMDVMPLUS.ini_copia3
            #RFMODEHANG
            sed -i "7c RFModeHang=$rfmodehang" /home/pi/MMDVMHost/MMDVMPLUS.ini
            sed -i "7c RFModeHang=$rfmodehang" /home/pi/MMDVMHost/MMDVMPLUS.ini_copia
            sed -i "7c RFModeHang=$rfmodehang" /home/pi/MMDVMHost/MMDVMPLUS.ini_copia2
            sed -i "7c RFModeHang=$rfmodehang" /home/pi/MMDVMHost/MMDVMPLUS.ini_copia3


            
#LIBRE+
            sed -i "12c RXFrequency=$frecuencia" /home/pi/MMDVMHost/MMDVMLIBRE.ini
            sed -i "12c RXFrequency=$frecuencia" /home/pi/MMDVMHost/MMDVMLIBRE.ini_uno
            sed -i "12c RXFrequency=$frecuencia" /home/pi/MMDVMHost/MMDVMLIBRE.ini_dos
            sed -i "13c TXFrequency=$frecuencia" /home/pi/MMDVMHost/MMDVMLIBRE.ini
            sed -i "13c TXFrequency=$frecuencia" /home/pi/MMDVMHost/MMDVMLIBRE.ini_uno
            sed -i "13c TXFrequency=$frecuencia" /home/pi/MMDVMHost/MMDVMLIBRE.ini_dos
            #iNDICATIVO
            sed -i "2c Callsign=$tu_indicativo" /home/pi/MMDVMHost/MMDVMLIBRE.ini
            sed -i "2c Callsign=$tu_indicativo" /home/pi/MMDVMHost/MMDVMLIBRE.ini_uno
            sed -i "2c Callsign=$tu_indicativo" /home/pi/MMDVMHost/MMDVMLIBRE.ini_dos
            #ID
            sed -i "54c Id=$tu_id" /home/pi/MMDVMHost/MMDVMLIBRE.ini
            sed -i "54c Id=$tu_id" /home/pi/MMDVMHost/MMDVMLIBRE.ini_uno
            sed -i "54c Id=$tu_id" /home/pi/MMDVMHost/MMDVMLIBRE.ini_dos
            #LATITUD
            sed -i "15c Latitude=$tu_latitud" /home/pi/MMDVMHost/MMDVMLIBRE.ini
            sed -i "15c Latitude=$tu_latitud" /home/pi/MMDVMHost/MMDVMLIBRE.ini_uno
            sed -i "15c Latitude=$tu_latitud" /home/pi/MMDVMHost/MMDVMLIBRE.ini_dos
            #LONGITUD
            sed -i "16c Longitude=$tu_longitud" /home/pi/MMDVMHost/MMDVMLIBRE.ini
            sed -i "16c Longitude=$tu_longitud" /home/pi/MMDVMHost/MMDVMLIBRE.ini_uno
            sed -i "16c Longitude=$tu_longitud" /home/pi/MMDVMHost/MMDVMLIBRE.ini_dos
            #CIUDAD
            sed -i "18c Location=$tu_ciudad" /home/pi/MMDVMHost/MMDVMLIBRE.ini
            sed -i "18c Location=$tu_ciudad" /home/pi/MMDVMHost/MMDVMLIBRE.ini_uno
            sed -i "18c Location=$tu_ciudad" /home/pi/MMDVMHost/MMDVMLIBRE.ini_dos
            #WEBId
            sed -i "20c URL=$tu_url" /home/pi/MMDVMHost/MMDVMLIBRE.ini
            sed -i "20c URL=$tu_url" /home/pi/MMDVMHost/MMDVMLIBRE.ini_uno
            sed -i "20c URL=$tu_url" /home/pi/MMDVMHost/MMDVMLIBRE.ini_dos
            #TIMEOUT
            sed -i "3c Timeout=$timeou" /home/pi/MMDVMHost/MMDVMLIBRE.ini
            sed -i "3c Timeout=$timeou" /home/pi/MMDVMHost/MMDVMLIBRE.ini_uno
            sed -i "3c Timeout=$timeou" /home/pi/MMDVMHost/MMDVMLIBRE.ini_dos
            #DUPLEX
            sed -i "4c Duplex=$duplex" /home/pi/MMDVMHost/MMDVMLIBRE.ini
            sed -i "4c Duplex=$duplex" /home/pi/MMDVMHost/MMDVMLIBRE.ini_uno
            sed -i "4c Duplex=$duplex" /home/pi/MMDVMHost/MMDVMLIBRE.ini_dos
            #BALIZA
            sed -i "30c Enable=$baliza" /home/pi/MMDVMHost/MMDVMLIBRE.ini
            sed -i "30c Enable=$baliza" /home/pi/MMDVMHost/MMDVMLIBRE.ini_uno
            sed -i "30c Enable=$baliza" /home/pi/MMDVMHost/MMDVMLIBRE.ini_dos
            #MODULE D-STAR
            sed -i "$linea4l Module=$module" /home/pi/MMDVMHost/MMDVMLIBRE.ini
            sed -i "$linea4l Module=$module" /home/pi/MMDVMHost/MMDVMLIBRE.ini_uno
            sed -i "$linea4l Module=$module" /home/pi/MMDVMHost/MMDVMLIBRE.ini_dos
            

#SOLO DSTAR
            sed -i "13c RXFrequency=$frecuencia" /home/pi/MMDVMHost/MMDVMDSTAR.ini
            sed -i "14c TXFrequency=$frecuencia" /home/pi/MMDVMHost/MMDVMDSTAR.ini           
            #iNDICATIVO
            sed -i "2c Callsign=$tu_indicativo" /home/pi/MMDVMHost/MMDVMDSTAR.ini
            #ID
            sed -i "3c Id=$tu_id" /home/pi/MMDVMHost/MMDVMDSTAR.ini
            #LATITUD
            sed -i "16c Latitude=$tu_latitud" /home/pi/MMDVMHost/MMDVMDSTAR.ini
            #LONGITUD
            sed -i "17c Longitude=$tu_longitud" /home/pi/MMDVMHost/MMDVMDSTAR.ini
            #CIUDAD
            sed -i "19c Location=$tu_ciudad" /home/pi/MMDVMHost/MMDVMDSTAR.ini
            #WEBId
            sed -i "21c URL=$tu_url" /home/pi/MMDVMHost/MMDVMDSTAR.ini
            #TIMEOUT
            sed -i "4c Timeout=$timeou" /home/pi/MMDVMHost/MMDVMDSTAR.ini
            #DUPLEX
            sed -i "5c Duplex=$duplex" /home/pi/MMDVMHost/MMDVMDSTAR.ini
            #BALIZA
            sed -i "31c Enable=$baliza" /home/pi/MMDVMHost/MMDVMDSTAR.ini
            #MODULE D-STAR
            sed -i "$linea4 Module=$module" /home/pi/MMDVMHost/MMDVMDSTAR.ini
            #RFMODEHANG
            sed -i "7c RFModeHang=$rfmodehang" /home/pi/MMDVMHost/MMDVMDSTAR.ini


#SOLO FUSION
            sed -i "13c RXFrequency=$frecuencia" /home/pi/MMDVMHost/MMDVMFUSION.ini
            sed -i "14c TXFrequency=$frecuencia" /home/pi/MMDVMHost/MMDVMFUSION.ini           
            #iNDICATIVO
            sed -i "2c Callsign=$tu_indicativo" /home/pi/MMDVMHost/MMDVMFUSION.ini
            #ID
            sed -i "3c Id=$tu_id" /home/pi/MMDVMHost/MMDVMFUSION.ini
            #LATITUD
            sed -i "16c Latitude=$tu_latitud" /home/pi/MMDVMHost/MMDVMFUSION.ini
            #LONGITUD
            sed -i "17c Longitude=$tu_longitud" /home/pi/MMDVMHost/MMDVMFUSION.ini
            #CIUDAD
            sed -i "19c Location=$tu_ciudad" /home/pi/MMDVMHost/MMDVMFUSION.ini
            #WEBId
            sed -i "21c URL=$tu_url" /home/pi/MMDVMHost/MMDVMFUSION.ini
            #TIMEOUT
            sed -i "4c Timeout=$timeou" /home/pi/MMDVMHost/MMDVMFUSION.ini
            #DUPLEX
            sed -i "5c Duplex=$duplex" /home/pi/MMDVMHost/MMDVMFUSION.ini
            #BALIZA
            sed -i "31c Enable=$baliza" /home/pi/MMDVMHost/MMDVMFUSION.ini
            #MODULE D-STAR
            sed -i "$linea4 Module=$module" /home/pi/MMDVMHost/MMDVMFUSION.ini
            #RFMODEHANG
            sed -i "7c RFModeHang=$rfmodehang" /home/pi/MMDVMHost/MMDVMFUSION.ini

#YSF
            sed -i "12c RXFrequency=$frecuencia" /home/pi/YSFClients/YSFGateway/YSFGateway.ini
            sed -i "13c TXFrequency=$frecuencia" /home/pi/YSFClients/YSFGateway/YSFGateway.ini
            #iNDICATIVO
            sed -i "2c Callsign=$tu_indicativo" /home/pi/YSFClients/YSFGateway/YSFGateway.ini
            
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

