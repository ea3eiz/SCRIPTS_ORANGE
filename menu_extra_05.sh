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
echo "\33[1;36m   1)\33[1;32m Actualizar imagen"
echo "\33[1;36m   2)\33[1;37m Grabar Nextion"
echo "\33[1;36m   3)\33[1;36m Copiar Tarjeta SD a la memoria interna EMMC"
echo "\33[1;36m   4)\33[1;36m Cambiar clave VNC"
echo "\33[1;36m   5)\33[1;37m CONEXIONES DVRPTR DCS018"
echo "\33[1;36m   6)\33[1;33m INSTALAR ANYDESK (Aplicación escritorio remoto)"
echo "\33[1;36m   7)\33[1;37m RESTAURAR ICONOS DEL ESCRITORIO"
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

1) echo ""
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
                        cd ~/
                        sudo chmod 777 SCRIPTS_ORANGE
                        clear
                        cd ~/AUTOSTART
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
			            #sudo cp -f ~/MMDVMHost/Nextion_G4KLX/nextion.py ~/MMDVMHost/Nextion_DB2OE
                        #cd ~/MMDVMHost/Nextion_DB2OE
                        #sudo python nextion.py NX3224T024.tft /dev/ttyUSB0
                        #sleep 5
                        cd ~/SCRIPTS_ORANGE/
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
                        #sudo cp -f ~/MMDVMHost/Nextion_G4KLX/nextion.py ~/MMDVMHost/Nextion_DB2OE
                        #cd ~/MMDVMHost/Nextion_DB2OE
                        #sudo python nextion.py NX3224T024.tft /dev/ttyUSB0
                        #sleep 5
                        cd ~/SCRIPTS_ORANGE/
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
                        sudo rm -R ~/.anydesk
                        cd ~/Downloads
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


