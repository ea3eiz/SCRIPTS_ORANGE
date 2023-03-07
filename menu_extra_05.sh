#!/bin/bash
while true
do
clear
RED="\033[1;31m"
VERDE="\033[1;32m"
BLANCO="\033[1;37m"
AMARILLO="\033[1;33m"
CIAN="\033[1;36m"
echo "\33[1;32m   ********************************************************************"
echo "   *      SCript para hacer actualizaciones y varios \33[1;33mV.02.07\33[1;32m          *"
echo "   *                      \33[1;31mby EA3EIZ & EA4AOJ\33[1;32m                          *"
echo "   ********************************************************************"
#echo "\33[1;36m   1)\33[1;32m Actualizar imagen"
echo "\33[1;36m   2)\33[1;37m Grabar Nextion"
echo "\33[1;36m   3)\33[1;36m Copiar Tarjeta SD a la memoria interna EMMC"
echo "\33[1;36m   4)\33[1;36m Cambiar clave VNC"
echo "\33[1;36m   5)\33[1;37m CONEXIONES DVRPTR DCS018"
echo "\33[1;36m   6)\33[1;33m INSTALAR ANYDESK (Aplicación escritorio remoto)"
#echo "\33[1;36m   7)\33[1;37m RESTAURAR ICONOS DEL ESCRITORIO"
echo "\33[1;36m   8)${VERDE} MENÚ ACTUALIZAR MMDVM_HS (Pincho Low Cost)"
echo "\33[1;36m   9)${AMARILLO} INSTALAR AMBE SERVER"
echo "\33[1;36m  10)${AMARILLO} INSTALAR DMR2YSF"
echo "\33[1;36m  11)${AMARILLO} INSTALAR DMR2NXDN"
echo "\33[1;36m  12)${AMARILLO} ACTUALIZAR LISTA DE REFLECTORES D-STAR (DV4MINI-IRCDDB)"
echo ""
echo "\33[1;36m   0)\33[1;34m Salir del script \33[1;31m OJO!! no salir con ctrl+c ni con la x"
echo ""
echo -n "\33[1;36m   Elige una opción: " 
read escoger_menu
echo ""
case $escoger_menu in

1bloqueado) echo ""
while true
do
clear
	                ejecutar1=S
		        case $ejecutar1 in
			[sS]* ) echo ""
			echo ">>>>>>>>> ACTUALIZANDO >>>>>>>>"
                        #cd /usr/local/share/opendv/
                        #sudo curl --fail -o DExtra_Hosts.txt -s http://www.pistar.uk/downloads/DExtra_Hosts.txt
                        #sudo curl --fail -o DCS_Hosts.txt -s http://www.pistar.uk/downloads/DCS_Hosts.txt
                        #sudo curl --fail -o DPlus_Hosts.txt -s http://www.pistar.uk/downloads/DPlus_Hosts.txt
                        git pull 
                        sleep 3
                        cd /home/orangepi/
                        sudo chmod 777 SCRIPTS_ORANGE
                        clear
                        cd /home/orangepi/AUTOSTART
                        git pull

                        sudo usermod -a -G dialout orangepi
                        sudo usermod -a -G uucp orangepi

                        exit;
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
			            echo ">>>>>>>>> GRABAR NEXTION >>>>>>>>"
			            #sudo cp -f /home/orangepi/MMDVMHost/Nextion_G4KLX/nextion.py /home/orangepi/MMDVMHost/Nextion_DB2OE
                        #cd /home/orangepi/MMDVMHost/Nextion_DB2OE
                        #sudo python nextion.py NX3224T024.tft /dev/ttyUSB0
                        #sleep 5
                        cd /home/orangepi/SCRIPTS_ORANGE/
                        sudo sh grabar_nextion_05.sh
                        exit;
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
			            echo ">>>>>>>>> COPIAR TARJETA MSD EN EMMC   >>>>>"
			            sudo nand-sata-install
                        exit;
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
			            echo ">>>>>>>>> CAMBIAR CLAVE VNC >>>>>>>>"
                        x11vnc --storepasswd
                        sleep 2
                        exit;
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
                        echo ">>>>>>>>> GRABAR NEXTION ORIGINAL >>>>>>>>"
                        #sudo cp -f /home/orangepi/MMDVMHost/Nextion_G4KLX/nextion.py /home/orangepi/MMDVMHost/Nextion_DB2OE
                        #cd /home/orangepi/MMDVMHost/Nextion_DB2OE
                        #sudo python nextion.py NX3224T024.tft /dev/ttyUSB0
                        #sleep 5
                        cd /home/orangepi/SCRIPTS_ORANGE/
                        sudo sh menu_dcs018_06.sh
                        exit;
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
                        echo ">>>>>>>>> INSTALANDO ANYDESK >>>>>>>>"
                        sudo rm -R /home/orangepi/.anydesk
                        cd /home/orangepi/Downloads
                        wget http://download.anydesk.com/rpi/anydesk_2.9.4-1_armhf.deb
                        sudo dpkg -i anydesk_2.9.4-1_armhf.deb
                        sudo apt-get -f install
                        sudo dpkg -i anydesk_2.9.4-1_armhf.deb
                        echo "Anydesk Instalado"
                        sleep 2
                        break;;
                        [nN]* ) echo ""
