#!/bin/bash
while true
do
clear

echo "\33[1;32m   ***********************************************************************"
echo "   *     Script para Copiar y Restaurar Configuraciones \33[1;33mV.02.07.04\33[1;32m       *"
echo "   *                       \33[1;31mby EA3EIZ & EA4AOJ\33[1;32m                            *"
echo "   ***********************************************************************"
echo "\33[1;36m   1)\33[1;37m Hacer copia de seguridad de todos los .ini"
echo ""
echo "\33[1;36m   2)\33[1;37m Restaurar copia de seguridad de todos los .ini"
echo ""
echo "\33[1;36m   0)\33[1;34m Salir del script \33[1;31m OJO!! no salir con ctrl+c ni con la x"
echo ""
echo -n "\33[1;36m   Elige una opción: " 
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
            echo "Solo D-STAR, solo FUSION, YSF2DMR, YSF, BlueDV y SVXLINK"   
		sleep 3
		sudo chmod -R 777 ~/Downloads        

            #Comprueba si existe el fichero info.ini
            if [ -f /home/orangepi/Downloads/info.ini ];
            then
            echo ""
            else
            sudo cp /home/orangepi/SCRIPTS_ORANGE/info.ini /home/pi/Downloads
            fi
            sudo chmod 777 /home/orangepi/Downloads/info.ini
            #===============================================


            match1=$(awk "NR==2" /home/orangepi/Downloads/info.ini)
            sed -i "1c $match1" /home/orangepi/Downloads/info.ini




            cd ~/MMDVMHost
            sudo cp -f MMDVM.ini ~/Downloads
            sudo cp -f MMDVM.ini_copia ~/Downloads
            sudo cp -f MMDVM.ini_copia2 ~/Downloads
            sudo cp -f MMDVM.ini_copia3 ~/Downloads
            sudo cp -f MMDVM.ini_original ~/Downloads
            sudo cp -f MMDVMBM.ini ~/Downloads
            sudo cp -f MMDVMBM.ini_copia ~/Downloads
            sudo cp -f MMDVMBM.ini_copia2 ~/Downloads
            sudo cp -f MMDVMBM.ini_copia3 ~/Downloads
            sudo cp -f MMDVMLIBRE.ini ~/Downloads
            sudo cp -f MMDVMLIBRE.ini_uno ~/Downloads
            sudo cp -f MMDVMLIBRE.ini_dos ~/Downloads       
            sudo cp -f MMDVMPLUS.ini ~/Downloads
            sudo cp -f MMDVMPLUS.ini_copia ~/Downloads
            sudo cp -f MMDVMPLUS.ini_copia2 ~/Downloads
            sudo cp -f MMDVMPLUS.ini_copia3 ~/Downloads

            #solo Dstar y solo Fusion
            sudo cp -f MMDVMDSTAR.ini ~/Downloads
            sudo cp -f MMDVMFUSION.ini ~/Downloads
            #fin  Dstar y solo Fusion

            cd  ~/YSF2DMR
            cp -f YSF2DMR.ini ~/Downloads
            cp -f YSF2DMR.ini_copia_01 ~/Downloads
            cp -f YSF2DMR.ini_copia_02 ~/Downloads

            cd  ~/YSFClients/YSFGateway/
            sudo cp -f YSFGateway.ini ~/Downloads
            
            cd ~/bluedv/
            sudo cp -f BlueDVconfig.ini ~/Downloads

            cd /usr/local/etc/svxlink/
            sudo cp -f svxlink.conf ~/Downloads

            cd /usr/local/etc/svxlink/svxlink.d/
            sudo cp -f ModuleEchoLink.conf ~/Downloads

            sudo rm -R ~/Downloads/copias
            sudo cp -R ~/Downloads ~/Downloads/copias

            read a
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

		sudo chmod -R 777 ~/Downloads
            cd ~/Downloads
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

            cp -f YSF2DMR.ini ~/YSF2DMR
            cp -f YSF2DMR.ini_copia_01 ~/YSF2DMR
            cp -f YSF2DMR.ini_copia_02 ~/YSF2DMR

            sudo cp -f YSFGateway.ini ~/YSFClients/YSFGateway/

            sudo cp -f BlueDVconfig.ini ~/bluedv/

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

