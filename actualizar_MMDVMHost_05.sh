#!/bin/bash
while true
do
clear
echo "\33[1;32m   *********************************************************************"
echo "   *                                                                   *"
echo "   *         Script para Actualizar MMDVMHost \33[1;31m by EA3EIZ & EA4AOJ\33[1;32m     *"
echo "   *                                                                   *"
echo "   *********************************************************************"
echo  "\33[1;36m   1)\33[1;33m Actualizar MMDVMHost \33[1;33m"
#echo  "\33[1;31m      Esta opción está deshabilitada \33[1;32m(Firmware actualizado 20170719)   \33[1;33m"

echo ""
echo "\33[1;36m   0)\33[1;34m Salir del script \33[1;31m OJO!! no salir con ctrl+c ni con la x"
echo ""
echo -n "\33[1;36m   Elige una opción del 0 al 1: " 
read escoger_menu

case $escoger_menu in

#de momento actualización deshabilitada la posicion del ID a pasao a la numero 2
1) echo ""
while true
do
	clear
#echo " ****************************************************************"
#echo " \33[1;31m* Si actualizas MMDVMhost, perderás todas las configuraciones  *"
#echo " * Anotate las configuraciones para poder volver a ponerlas     *"
#echo " \33[1;32m****************************************************************"
#echo "\33[1;33m"
	        read -p '  Quieres actualizar MMDVMHost  Si/No: ' ejecutar1
		    case $ejecutar1 in
			[sS]* ) echo ""
			echo "ok >>>>>"

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
                       sudo rm -r MMDVMCal
                       cd ~/
                       git clone https://github.com/g4klx/MMDVMHost
                       git clone https://github.com/g4klx/MMDVMCal

                       cd ~/MMDVMHost
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
            sudo cp -f MMDVMLIBRE.ini_dos ~/DoMMDVMHost     
            sudo cp -f MMDVMPLUS.ini ~/MMDVMHost
            sudo cp -f MMDVMPLUS.ini_copia ~/MMDVMHost
            sudo cp -f MMDVMPLUS.ini_copia2 ~/MMDVMHost
            sudo cp -f MMDVMPLUS.ini_copia3 ~/MMDVMHost

            #solo Dstar y solo Fusion
            sudo cp -f MMDVMDSTAR.ini ~/MMDVMHost
            sudo cp -f MMDVMFUSION.ini ~/MMDVMHost
            #fin  Dstar y solo Fusion

 sudo chmod +x -R ~/MMDVMHost

                       echo""
clear
exit;
		        echo ""
			echo "Ok, se ha ejecutado correctamente"
			echo ""
			break;;
			[nN]* ) echo ""
sleep 1
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

