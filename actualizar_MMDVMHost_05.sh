﻿#!/bin/bash
while true
do
clear
echo "\33[1;32m   *********************************************************************"
echo "   *                                                                   *"
echo "   *       Script para Actualizar MMDVMHost  \33[1;31m by EA3EIZ & EA4AOJ\33[1;32m       *"
echo "   *                                                                   *"
echo "   *********************************************************************"
#echo  "\33[1;36m   1)\33[1;33m Actualizar MMDVMHost \33[1;31m*** BLOQUEADO TEMPORALMENTE *** \33[1;33m"
echo  "\33[1;36m   1)\33[1;33m Actualizar MMDVMHost \33[1;33m"
echo  "\33[1;36m   2)\33[1;33m Volver a la versión anterior de MMDVMHost \33[1;33m"
echo  "\33[1;36m   3)\33[1;32m Recuperar solo los .INI de la versión anterior de MMDVMHost \33[1;33m"
echo ""
echo "\33[1;36m   0)\33[1;34m Salir del script \33[1;31m OJO!! no salir con ctrl+c ni con la x"
echo ""
echo -n "\33[1;36m   Elige una opción del 0 al 3: " 
read escoger_menu

case $escoger_menu in

1) echo ""
while true
do
clear
                    echo " ****************************************************************"
                    echo " \33[1;31m* Si actualizas MMDVMhost, perderás todas las configuraciones  *"
                    echo " * Tendrás que volver a configurar todos los MMDVM    *"
                    echo " \33[1;32m****************************************************************"
                    echo "\33[1;33m"
                    read -p '  Quieres actualizar MMDVMHost  perdiendo todas las configuraciones? Si/No: ' ejecutar1
                    case $ejecutar1 in
                    [sS]* ) echo ""
                    echo "ok >>>>>"
            
                    sudo rm -R ~/.copias
                    mkdir ~/.copias
                    sudo rm -R ~/Downloads/MMDVM*.*
                    cd ~/
                    sudo mv MMDVMHost MMDVMHost_anterior
                    #sudo rm -R MMDVMHost_old
                    #sudo mv -f MMDVMHost MMDVMHost_old
                    git clone https://github.com/g4klx/MMDVMHost
                    cd ~/MMDVMHost
                    make

                    # Crea los ejecutables para estas 4 aplicaciones  
                    sudo cp MMDVMHost MMDVMBM
                    sudo cp MMDVMHost MMDVMPLUS
                    sudo cp MMDVMHost MMDVMDSTAR
                    sudo cp MMDVMHost MMDVMFUSION
                    #=================================================

                    # Rutina solo para el LIBRE ======================
                    cd ~/SCRIPTS_ORANGE
                    sudo cp MMDVMHostLIBRE ~/MMDVMHost
                    sudo cp MMDVMLIBRE.ini ~/MMDVMHost
                    cd ~/MMDVMHost
                    sudo chmod +x MMDVMHostLIBRE
                    #=================================================

                    # Crea los ficheros de Memorias ==================
                    sudo cp MMDVM.ini MMDVM.ini_original
                    sudo cp MMDVM.ini MMDVM.ini_copia
                    sudo cp MMDVM.ini MMDVM.ini_copia2
                    sudo cp MMDVM.ini MMDVM.ini_copia3

                    sudo cp MMDVM.ini MMDVMBM.ini
                    sudo cp MMDVM.ini MMDVMBM.ini_copia
                    sudo cp MMDVM.ini MMDVMBM.ini_copia2
                    sudo cp MMDVM.ini MMDVMBM.ini_copia3

                    sudo cp MMDVM.ini MMDVMPLUS.ini
                    sudo cp MMDVM.ini MMDVMPLUS.ini_copia
                    sudo cp MMDVM.ini MMDVMPLUS.ini_copia2
                    sudo cp MMDVM.ini MMDVMPLUS.ini_copia3

                    sudo cp MMDVM.ini MMDVMDSTAR.ini
                    sudo cp MMDVM.ini MMDVMFUSION.ini

                    sudo cp MMDVMLIBRE.ini MMDVMLIBRE.ini_uno
                    sudo cp MMDVMLIBRE.ini MMDVMLIBRE.ini_dos
                    #=================================================

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
2) echo ""
while true
do
clear
                    read -p '  Quieres volver a la versión anterior de MMDVMHost ? Si/No: ' ejecutar1
                    case $ejecutar1 in
                    [sS]* ) echo ""
                    echo "ok >>>>>"
                    cd ~/
                    sudo rm -r MMDVMHost
                    sudo mv MMDVMHost_anterior MMDVMHost
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
3) echo ""
while true
do
clear
            ejecutar1=S
            case $ejecutar1 in
            [sS]* ) echo ""
            echo "Restaurando todos los .INI de la version anterior MMDVMHost"
            sleep 3
            cd ~/MMDVMHost_anterior
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

