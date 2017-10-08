#!/bin/bash
while true
do
clear

echo "\33[1;32m   ***********************************************************************"
echo "   *      Script para Copiar y Restaurar Configuraciones \33[1;33mV.02.05\33[1;32m         *"
echo "   *                          \33[1;31mby EA3EIZ\33[1;32m                                  *"
echo "   ***********************************************************************"
echo "\33[1;36m   1)\33[1;37m Copiar BM, DMR+, LIBRE, RADIO, YSF, BlueDV y SVXLINK en Downloads"
echo "\33[1;36m   2)\33[1;37m Restaurar BM, DMR+, LIBRE, RADIO, YSF, BlueDV y SVXLINK de Downloads"
#echo "\33[1;36m   2)\33[1;37m Actualizar DV4mini Control Panel (Stick ID:8D-6E-8C V1,77)"
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
			sudo chmod -R 777 ~/Downloads
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

            cd  ~/YSFClients/YSFGateway/
            sudo cp -f YSFGateway.ini ~/Downloads
            
            cd ~/bluedv/
            sudo cp -f BlueDVconfig.ini ~/Downloads

            cd /usr/local/etc/svxlink/
            sudo cp -f svxlink.conf ~/Downloads

            cd /usr/local/etc/svxlink/svxlink.d/
            sudo cp -f ModuleEchoLink.conf ~/Downloads
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

