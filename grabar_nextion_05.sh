#!/bin/bash
while true
do
clear

echo "\33[1;32m   ********************************************************************"
echo "   *      Script para Grabar pantallas Nextion \33[1;33mV.02.05                \33[1;32m*"
echo "   *                          \33[1;31mby EA3EIZ\33[1;32m                               *"
echo "   ********************************************************************"
echo "\33[1;36m   1)\33[1;37m Grabar pantalla Nextion 2.4 MMDVM original"
echo "\33[1;36m   2)\33[1;37m Grabar pantalla Nextion 2.4 ADER Neutra"
echo "\33[1;36m   3)\33[1;37m Grabar pantalla Nextion 2.4 ADER 434.400"
echo "\33[1;36m   4)\33[1;37m Grabar pantalla Nextion 2.4 ADER 435.350"
echo "\33[1;36m   5)\33[1;37m Grabar pantalla Nextion 2.4 ADER 436.000"
echo "\33[1;36m   6)\33[1;37m Grabar pantalla Nextion 2.4 ADER 438.175"
echo "\33[1;36m   7)\33[1;37m Grabar pantalla Nextion 2.4 ADER 438.350"
echo "\33[1;36m   8)\33[1;37m Grabar pantalla Nextion 2.4 ADER 439.900"
echo ""
echo "\33[1;36m   0)\33[1;34m Salir del script \33[1;31m OJO!! no salir con ctrl+c ni con la x"
echo ""
echo -n "\33[1;36m   Elige una opción del 0 al 8: " 
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
			            sudo cp -f /home/pi/MMDVMHost/Nextion_G4KLX/nextion.py /home/pi/MMDVMHost/Nextion_DB2OE
                        cd /home/pi/MMDVMHost/Nextion_DB2OE
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
			            cd /home/pi/MMDVMHost/Nextion_DB2OE
			            wget http://associacioader.com/PANTALLA_NEXTION_ADER_NEUTRA.tft
			            # sudo cp -f /home/pi/MMDVMHost/Nextion_G4KLX/nextion.py /home/pi/MMDVMHost/Nextion_DB2OE
                        # cd /home/pi/MMDVMHost/Nextion_DB2OE
                        sudo python nextion.py PANTALLA_NEXTION_ADER_NEUTRA.tft /dev/ttyUSB0
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

