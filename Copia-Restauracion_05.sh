#!/bin/bash
while true
do
clear
ROJO="\033[1;31m"
VERDE="\033[1;32m"
BLANCO="\033[1;37m"
AMARILLO="\033[1;33m"
echo "${VERDE}"
echo "\33[1;32m   ***********************************************************************"
echo "   *      Script para Copiar y Restaurar Configuraciones \33[1;33mV.02.07\33[1;32m         *"
echo "   *                       \33[1;31mby EA3EIZ & EA4AOJ\33[1;32m                            *"
echo "   ***********************************************************************"
echo "\33[1;36m   1)\33[1;37m Hacer Copia de seguridad de BM, DMR+, LIBRE, RADIO, solo D-STAR,"
echo "      solo FUSION, YSF2DMR, DMR2YSFF, DMR2NXDN, YSF, BlueDV, SVXLINK, ircDDB, "
echo "      y D-STAR Repeater"

echo ""
echo "\33[1;36m   2)\33[1;32m Restaurar Copia de BM, DMR+, LIBRE, RADIO, solo D-STAR, "
echo "      solo FUSION, YSF2DMR, DMR2YSFF, DMR2NXDN, YSF, BlueDV, SVXLINK, ircDDB, "
echo "      y D-STAR Repeater"
echo ""
echo "\33[1;36m   0)\33[1;34m Salir del script \33[1;31m OJO!! no salir con ctrl+c ni con la x"
echo ""
echo -n "\33[1;36m   Elige una opción " 
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
            echo "Haciendo copias editores BM, DMR+, LIBRE, RADIO"
            echo "Solo D-STAR, solo FUSION, YSF2DMR, YSF, DMR2YSFF, DMR2NXDN, BlueDV y SVXLINK"
            sleep 5
            sudo chmod -R 777 /home/orangepi/Downloads/
            #Comprueba si existe el fichero info.ini
            if [ -f /home/orangepi/info.ini ];
            then
            echo ""
            else
            sudo cp /home/orangepi/SCRIPTS_ORANGE/info.ini /home/orangepi
            fi
            #===============================================


