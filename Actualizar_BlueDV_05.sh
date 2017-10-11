#!/bin/bash
while true
do
clear

echo "\33[1;32m   ********************************************************************"
echo "   *      Script para hacer actualizaciones y varios \33[1;33mV.02.05          *"
echo "   *                          \33[1;31mby EA3EIZ\33[1;32m                               *"
echo "   ********************************************************************"
echo "\33[1;36m   1)\33[1;37m Actualizar BlueDV"
#echo "\33[1;36m   2)\33[1;37m Actualizar DV4mini Control Panel (Stick ID:8D-6E-8C V1,77)"
echo ""
echo "\33[1;36m   0)\33[1;34m Salir del script \33[1;31m OJO!! no salir con ctrl+c ni con la x"
echo ""
echo -n "\33[1;36m   Elige una opción del 0 al 1: " 
read escoger_menu
echo ""
case $escoger_menu in


#31) echo ""
#while true
#do
#clear
	                       # ejecutar1=S
		            #case $ejecutar1 in
			#[sS]* ) echo ""
			#echo "ok >>>>>"
                                   # sed -i "4c Exec=sh -c """ ~/Desktop/Boton_1
                                   # sed -i "5c Icon=~/V30/OCULTO.png" ~/Desktop/Boton_1
                                   # sed -i "10c Name[es_ES]=." ~/Desktop/Boton_1
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
                                    sed -i "4c Exec=sh -c """ ~/Desktop/Boton_2
                                    sed -i "5c Icon=~/V30/OCULTO.png" ~/Desktop/Boton_2
                                    sed -i "10c Name[es_ES]=." ~/Desktop/Boton_2
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
                                    sed -i "4c Exec=sh -c """ ~/Desktop/Boton_3
                                    sed -i "5c Icon=~/V30/OCULTO.png" ~/Desktop/Boton_3
                                    sed -i "10c Name[es_ES]=." ~/Desktop/Boton_3
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
                                    sed -i "4c Exec=sh -c """ ~/Desktop/Boton_4
                                    sed -i "5c Icon=~/V30/OCULTO.png" ~/Desktop/Boton_4
                                    sed -i "10c Name[es_ES]=." ~/Desktop/Boton_4
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
			#cd ~/MMDVMHost
			#sudo cp MMDVMHost MMDVMSOLODSTAR
			#sudo cp MMDVMBM.ini MMDVMSOLODSTAR.ini
                                    #sed -i "4c Exec=sh -c 'cd ~/V30/;sudo sh ejecutar_solodstar_04.sh'" ~/Desktop/Boton_1
                                    #sed -i "5c Icon=~/V30/SOLO_DSTAR.png" ~/Desktop/Boton_1
                                    #sed -i "10c Name[es_ES]=Abrir solo D_STAR" ~/Desktop/Boton_1
                                    #sed -i "9c Terminal=true" ~/Desktop/Boton_1
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
                                    sed -i "4c Exec=sh -c 'cd ~/V30/;lxterminal --geometry=80x47 -e sudo sh actualizar_IDS_MMDVMHost.sh'" ~/Desktop/Boton_2
                                    sed -i "5c Icon=~/V30/EDITAR.png" ~/Desktop/Boton_2
                                    sed -i "10c Name[es_ES]=Actualizar IDS MMDVMHost" ~/Desktop/Boton_2
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
                                    sed -i "4c Exec=sh -c """ ~/Desktop/Boton_3
                                    sed -i "5c Icon=~/V30/AUTOARRANQUE.png" ~/Desktop/Boton_3
                                    sed -i "10c Name[es_ES]=." ~/Desktop/Boton_3
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
                                    sed -i "4c Exec=sh -c 'cd ~/V30;sudo sh actualizar_YSF_30.sh'" ~/Desktop/Boton_4
                                    sed -i "5c Icon=~/V30/ACTUALIZAR_BD.png" ~/Desktop/Boton_4
                                    sed -i "10c Name[es_ES]=Actualizar YSF" ~/Desktop/Boton_4
		            echo ""
			echo "Ok, se ha ejecutado correctamente"
			echo ""
			break;;
			[nN]* ) echo ""
			break;;
esac
done;;
1) echo ""
while true
do
clear
echo " *********************************************************"
echo " \33[1;31m* Si actualizas BlueDV, perderás toda la configuración  *"
echo " * Anotate la configuración para poder volver a ponerla  *"
echo " \33[1;32m*********************************************************"
echo "\33[1;33m"
	                        read -p ' Quieres actualizar el BlueDV Si/No: ' ejecutar1
		            case $ejecutar1 in
			[sS]* ) echo ""
			echo "ok >>>>>"

			sudo rm -r ~/bluedv
			
			cd ~/
			sudo git clone https://github.com/ea3eiz/bluedv
                                    sleep 5
                                    clear
		            echo ""
			echo "Ok, se ha ejecutado correctamente"
			echo ""
			break;;
			[nN]* ) echo ""
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
			echo "Poniendo roger beep >>>>>"
			sleep 3
			sudo cp -f roger_beep.wav /usr/local/share/svxlink/sounds/en_US/Core/
			sed -i '185c playMsg "Core" "roger_beep";' /usr/local/share/svxlink/events.d/Logic.tcl
			echo ""
			echo "Ok, se ha ejecutado correctamente"
			echo ""
			break;;
			[nN]* ) echo ""
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
			echo "Quitando roger beep >>>>>"
			sleep 3
			sed -i '185c #playMsg "Core" "roger_beep";' /usr/local/share/svxlink/events.d/Logic.tcl
			echo ""
			echo "Ok, se ha ejecutado correctamente"
			echo ""
			break;;
			[nN]* ) echo ""
			break;;
esac
done;;
4000) echo ""
while true
do
clear
		    ejecutar1=S
		    case $ejecutar1 in
			[sS]* ) echo ""
			echo "ok quitando mensaje de bienvenida  >>>>>"
			sleep 3
			cd /usr/local/share/svxlink/sounds/en_US/EchoLink
			sudo mv greeting.wav greeting.wav_old
			echo ""
			echo "Ok, se ha ejecutado correctamente"
			echo ""
			break;;
			[nN]* ) echo ""
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
			echo "ok quitando beep del echolink>>>>>"
			sleep 3
			sed -i '515c #if {!$is_open} {' /usr/local/share/svxlink/events.d/EchoLink.tcl
			sed -i '516c #playSilence 200' /usr/local/share/svxlink/events.d/EchoLink.tcl
			sed -i '517c #playTone 1000 100 100' /usr/local/share/svxlink/events.d/EchoLink.tcl
			sed -i '518c #}' /usr/local/share/svxlink/events.d/EchoLink.tcl
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
8000) echo ""
while true
do
clear
		    ejecutar1=S
		    case $ejecutar1 in
			[sS]* ) echo ""
			echo "Restaurando copias de los editores BM, DMR+, LIBRE, RADIO y SVXLINK   >>>>>"
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
			cd ~/V30
            sudo cp -f solodstar.desktop ~/
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