7) echo ""
while true
do
clear
                                ejecutar1=S
                                case $ejecutar1 in
                                [sS]* ) echo ""

                                #Coloca icono Abrir AMBE SERVER en el escritorio
                                cp -R ~/SCRIPTS_ORANGE/Desktop ~/
                                sudo chmod +x -R ~/Desktop
                      
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
                                                cd ~/
                                                sudo rm -R YSF2DMR
                                                git clone http://github.com/juribeparada/YSF2DMR
                                                cd ~/YSF2DMR
                                                make clean
                                                make
                                                clear

                                                cp YSF2DMR.ini YSF2DMR.ini_copia_01
                                                cp YSF2DMR.ini YSF2DMR.ini_copia_02
                                                cp YSF2DMR.ini YSF2DMR.ini_copia_03
                                                cp YSF2DMR.ini YSF2DMR.ini_copia_04

                                                cd ~/SCRIPTS_ORANGE
                                                git pull
                                                sleep 3

                                                #Restaura los 2 iconos Abrir YSF2DMR y Editar YSF2DMR y aparecen en el escritorio
                                                cd ~/SCRIPTS_ORANGE
                                                cp ~/SCRIPTS_ORANGE/Desktop/Abrir_YSF2DMR.desktop ~/Desktop
                                                cp ~/SCRIPTS_ORANGE/Desktop/Editar_YSF2DMR.desktop ~/Desktop
                                                sudo chmod +x -R ~/Desktop



                                                ##Coloca icono Abrir AMBE SERVER en el escritorio
                                                #cp -R ~/SCRIPTS_ORANGE/Desktop ~/
                                                #sudo chmod +x -R ~/Desktop
                      
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
                        cd ~/AUTOSTART
                        git pull

                        #Restaura los 2 iconos Abrir AMBE SERVER y Editar AMBE SERVER y aparecen en el escritorio
                        cp ~/SCRIPTS_ORANGE/Desktop/Abrir_ambe_server.desktop ~/Desktop
                        cp ~/SCRIPTS_ORANGE/Desktop/Editar_ambe_server.desktop ~/Desktop

                        cp ~/SCRIPTS_ORANGE/ambe_server.ini ~/

                        sudo chmod +x -R ~/Desktop

                        #comprueba si el ficgero existe
                        if [ -f ~/status.ini ];
                        then
                        echo ""
                        else
                        cp ~/SCRIPTS_ORANGE/status.ini ~/
                        fi
                        #================================

                        #comprueba si el ficgero existe
                        if [ -d ~/AMBEServer ];
                        then
                        sudo rm -R ~/AMBEServer
                        else
                        echo ""
                        fi
                        #================================
                        cd ~/
                        git clone http://github.com/ea4aoj/AMBEServer
                        cd ~/AMBEServer
                        make 

                        #Pone en el fichero autoarranque.ini el AMBE_SERVER a OFF
                        sed -i "14c AMBE_SERVER=OFF" ~/autoarranque.ini
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
                        if [ -d ~/DMR2YSF ];
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
                        cd ~/MMDVMHost
                        cp MMDVM.ini MMDVMDMR2YSF.ini

                        cd ~/
                        sudo rm -R ~/MMDVM_CM
                        sudo rm -R ~/DMR2YSF
                        git clone http://github.com/juribeparada/MMDVM_CM
                        mkdir DMR2YSF
                        cp ~/MMDVM_CM/DMR2YSF/* ~/DMR2YSF/
                        cd ~/DMR2YSF/    
                        make clean
                        make
                        clear

                        #Restaura los 2 iconos Abrir Abrir_DMR2YSF y Editar Editar_DMR2YSF y aparecen en el escritorio
                        cd ~/SCRIPTS_ORANGE
                        cp ~/SCRIPTS_ORANGE/Desktop/Abrir_DMR2YSF.desktop ~/Desktop
                        cp ~/SCRIPTS_ORANGE/Desktop/Editar_MMDVMDMR2YSF.desktop ~/Desktop
                        
                        sudo chmod +x -R ~/Desktop
                     
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
var=`grep -n -m 1 '\<HostsFile2\>' ~/NXDNClients/NXDNGateway/NXDNGateway.ini`
buscar=":"
largo_linea=`expr index $var $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea=`expr substr $var 1 $largo_linea`
HostsFile2=$(awk "NR==$numero_linea" ~/NXDNClients/NXDNGateway/NXDNGateway.ini)
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

                                cd ~/MMDVMHost
                        cp MMDVM.ini MMDVMDMR2NXDN.ini

                        cd ~/
                        sudo rm -R ~/MMDVM_CM
                        sudo rm -R ~/DMR2NXDN
                        git clone http://github.com/juribeparada/MMDVM_CM
                        mkdir DMR2NXDN
                        cp ~/MMDVM_CM/DMR2NXDN/* ~/DMR2NXDN/
                        cd ~/DMR2NXDN/    
                        make clean
                        make
                        clear
                        sudo chmod 777 -R ~/NXDNClients/NXDNGateway
                        clear

                        #Restaura los 2 iconos Abrir Abrir_DMR2NXDN y Editar Editar_DMR2NXDN y aparecen en el escritorio
                        cd ~/SCRIPTS_ORANGE
                        cp ~/SCRIPTS_ORANGE/Desktop/Abrir_DMR2NXDN.desktop ~/Desktop
                        cp ~/SCRIPTS_ORANGE/Desktop/Editar_MMDVMDMR2NXDN.desktop ~/Desktop
                        
                        sudo chmod +x -R ~/Desktop
                     
                                break;;
                                [nN]* ) echo ""
                                clear
                                exit;
                                break;;
esac
done;;

1000) echo ""
while true
do
clear
                        echo "\33[1;31m" #color rojo
                        echo " *****************************************************"
                        echo " ******   OJO!!! ESTO RESTAURA TODOS LOS GITHUB ******"
                        echo " *****************************************************"
                        echo "\33[1;37m" #color
                        read -p 'Quieres Actualizar? Si/No: ' ejecutar1
                        case $ejecutar1 in
			            [sS]* ) echo ""
			            echo ">>>>>>>>> RESTAURANDO SISTEMA >>>>>>>>"
			            sudo rm -R ~/SCRIPTS_ORANGE
			            sleep 5
                        cd ~
                        git clone https://github.com/ea3eiz/SCRIPTS_ORANGE
                        cp -R ~/SCRIPTS_ORANGE/Desktop ~/


                        sudo rm -R ~/AUTOSTART
			            sleep 5
                        cd ~
                        git clone https://github.com/ea3eiz/AUTOSTART
                      



                        clear
                        exit;
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
	        	
                        echo "\33[1;31m" #color rojo
                        echo " *****************************************************"
                        echo " ** OJO!! ESTO PONDRÁ TODOS LOS AUTOARRANQUES EN OFF *"
                        echo " *****************************************************"
                        echo "\33[1;37m" #color
                        read -p 'Quieres Actualizar? Si/No: ' ejecutar1
                        case $ejecutar1 in
                        [sS]* ) echo ""
                        echo ">>>>>>>>> COPIAR FICHERO autoarranque.ini en ~/   >>>>>"
                        cd ~/SCRIPTS_ORANGE
                        git pull
                        rm ~/autoarranque.ini
                        cp -f ~/SCRIPTS_ORANGE/autoarranque.ini ~/
			echo ">>>>>>>>> GIT CLONE AUTOSTART >>>>>"
			sudo rm -R ~/AUTOSTART
                        cd ~/
                        git clone http://github.com/ea3eiz/AUTOSTART
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
5000) echo ""
while true
do
clear
	        			ejecutar1=S
		    			case $ejecutar1 in
						[sS]* ) echo ""
						echo ">>>>>>>>> Arregla la fecha y hora >>>>>"
			            sudo apt-get install ntpdate
			            sudo ntpdate -u hora.roa.es
						break;;
						[nN]* ) echo ""
clear
exit;
break;;
esac
done;;
6000) echo ""
while true
do
clear
	        			ejecutar1=S
		    			case $ejecutar1 in
						[sS]* ) echo ""
						echo ">>>>>>>>> coloca dcs_default.cfg en /home/orangepi/.config/Microsoft/dvrptr/1.0.0.0 >>>>>"
			            cd ~/SCRIPTS_ORANGE/
                        sleep 3
                        #sudo chmod 777 /home/orangepi/.config/Microsoft/dvrptr/1.0.0.0/dcs_default.cfg
                        #sleep 3
			            sudo rm /home/orangepi/.config/Microsoft/dvrptr/1.0.0.0/dcs_default.cfg
                        sleep 3
                        sudo cp -f dcs_default.cfg /home/orangepi/.config/Microsoft/dvrptr/1.0.0.0/
                        sleep 3
                        sudo chmod 640 /home/orangepi/.config/Microsoft/dvrptr/1.0.0.0/dcs_default.cfg
                        #sudo sed -i "20c DCS018" /home/orangepi/.config/Microsoft/dvrptr/1.0.0.0/dvrptr_X2a.cfg
                        #sudo sed -i "21c D" /home/orangepi/.config/Microsoft/dvrptr/1.0.0.0/dvrptr_X2a.cfg
			            break;;
						[nN]* ) echo ""
clear
exit;
break;;
esac
done;;

9000) echo ""
while true
do
clear
	                    ejecutar1=S
		                case $ejecutar1 in
			            [sS]* ) echo ""
			            #echo ">>>>>>>>> copiar el autoarranque.ini >>>>>>>"
			            #cp -f ~/SCRIPTS_ORANGE/autoarranque.ini ~/
                        #clear
                        echo "\33[1;32m       ***********************************************************"
                        echo "       *             MENU AYUDAS COMANDOS OCULTOS                *"
                        echo "       ***********************************************************"
                        echo ""
                        echo "\33[1;36m       1000\33[1;33m ESTO RESTAURA TODOS LOS GITHUB"
                        echo "\33[1;36m       2000\33[1;33m RECOGE LAS APLICACIONES AL INICIO QUE SE HAGAN NUEVAS"
                        echo "\33[1;36m       3000\33[1;33m ACTUALIZAR SERVIDORES D-STAR"
                        echo "\33[1;36m       5000\33[1;33m ARREGLAR LA FECHA Y HORA"
                        echo "\33[1;36m       6000\33[1;33m COPIA DCS_DEFAULT.CFG PARA EDITAR DCS, XRF y REF"
                        echo "\33[1;36m       8000\33[1;33m INSTALA YSF2DMR"
                        echo ""
                        echo -n "\33[1;37m       Pulsa la tecla ENTER para salir"
                        read A
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