clear
exit;
break;;
esac
done;;


7bloqueado) echo ""
while true
do
clear
                                ejecutar1=S
                                case $ejecutar1 in
                                [sS]* ) echo ""

                                #Coloca icono Abrir AMBE SERVER en el escritorio
                                cp -R /home/orangepi/SCRIPTS_ORANGE/Desktop /home/orangepi/
                                sudo chmod +x -R /home/orangepi/Desktop
                      
                                echo ">>>>>>>>> RESTAURANDO ICONOS ESCRITORIO <<<<<<<<<"
                                sleep 3
                                clear
                                echo ""
                                echo "\33[1;32m<<<<<<<<< PROCESO FINALIZADO >>>>>>>>>"
                                sleep 3
                                break;;
                                [nN]* ) echo ""
clear
exit;
break;;
esac
done;;
8) echo ""
while true
do
clear
                                ejecutar1=S
                                case $ejecutar1 in
                                [sS]* ) echo ""
                                sh flash_mmdvm_hs.sh
                                echo ""
                                break;;
                                [nN]* ) echo ""
clear
exit;
break;;
esac
done;;
8000) echo ""
while true
do
clear

                                                ejecutar1=S
                                                case $ejecutar1 in
                                                [sS]* ) echo ""
                                                echo ">>>>>>>>> INSTALANDO YSF2DMR >>>>>>>>"
                                                cd /home/orangepi/
                                                sudo rm -R YSF2DMR
                                                git clone http://github.com/juribeparada/YSF2DMR
                                                cd /home/orangepi/YSF2DMR
                                                make clean
                                                make
                                                clear

                                                cp YSF2DMR.ini YSF2DMR.ini_copia_01
                                                cp YSF2DMR.ini YSF2DMR.ini_copia_02
                                                cp YSF2DMR.ini YSF2DMR.ini_copia_03
                                                cp YSF2DMR.ini YSF2DMR.ini_copia_04

                                                cd /home/orangepi/SCRIPTS_ORANGE
                                                git pull
                                                sleep 3

                                                #Restaura los 2 iconos Abrir YSF2DMR y Editar YSF2DMR y aparecen en el escritorio
                                                cd /home/orangepi/SCRIPTS_ORANGE
                                                cp /home/orangepi/SCRIPTS_ORANGE/Desktop/Abrir_YSF2DMR.desktop /home/orangepi/Desktop
                                                cp /home/orangepi/SCRIPTS_ORANGE/Desktop/Editar_YSF2DMR.desktop /home/orangepi/Desktop
                                                sudo chmod +x -R /home/orangepi/Desktop



                                                ##Coloca icono Abrir AMBE SERVER en el escritorio
                                                #cp -R /home/orangepi/SCRIPTS_ORANGE/Desktop /home/orangepi/
                                                #sudo chmod +x -R /home/orangepi/Desktop
                      
                                                exit;
                                                break;;
                                                [nN]* ) echo ""
                                                clear
                                                exit;
                                                break;;
