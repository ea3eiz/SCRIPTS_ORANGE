#!/bin/bash
while true
do
clear
echo "\33[1;32m   ********************************************************************"
echo "   *      Script para Grabar pantallas Nextion \33[1;33mV.02.05                \33[1;32m*"
echo "   *                     \33[1;31mby EA3EIZ & EA4AOJ\33[1;32m                           *"
echo "   ********************************************************************"
echo "\33[1;36m   1)\33[1;37m Grabar pantalla Nextion 2.4 Pulgadas MMDVM"
echo "\33[1;36m   2)\33[1;37m Grabar pantalla Nextion 2.8 Pulgadas MMDVM"
echo "\33[1;36m   3)\33[1;37m Grabar pantalla Nextion 3.2 Pulgadas MMDVM"
echo "\33[1;36m   4)\33[1;37m Grabar pantalla Nextion 4.3 Pulgadas MMDVM"
echo ""
echo '\33[1;36m   5)\33[1;32m Grabar pantalla Nextion 2.4" con el logo de REM'
echo '\33[1;36m   6)\33[1;32m Grabar pantalla Nextion 2.4" NextionDriver con Banderas'
echo ""
echo "\33[1;36m   0)\33[1;34m Salir del script \33[1;31m OJO!! no salir con ctrl+c ni con la x"
echo ""
echo -n "\33[1;36m   Elige una opción del 0 al 4: " 
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
			            echo ">>>>>>>>> GRABAR NEXTION ORIGINAL >>>>>>>>"
			            sudo cp -f /home/orangepi/MMDVMHost/Nextion_G4KLX/nextion.py /home/orangepi/MMDVMHost/Nextion_DB2OE
                        cd /home/orangepi/MMDVMHost/Nextion_DB2OE
                        sudo python nextion.py NX3224T024.tft /dev/ttyUSB0
                        sleep 10
		                break;;
		                [nN]* ) echo ""
						clear
						exit;
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
			            echo ">>>>>>>>> GRABAR NEXTION ORIGINAL >>>>>>>>"
			            sudo cp -f /home/orangepi/MMDVMHost/Nextion_G4KLX/nextion.py /home/orangepi/MMDVMHost/Nextion_DB2OE
                        cd /home/orangepi/MMDVMHost/Nextion_DB2OE
                        sudo python nextion.py NX3224T028.tft /dev/ttyUSB0
                        sleep 10
		                break;;
		                [nN]* ) echo ""
						clear
						exit;
						break;;
esac
done;;
3) echo ""
while true
do
clear
	                    ejecutar1=S
		                case $ejecutar1 in
			            [sS]* ) echo ""
			            echo ">>>>>>>>> GRABAR NEXTION ORIGINAL >>>>>>>>"
			            sudo cp -f /home/orangepi/MMDVMHost/Nextion_G4KLX/nextion.py /home/orangepi/MMDVMHost/Nextion_DB2OE
                        cd /home/orangepi/MMDVMHost/Nextion_DB2OE
                        sudo python nextion.py NX3224T032.tft /dev/ttyUSB0
                        sleep 10
		                break;;
		                [nN]* ) echo ""
						clear
						exit;
						break;;
esac
done;;
4) echo ""
while true
do
clear
	                    ejecutar1=S
		                case $ejecutar1 in
			            [sS]* ) echo ""
			            echo ">>>>>>>>> GRABAR NEXTION ORIGINAL >>>>>>>>"
			            sudo cp -f /home/orangepi/MMDVMHost/Nextion_G4KLX/nextion.py /home/orangepi/MMDVMHost/Nextion_DB2OE
                        cd /home/orangepi/MMDVMHost/Nextion_DB2OE
                        sudo python nextion.py NX3224T043.tft /dev/ttyUSB0
                        sleep 10
		                break;;
		                [nN]* ) echo ""
						clear
						exit;
						break;;
esac
done;;
5) echo ""
while true
do
clear
	                    ejecutar1=S
		                case $ejecutar1 in
			            [sS]* ) echo ""
			            echo ">>>>>>>>> SIN_FRECUENCIA_REM_24.tft >>>>>>>>"
			            #pasa el fichero nextion.py del Ingles G4KLX al Aleman DB20E
			            sudo cp -f /home/orangepi/MMDVMHost/Nextion_G4KLX/nextion.py /home/orangepi/MMDVMHost/Nextion_DB2OE
			            cd /home/orangepi/MMDVMHost/Nextion_DB2OE
			            sudo rm SIN_FRECUENCIA*.*
			            wget http://associacioader.com/SIN_FRECUENCIA_REM_24.tft
                        sudo python nextion.py SIN_FRECUENCIA_REM_24.tft /dev/ttyUSB0
                        sleep 10
		                break;;
		                [nN]* ) echo ""
						clear
						exit;
						break;;
esac
done;;
6) echo ""
while true
do
clear
	                    ejecutar1=S
		                case $ejecutar1 in
			            [sS]* ) echo ""
			            echo ">>>>>>>>> NextionDriver Banderas >>>>>>>>"
			            #pasa el fichero nextion.py del Ingles G4KLX al Aleman DB20E
			            sudo cp -f /home/orangepi/MMDVMHost/Nextion_G4KLX/nextion.py /home/orangepi/MMDVMHost/Nextion_DB2OE
			            cd /home/orangepi/MMDVMHost/Nextion_DB2OE
			            sudo rm ADER_07.tft
			            wget http://associacioader.com/ADER_07.tft
                        sudo python nextion.py ADER_07.tft /dev/ttyUSB0
                        sleep 10
		                break;;
		                [nN]* ) echo ""
						clear
						exit;
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


