#!/bin/bash
while true
do
clear

echo "\33[1;32m   ********************************************************************"
echo "   *      Script para hacer actualizaciones y varios \33[1;33mV.02.05          *"
echo "   *                 \33[1;31mby EA3EIZ & EA4AOJ\33[1;32m                               *"
echo "   ********************************************************************"
echo "\33[1;36m   1)\33[1;37m Actualizar imagen"
echo "\33[1;36m   2)\33[1;37m Restaurar iconos originales"
echo "\33[1;36m   3)\33[1;37m Copiar Tarjeta SD a la memoria interna EMMC"
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
			echo ">>>>>>>>> RESTAURANDO ICONOS >>>>>>>>"
			            cd ~/SCRIPTS_ORANGE
                        git pull
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

3) echo ""
while true
do
clear

	        ejecutar1=S
		    case $ejecutar1 in
			[sS]* ) echo ""
			echo ">>>>>>>>> COPIAR TARJETA   >>>>>"
			            sudo nand-sata-install
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
			echo ">>>>>>>>> GIT PULL AUTOSTART  recoge los botones autoarranque >>>>>"
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
			echo ">>>>>>>>> INSTALANDO BMXTG   >>>>>"
			            cd ~/
			            sudo dpkg -i bmxtg-1.3.deb
			            sudo apt-get install python-requests -y
			            cp -r /etc/bmxtg ~/
			            cp /usr/local/bin/bmxtg.py ~/bmxtg
			            cd ~/bmxtg
			            sudo chmod +x bmxtg.py
                        exit;
		break;;
		[nN]* ) echo ""
clear
exit;
			break;;
esac
done;;

#31) echo ""
#while true
#do
#clear
	                       # ejecutar1=S
		            #case $ejecutar1 in
			#[sS]* ) echo ""
			#echo "ok >>>>>"
                                   # sed -i "4c Exec=sh -c """ /home/pi/Desktop/Boton_1
                                   # sed -i "5c Icon=/home/pi/V30/OCULTO.png" /home/pi/Desktop/Boton_1
                                   # sed -i "10c Name[es_ES]=." /home/pi/Desktop/Boton_1
		           # echo ""
			#echo "Ok, se ha ejecutado correctamente"
			#echo ""
			#break;;
			#[nN]* ) echo ""
			#break;;
#esac
#done;;
32) echo ""
while true
do
clear
	                        ejecutar1=S
		            case $ejecutar1 in
			[sS]* ) echo ""
			echo "ok >>>>>"
                                    sed -i "4c Exec=sh -c """ /home/pi/Desktop/Boton_2
                                    sed -i "5c Icon=/home/pi/V30/OCULTO.png" /home/pi/Desktop/Boton_2
                                    sed -i "10c Name[es_ES]=." /home/pi/Desktop/Boton_2
		            echo ""
			echo "Ok, se ha ejecutado correctamente"
			echo ""
			break;;
			[nN]* ) echo ""
			break;;
esac
done;;
33) echo ""
while true
do
clear
	                        ejecutar1=S
		            case $ejecutar1 in
			[sS]* ) echo ""
			echo "ok >>>>>"
                                    sed -i "4c Exec=sh -c """ /home/pi/Desktop/Boton_3
                                    sed -i "5c Icon=/home/pi/V30/OCULTO.png" /home/pi/Desktop/Boton_3
                                    sed -i "10c Name[es_ES]=." /home/pi/Desktop/Boton_3
		            echo ""
			echo "Ok, se ha ejecutado correctamente"
			echo ""
			break;;
			[nN]* ) echo ""
			break;;
esac
done;;
34) echo ""
while true
do
clear
	                        ejecutar1=S
		            case $ejecutar1 in
			[sS]* ) echo ""
			echo "ok >>>>>"
                                    sed -i "4c Exec=sh -c """ /home/pi/Desktop/Boton_4
                                    sed -i "5c Icon=/home/pi/V30/OCULTO.png" /home/pi/Desktop/Boton_4
                                    sed -i "10c Name[es_ES]=." /home/pi/Desktop/Boton_4
  		            echo ""
			echo "Ok, se ha ejecutado correctamente"
			echo ""
			break;;
			[nN]* ) echo ""
			break;;