esac
done;;
9) echo ""
while true
do
clear
                        ejecutar1=S
                        case $ejecutar1 in
                        [sS]* ) echo ""
                        echo ">>>>>>>>> INSTALANDO AMBE SERVER >>>>>>>>"


                        # RECOGE LAS APLICACIONES AL INICIO QUE SE HAGAN NUEVAS
                        cd /home/orangepi/AUTOSTART
                        git pull

                        #Restaura los 2 iconos Abrir AMBE SERVER y Editar AMBE SERVER y aparecen en el escritorio
                        cp /home/orangepi/SCRIPTS_ORANGE/Desktop/Abrir_ambe_server.desktop /home/orangepi/Desktop
                        cp /home/orangepi/SCRIPTS_ORANGE/Desktop/Editar_ambe_server.desktop /home/orangepi/Desktop

                        cp /home/orangepi/SCRIPTS_ORANGE/ambe_server.ini /home/orangepi/

                        sudo chmod +x -R /home/orangepi/Desktop

                        #comprueba si el ficgero existe
                        if [ -f /home/orangepi/status.ini ];
                        then
                        echo ""
                        else
                        cp /home/orangepi/SCRIPTS_ORANGE/status.ini /home/orangepi/
                        fi
                        #================================

                        #comprueba si el ficgero existe
                        if [ -d /home/orangepi/AMBEServer ];
                        then
                        sudo rm -R /home/orangepi/AMBEServer
                        else
                        echo ""
                        fi
                        #================================
                        cd /home/orangepi/
                        git clone http://github.com/ea4aoj/AMBEServer
                        cd /home/orangepi/AMBEServer
                        make 

                        #Pone en el fichero autoarranque.ini el AMBE_SERVER a OFF
                        sed -i "14c AMBE_SERVER=OFF" /home/orangepi/autoarranque.ini
                        break;;
                        [nN]* ) echo ""
