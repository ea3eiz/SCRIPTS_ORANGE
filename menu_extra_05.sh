#!/bin/bash
while true
do
clear

echo "\33[1;32m   ********************************************************************"
echo "   *      SCript para hacer actualizaciones y varios \33[1;33mV.02.05          *"
echo "   *                 \33[1;31mby EA3EIZ & EA4AOJ\33[1;32m                               *"
echo "   ********************************************************************"
echo "\33[1;36m   1)\33[1;37m Actualizar imagen"
echo "\33[1;36m   2)\33[1;37m Grabar Nextion MMDVM"
echo "\33[1;36m   3)\33[1;37m Copiar Tarjeta SD a la memoria interna EMMC"
echo "\33[1;36m   4)\33[1;37m Arregla el error del Menu Auto arranque"
#echo "\33[1;36m   2)\33[1;37m Actualizar DV4mini Control Panel (Stick ID:8D-6E-8C V1,77)"
echo ""
echo "\33[1;36m   0)\33[1;34m Salir del script \33[1;31m OJO!! no salir con ctrl+c ni con la x"
echo ""
echo -n "\33[1;36m   Elige una opción del 0 al 3: " 
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
			            sudo cp -f ~/MMDVMHost/Nextion_G4KLX/nextion.py ~/MMDVMHost/Nextion_DB2OE
                        cd ~/MMDVMHost/Nextion_DB2OE
                        sudo python nextion.py NX3224T024.tft /dev/ttyUSB0
                        sleep 5
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
	                    echo "\33[1;31m" #color rojo
                        echo " *****************************************************"
                        echo " ** OJO!! ESTO PONDRÁ TODOS LOS AUTOARRANQUES EN OFF *"
                        echo " *****************************************************"
                        echo "\33[1;37m" #color
                        read -p 'Quieres Actualizar? Si/No: ' ejecutar1
		                case $ejecutar1 in
			            [sS]* ) echo ""
			            echo ">>>>>>>>> COPIAR FICHERO autoarranque.ini en ~/   >>>>>"

#recoge los botones nuevos
cd ~/AUTOSTART
git pull
			            
			            cp -f ~/SCRIPTS_ORANGE/autoarranque.ini ~/
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
                        echo " ******   OJO!!! ESTO RESTAURA TODO EL GITHUB ********"
                        echo " *****************************************************"
                        echo "\33[1;37m" #color
                        read -p 'Quieres Actualizar? Si/No: ' ejecutar1
                        case $ejecutar1 in
			            [sS]* ) echo ""
			            echo ">>>>>>>>> RESTAURANDO SISTEMA >>>>>>>>"
			            sudo rm -R ~/SCRIPTS_ORANGE
                        cd ~
                        git clone https://github.com/ea3eiz/SCRIPTS_ORANGE
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
2000) echo ""
while true
do
clear
	        			ejecutar1=S
		    			case $ejecutar1 in
						[sS]* ) echo ""
						echo ">>>>>>>>> GIT PULL AUTOSTART  recoge los botones nuevos autoarranque >>>>>"
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
#3000) echo ""
#while true
#do
#clear
	        			#ejecutar1=S
		    			#case $ejecutar1 in
						#[sS]* ) echo ""
						#echo ">>>>>>>>> INSTALANDO BMXTG   >>>>>"
			            #cd ~/
			            #sudo dpkg -i bmxtg-1.3.deb
			            #sudo apt-get install python-requests -y
			            #cp -r /etc/bmxtg ~/
			            #cp /usr/local/bin/bmxtg.py ~/bmxtg
			            #cd ~/bmxtg
			            #sudo chmod +x bmxtg.py
                        #exit;
						#break;;
						#[nN]* ) echo ""
#clear
#exit;
#break;;
#esac
#done;;
4000) echo ""
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