esac
done;;
#41) echo ""
#while true
#do
#clear
	                        #ejecutar1=S
		            #case $ejecutar1 in
			#[sS]* ) echo ""
			#echo "ok >>>>>"
			#cd /home/pi/MMDVMHost
			#sudo cp MMDVMHost MMDVMSOLODSTAR
			#sudo cp MMDVMBM.ini MMDVMSOLODSTAR.ini
                                    #sed -i "4c Exec=sh -c 'cd /home/pi/V30/;sudo sh ejecutar_solodstar_04.sh'" /home/pi/Desktop/Boton_1
                                    #sed -i "5c Icon=/home/pi/V30/SOLO_DSTAR.png" /home/pi/Desktop/Boton_1
                                    #sed -i "10c Name[es_ES]=Abrir solo D_STAR" /home/pi/Desktop/Boton_1
                                    #sed -i "9c Terminal=true" /home/pi/Desktop/Boton_1
		            #echo ""
			#echo "Ok, se ha ejecutado correctamente"
			#echo ""
			#break;;
			#[nN]* ) echo ""
			#break;;
#esac
#done;;
42) echo ""
while true
do
clear
	                        ejecutar1=S
		            case $ejecutar1 in
			[sS]* ) echo ""
			echo "ok >>>>>"
                                    sed -i "4c Exec=sh -c 'cd /home/pi/V30/;lxterminal --geometry=80x47 -e sudo sh actualizar_IDS_MMDVMHost.sh'" /home/pi/Desktop/Boton_2
                                    sed -i "5c Icon=/home/pi/V30/EDITAR.png" /home/pi/Desktop/Boton_2
                                    sed -i "10c Name[es_ES]=Actualizar IDS MMDVMHost" /home/pi/Desktop/Boton_2
		            echo ""0
			echo "Ok, se ha ejecutado correctamente"
			echo ""
			break;;
			[nN]* ) echo ""
			break;;
esac
done;;
43) echo ""
while true
do
clear
	                        ejecutar1=S
		            case $ejecutar1 in
			[sS]* ) echo ""
			echo "ok >>>>>"
                                    sed -i "4c Exec=sh -c """ /home/pi/Desktop/Boton_3
                                    sed -i "5c Icon=/home/pi/V30/AUTOARRANQUE.png" /home/pi/Desktop/Boton_3
                                    sed -i "10c Name[es_ES]=." /home/pi/Desktop/Boton_3
		            echo ""
			echo "Ok, se ha ejecutado correctamente"
			echo ""
			break;;
			[nN]* ) echo ""
			break;;
esac
done;;
44) echo ""
while true
do
clear
	                        ejecutar1=S
		            case $ejecutar1 in
			[sS]* ) echo ""
			echo "ok >>>>>"
                                    sed -i "4c Exec=sh -c 'cd /home/pi/V30;sudo sh actualizar_YSF_30.sh'" /home/pi/Desktop/Boton_4
                                    sed -i "5c Icon=/home/pi/V30/ACTUALIZAR_BD.png" /home/pi/Desktop/Boton_4
                                    sed -i "10c Name[es_ES]=Actualizar YSF" /home/pi/Desktop/Boton_4
		            echo ""
			echo "Ok, se ha ejecutado correctamente"
			echo ""
			break;;
			[nN]* ) echo ""
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
			echo "ok poniendo beep del echolink >>>>>"
			sleep 3
			sed -i '515c if {!$is_open} {' /usr/local/share/svxlink/events.d/EchoLink.tcl
			sed -i '516c playSilence 200' /usr/local/share/svxlink/events.d/EchoLink.tcl
			sed -i '517c playTone 1000 100 100' /usr/local/share/svxlink/events.d/EchoLink.tcl
			sed -i '518c }' /usr/local/share/svxlink/events.d/EchoLink.tcl
			echo ""
			echo "Ok, se ha ejecutado correctamente"
			echo ""
			break;;
			[nN]* ) echo ""
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
			echo "Haciendo copias de los editores BM, DMR+, LIBRE, RADIO y SVXLINK >>>>>"
			sleep 3
			sudo chmod -R 777 /home/pi/Downloads
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
8000) echo ""
while true
do
clear
		    ejecutar1=S
		    case $ejecutar1 in
			[sS]* ) echo ""
			echo "Restaurando copias de los editores BM, DMR+, LIBRE, RADIO y SVXLINK   >>>>>"
			sleep 3
			sudo chmod -R 777 /home/pi/Downloads
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

9000) echo ""
while true
do
clear
		    ejecutar1=S
		    case $ejecutar1 in
			[sS]* ) echo ""
			echo "Copiando fichero solodstar.desktop para el autoarranque >>>>>"
			sleep 3
			cd /home/pi/V30
            sudo cp -f solodstar.desktop /home/pi/
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