clear
exit;
break;;
esac
done;;
10) echo ""
while true
do
clear

                        #comprueba si el fichero existe
                        if [ -d /home/orangepi/DMR2YSF ];
                        then
                        clear
                        echo "${BLANCO}"
                        echo "*******************************************"
                        echo "*       YA TIENES INSTALADO DMR2YSF       *"
                        echo "*******************************************"
                        sleep 2
                        clear
                        echo "${AMARILLO}"
                        echo "*******************************************"
                        echo "*       YA TIENES INSTALADO DMR2YSF       *"
                        echo "*******************************************"
                        sleep 2
                        clear
                        echo "${VERDE}"
                        echo "*******************************************"
                        echo "*       YA TIENES INSTALADO DMR2YSF       *"
                        echo "*******************************************"
                        sleep 5
                        instalarsi=N
                       
                        else
                        instalarsi=S
                        fi
                        #================================

                                        case $instalarsi in
                                                [sS]* ) echo ""
                                                echo "${ROJO}"
                        echo "*******************************************"
                        echo "*         INSTALANDO DMR2YSF             *"
                        echo "*******************************************"
                        sleep 2
                        echo "${CIAN}"
                        cd /home/orangepi/MMDVMHost
                        cp MMDVM.ini MMDVMDMR2YSF.ini

                        cd /home/orangepi/
                        sudo rm -R /home/orangepi/MMDVM_CM
                        sudo rm -R /home/orangepi/DMR2YSF
                        git clone http://github.com/juribeparada/MMDVM_CM
                        mkdir DMR2YSF
                        cp /home/orangepi/MMDVM_CM/DMR2YSF/* /home/orangepi/DMR2YSF/
                        cd /home/orangepi/DMR2YSF/    
                        make clean
                        make
                        clear

                        #Restaura los 2 iconos Abrir Abrir_DMR2YSF y Editar Editar_DMR2YSF y aparecen en el escritorio
                        cd /home/orangepi/SCRIPTS_ORANGE
                        cp /home/orangepi/SCRIPTS_ORANGE/Desktop/Abrir_DMR2YSF.desktop /home/orangepi/Desktop
                        cp /home/orangepi/SCRIPTS_ORANGE/Desktop/Editar_MMDVMDMR2YSF.desktop /home/orangepi/Desktop
                        
                        sudo chmod +x -R /home/orangepi/Desktop
                     
                                break;;
                                [nN]* ) echo ""
                                clear
                                exit;
                                break;;
esac
done;;
11) echo ""
while true
do
clear
# Comprueba si tienes la versión con la linea HostsFile2=./private/NXDNHosts.txt
var=`grep -n -m 1 '\<HostsFile2\>' /home/orangepi/NXDNClients/NXDNGateway/NXDNGateway.ini`
buscar=":"
largo_linea=`expr index $var $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea=`expr substr $var 1 $largo_linea`
HostsFile2=$(awk "NR==$numero_linea" /home/orangepi/NXDNClients/NXDNGateway/NXDNGateway.ini)
comprueba="HostsFile2=./private/NXDNHosts.txt"
if [ $HostsFile2 = $comprueba ]
                  
                        then # YA TIENES INSTALADA LA ÚLTIMA VERSIÓN
                        clear
                        echo "${BLANCO}"
                        echo "*************************************************"
                        echo "*       YA TIENES INSTALADA LA ÚLTIMA VERSIÓN    *"
                        echo "**************************************************"
                        sleep 2
                        clear
                        echo "${AMARILLO}"
                        echo "*************************************************"
                        echo "*       YA TIENES INSTALADA LA ÚLTIMA VERSIÓN    *"
                        echo "**************************************************"
                        sleep 2
                        clear
                        echo "${VERDE}"
                        echo "*************************************************"
                        echo "*       YA TIENES INSTALADA LA ÚLTIMA VERSIÓN    *"
                        echo "**************************************************"
                        sleep 5

                        instalarsi=N
                       
                        else # INSTALA DE NUEVO EL DMR2NXDN

                        instalarsi=S
                        fi
                        #================================

                                case $instalarsi in
                                [sS]* ) echo ""
                                echo "${ROJO}"
                        echo "*******************************************"
                        echo "*         INSTALANDO DMR2NXDN             *"
                        echo "*******************************************"
                        sleep 2
                                echo "${CIAN}"

                                cd /home/orangepi/MMDVMHost
                        cp MMDVM.ini MMDVMDMR2NXDN.ini

                        cd /home/orangepi/
                        sudo rm -R /home/orangepi/MMDVM_CM
                        sudo rm -R /home/orangepi/DMR2NXDN
                        git clone http://github.com/juribeparada/MMDVM_CM
                        mkdir DMR2NXDN
                        cp /home/orangepi/MMDVM_CM/DMR2NXDN/* /home/orangepi/DMR2NXDN/
                        cd /home/orangepi/DMR2NXDN/    
                        make clean
                        make
                        clear
                        sudo chmod 777 -R /home/orangepi/NXDNClients/NXDNGateway
                        clear

                        #Restaura los 2 iconos Abrir Abrir_DMR2NXDN y Editar Editar_DMR2NXDN y aparecen en el escritorio
                        cd /home/orangepi/SCRIPTS_ORANGE
                        cp /home/orangepi/SCRIPTS_ORANGE/Desktop/Abrir_DMR2NXDN.desktop /home/orangepi/Desktop
                        cp /home/orangepi/SCRIPTS_ORANGE/Desktop/Editar_MMDVMDMR2NXDN.desktop /home/orangepi/Desktop
                        
                        sudo chmod +x -R /home/orangepi/Desktop
                     
                                break;;
                                [nN]* ) echo ""
                                clear
                                exit;
                                break;;
esac
done;;
2000) echo ""
while true
do
clear

                        ejecutar1=S
                        case $ejecutar1 in
                        [sS]* ) echo ""
                        git pull 
                        sleep 3
                        cd /home/orangepi/
                        sudo chmod 777 SCRIPTS_ORANGE
                        clear
                        cd /home/orangepi/AUTOSTART
                        git pull

                        sudo usermod -a -G dialout orangepi
                        sudo usermod -a -G uucp orangepi
                        cd /home/orangepi/
                        
                        sudo rm -R qt
                        
                        mkdir /home/orangepi/qt
                        
                        cd /home/orangepi/SCRIPTS_ORANGE
                        
                        cp qt* /home/orangepi/qt

                        chmod 777 -R /home/orangepi/qt
			break;;
			[nN]* ) echo ""
clear
exit;
break;;
esac
done;;
12) echo ""
while true
do
clear
                        ejecutar1=S
                        case $ejecutar1 in
                        [sS]* ) echo ""
                        echo ">>>>>>>>> ACTUALIZANDO >>>>>>>>"
                        cd /usr/local/share/opendv/
                        #cambiado el 13-05-2020
                        sudo curl --fail -o DExtra_Hosts.txt -s http://www.arrg.us/HF/DExtra_Hosts.txt
                        #sudo curl --fail -o DExtra_Hosts.txt -s http://www.pistar.uk/downloads/DExtra_Hosts.txt
                        sudo curl --fail -o DCS_Hosts.txt -s http://www.pistar.uk/downloads/DCS_Hosts.txt
                        sudo curl --fail -o DPlus_Hosts.txt -s http://www.pistar.uk/downloads/DPlus_Hosts.txt
                        mv DExtra_Hosts.txt xref.ip


                        exit;
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