match1=$(awk "NR==2" /home/orangepi/info.ini)
sed -i "1c $match1" /home/orangepi/info.ini
            sudo chmod +x -R /home/orangepi/Downloads
            cd /home/orangepi/MMDVMHost
            sudo cp -f TODOS_LOS_INIS.ini /home/orangepi/Downloads
            sudo cp -f MMDVM.ini /home/orangepi/Downloads
            sudo cp -f MMDVM.ini_copia /home/orangepi/Downloads
            sudo cp -f MMDVM.ini_copia2 /home/orangepi/Downloads
            sudo cp -f MMDVM.ini_copia3 /home/orangepi/Downloads
            sudo cp -f MMDVM.ini_original /home/orangepi/Downloads
            sudo cp -f MMDVMBM.ini /home/orangepi/Downloads
            sudo cp -f MMDVMBM.ini_copia /home/orangepi/Downloads
            sudo cp -f MMDVMBM.ini_copia2 /home/orangepi/Downloads
            sudo cp -f MMDVMBM.ini_copia3 /home/orangepi/Downloads
            sudo cp -f MMDVMLIBRE.ini /home/orangepi/Downloads
            sudo cp -f MMDVMLIBRE.ini_uno /home/orangepi/Downloads
            sudo cp -f MMDVMLIBRE.ini_dos /home/orangepi/Downloads      
            sudo cp -f MMDVMPLUS.ini /home/orangepi/Downloads
            sudo cp -f MMDVMPLUS.ini_copia /home/orangepi/Downloads
            sudo cp -f MMDVMPLUS.ini_copia2 /home/orangepi/Downloads
            sudo cp -f MMDVMPLUS.ini_copia3 /home/orangepi/Downloads

            sudo cp -f MMDVMDMR2NXDN.ini /home/orangepi/Downloads
            sudo cp -f MMDVMDMR2YSF.ini /home/orangepi/Downloads

            cp -f /home/orangepi/DMR2NXDN/DMR2NXDN.ini  /home/orangepi/Downloads
            cp -f /home/orangepi/NXDNClients/NXDNGateway/NXDNGateway.ini  /home/orangepi/Downloads
            cp -f /home/orangepi/DMR2YSF/DMR2YSF.ini  /home/orangepi/Downloads

            #solo Dstar y solo Fusion
            cp -f MMDVMDSTAR.ini /home/orangepi/Downloads
            cp -f MMDVMFUSION.ini /home/orangepi/Downloads
            #fin  Dstar y solo Fusion 

            cd  /home/orangepi/YSF2DMR
            cp -f YSF2DMR.ini /home/orangepi/Downloads
            cp -f YSF2DMR.ini_copia_01 /home/orangepi/Downloads
            cp -f YSF2DMR.ini_copia_02 /home/orangepi/Downloads
            cp -f YSF2DMR.ini_copia_03 /home/orangepi/Downloads
            cp -f YSF2DMR.ini_copia_04 /home/orangepi/Downloads

            cd  /home/orangepi/DMR2YSF
            cp -f TG-YSFList.txt /home/orangepi/Downloads

            cd  /home/orangepi/YSFClients/YSFGateway/
            sudo cp -f YSFGateway.ini /home/orangepi/Downloads
            
            cd /home/orangepi/bluedv/
            sudo cp -f BlueDVconfig.ini /home/orangepi/Downloads

            cd /usr/local/etc/svxlink/
            sudo cp -f svxlink.conf /home/orangepi/Downloads

            cd /usr/local/etc/svxlink/svxlink.d/
            sudo cp -f ModuleEchoLink.conf /home/orangepi/Downloads

            sudo cp /usr/local/etc/opendv/ircddbgateway /home/orangepi/Downloads
            sudo cp /usr/local/etc/opendv/dstarrepeater /home/orangepi/Downloads

            cd /home/orangepi
            sudo cp info_panel_control.ini /home/orangepi/Downloads

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

            sudo chmod -R 777 /home/orangepi/Downloads
            cd /home/orangepi/Downloads
            sudo cp -f TODOS_LOS_INIS.ini /home/orangepi/MMDVMHost
            sudo cp -f MMDVM.ini /home/orangepi/MMDVMHost
            sudo cp -f MMDVM.ini_copia /home/orangepi/MMDVMHost
            sudo cp -f MMDVM.ini_copia2 /home/orangepi/MMDVMHost
            sudo cp -f MMDVM.ini_copia3 /home/orangepi/MMDVMHost
            sudo cp -f MMDVM.ini_original /home/orangepi/MMDVMHost
            sudo cp -f MMDVMBM.ini /home/orangepi/MMDVMHost
            sudo cp -f MMDVMBM.ini_copia /home/orangepi/MMDVMHost
            sudo cp -f MMDVMBM.ini_copia2 /home/orangepi/MMDVMHost
            sudo cp -f MMDVMBM.ini_copia3 /home/orangepi/MMDVMHost
            sudo cp -f MMDVMLIBRE.ini /home/orangepi/MMDVMHost
            sudo cp -f MMDVMLIBRE.ini_uno /home/orangepi/MMDVMHost
            sudo cp -f MMDVMLIBRE.ini_dos /home/orangepi/DoMMDVMHost     
            sudo cp -f MMDVMPLUS.ini /home/orangepi/MMDVMHost
            sudo cp -f MMDVMPLUS.ini_copia /home/orangepi/MMDVMHost
            sudo cp -f MMDVMPLUS.ini_copia2 /home/orangepi/MMDVMHost
            sudo cp -f MMDVMPLUS.ini_copia3 /home/orangepi/MMDVMHost

            #solo Dstar y solo Fusion
            sudo cp -f MMDVMDSTAR.ini /home/orangepi/MMDVMHost
            sudo cp -f MMDVMFUSION.ini /home/orangepi/MMDVMHost
            #fin  Dstar y solo Fusion

            cp -f YSF2DMR.ini /home/orangepi/YSF2DMR
            cp -f YSF2DMR.ini_copia_01 /home/orangepi/YSF2DMR
            cp -f YSF2DMR.ini_copia_02 /home/orangepi/YSF2DMR
            cp -f YSF2DMR.ini_copia_03 /home/orangepi/YSF2DMR
            cp -f YSF2DMR.ini_copia_04 /home/orangepi/YSF2DMR
            
            cp -f TG-YSFList.txt /home/orangepi/DMR2YSF

            cp -f MMDVMDMR2NXDN.ini /home/orangepi/MMDVMHost
            cp -f MMDVMDMR2YSF.ini /home/orangepi/MMDVMHost

            cp -f DMR2NXDN.ini  /home/orangepi/DMR2NXDN
            cp -f NXDNGateway.ini /home/orangepi/NXDNClients/NXDNGateway
            cp -f DMR2YSF.ini /home/orangepi/DMR2YSF

            sudo cp -f YSFGateway.ini /home/orangepi/YSFClients/YSFGateway/

            sudo cp -f BlueDVconfig.ini /home/orangepi/bluedv/

            sudo cp -f svxlink.conf /usr/local/etc/svxlink/
            
            sudo cp -f ModuleEchoLink.conf /usr/local/etc/svxlink/svxlink.d/

            cp ircddbgateway /usr/local/etc/opendv/
            cp dstarrepeater /usr/local/etc/opendv/

            cp info_panel_control.ini /home/orangepi/

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

