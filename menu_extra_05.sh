9#!/bin/bash
while true
do
clear

echo "\33[1;32m   ********************************************************************"
echo "   *      SCript para hacer actualizaciones y varios \33[1;33mV.02.06          *"
echo "   *                 \33[1;31mby EA3EIZ & EA4AOJ\33[1;32m                               *"
echo "   ********************************************************************"
echo "\33[1;36m   1)\33[1;37m Actualizar imagen"
echo "\33[1;36m   2)\33[1;37m Grabar Nextion"
echo "\33[1;36m   3)\33[1;37m Copiar Tarjeta SD a la memoria interna EMMC"
echo "\33[1;36m   4)\33[1;37m Cambiar clave VNC"
echo "\33[1;36m   5)\33[1;37m CONEXIONES DVRPTR DCS018"
echo ""
echo "\33[1;36m   0)\33[1;34m Salir del script \33[1;31m OJO!! no salir con ctrl+c ni con la x"
echo ""
echo -n "\33[1;36m   Elige una opción del 0 al 5: " 
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
                        cd ~/SCRIPTS_ORANGE
                        git pull 
                        sleep 3
                        cd ~/
                        sudo chmod 777 SCRIPTS_ORANGE
                        clear
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
			            echo ">>>>>>>>> GRABAR NEXTION ORIGINAL >>>>>>>>"
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
	        			ejecutar1=S
		    			case $ejecutar1 in
						[sS]* ) echo ""
						echo ">>>>>>>>> GIT PULL AUTOSTART RECOGE LAS APLICACIONES AL INICIO QUE SE HAGAN NUEVAS >>>>>"
			            cd ~/AUTOSTART
			            git pull
                        exit;
						break;;
						[nN]* ) echo ""
clear
exit;
break;;
esac
done;;
3000) echo ""
while true
do
clear
	                    ejecutar1=S
		                case $ejecutar1 in
			            [sS]* ) echo ""
			            echo ">>>>>>>>> RESTAURANDO ICONOS ESCRITORIO>>>>>>>>"
			            cd ~/SCRIPTS_ORANGE
                        git pull
                        sleep 3
                        cp -R ~/SCRIPTS_ORANGE/Desktop ~/
                        chmod +x ~/Desktop
                        clear
                        exit;
		                break;;
		                [nN]* ) echo ""
clear
exit;
break;;
esac
done;;
4000) echo ""
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
			            cp -f ~/SCRIPTS_ORANGE/autoarranque.ini ~/
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
7000) echo ""
while true
do
clear
	        			ejecutar1=S
		    			case $ejecutar1 in
						[sS]* ) echo ""
						echo ">>>>>>>>> Restaurar MMDVMHost >>>>>"
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
	                   
                     cd ~/
                       sudo rm -r MMDVMHost
                       cd ~/
                       git clone https://github.com/ea3eiz/MMDVMHost

                       cd ~/MMDVMHost
                       make clean
                       make
                       #sudo cp MMDVM.ini MMDVMBM.ini
                       #sudo cp MMDVM.ini MMDVMPLUS.ini
                       sudo cp MMDVMHost MMDVMBM
                       sudo cp MMDVMHost MMDVMPLUS
                       #sudo cp MMDVM.ini MMDVM.ini_original
                  
                   #solo Dstar y solo Fusion
                   sudo cp MMDVMHost MMDVMDSTAR
                   sudo cp MMDVMHost MMDVMFUSION
                   #fin  Dstar y solo Fusion

		               cd ~/SCRIPTS_ORANGE
		               sudo cp MMDVMHostLIBRE ~/MMDVMHost
		               sudo cp MMDVMLIBRE.ini ~/MMDVMHost

		               cd ~/MMDVMHost
		               sudo chmod +x MMDVMHostLIBRE

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
            sudo cp -f MMDVMLIBRE.ini_dos ~/MMDVMHost     
            sudo cp -f MMDVMPLUS.ini ~/MMDVMHost
            sudo cp -f MMDVMPLUS.ini_copia ~/MMDVMHost
            sudo cp -f MMDVMPLUS.ini_copia2 ~/MMDVMHost
            sudo cp -f MMDVMPLUS.ini_copia3 ~/MMDVMHost

            #solo Dstar y solo Fusion
            sudo cp -f MMDVMDSTAR.ini ~/MMDVMHost
            sudo cp -f MMDVMFUSION.ini ~/MMDVMHost
            #fin  Dstar y solo Fusion

 sudo chmod +x -R ~/MMDVMHost

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
                        echo "\33[1;36m       3000\33[1;33m RESTAURA ICONOS ESCRITORIO"
                        echo "\33[1;36m       4000\33[1;33m COPIAR autoarranque.ini"
                        echo "\33[1;36m       5000\33[1;33m ARREGLAR LA FECHA Y HORA"
                        echo "\33[1;36m       6000\33[1;33m COPIA DCS_DEFAULT.CFG PARA EDITAR DCS, XRF y REF"
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

