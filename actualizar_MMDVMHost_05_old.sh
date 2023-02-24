#!/bin/bash
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
            
                
                    mkdir /home/orangepi/.copias
                    sudo rm -R /home/orangepi/Downloads/MMDVM*.*
                    cd /home/orangepi/
                    mkdir MMDVMHost_anterior
                    cp MMDVMHost/*.* MMDVMHost_anterior/
                    sudo rm -r MMDVMHost
                    git clone https://github.com/g4klx/MMDVMHost
                    cd /home/orangepi/MMDVMHost

                    HOY=$(date +%Y%m%d)
                    FIJA="const char* VERSION = "\"
                    PI=":Opi"\"
                    HOY1=$HOY$PI
                    PUNTO=";"
                    
                    sed -i "22c $FIJA$HOY1$PUNTO" /home/orangepi/MMDVMHost/Version.h
                  
                    #Comprueba si existe el fichero info.ini
                    if [ -f /home/orangepi/Downloads/info.ini ];
                    then
                    echo "El fichero ya existe"
                    else
                    sudo cp /home/orangepi/SCRIPTS_ORANGE/info.ini /home/orangepi/Downloads
                    fi
                    #===============================================

                    # Pone la fecha de la versión MMDVMHost en la linea 2 del fichero info.ini
                    sed -i "2c $HOY" /home/orangepi/Downloads/info.ini
                  
                    make

                    # Crea los ejecutables para estas 4 aplicaciones  
                    cp MMDVMHost MMDVMBM
                    cp MMDVMHost MMDVMPLUS
                    cp MMDVMHost MMDVMDSTAR
                    cp MMDVMHost MMDVMFUSION
                    #=================================================

                    # Rutina solo para el LIBRE ======================
                    cd /home/orangepi/SCRIPTS_ORANGE
                    cp MMDVMHostLIBRE /home/orangepi/MMDVMHost
                    cp MMDVMLIBRE.ini /home/orangepi/MMDVMHost
                    cd /home/orangepi/MMDVMHost
                    sudo chmod +x MMDVMHostLIBRE
                    #=================================================

                    # Crea los ficheros de Memorias ==================
                    cp MMDVM.ini MMDVM.ini_original
                    cp MMDVM.ini MMDVM.ini_copia
                    cp MMDVM.ini MMDVM.ini_copia2
                    cp MMDVM.ini MMDVM.ini_copia3

                    cp MMDVM.ini MMDVMBM.ini
                    cp MMDVM.ini MMDVMBM.ini_copia
                    cp MMDVM.ini MMDVMBM.ini_copia2
                    cp MMDVM.ini MMDVMBM.ini_copia3

                    cp MMDVM.ini MMDVMPLUS.ini
                    cp MMDVM.ini MMDVMPLUS.ini_copia
                    cp MMDVM.ini MMDVMPLUS.ini_copia2
                    cp MMDVM.ini MMDVMPLUS.ini_copia3

                    cp MMDVM.ini MMDVMDSTAR.ini
                    cp MMDVM.ini MMDVMFUSION.ini

                    cp MMDVMLIBRE.ini MMDVMLIBRE.ini_uno
                    cp MMDVMLIBRE.ini MMDVMLIBRE.ini_dos
                    #=================================================

                    sudo chmod +x -R /home/orangepi/MMDVMHost
                    
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
                    cd /home/orangepi/
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
            echo "Restaurando todos los .INI de la version anterior"
            sleep 3
            cd /home/orangepi/MMDVMHost_anterior
            cp -f MMDVM.ini /home/orangepi/MMDVMHost
            cp -f MMDVM.ini_copia /home/orangepi/MMDVMHost
            cp -f MMDVM.ini_copia2 /home/orangepi/MMDVMHost
            cp -f MMDVM.ini_copia3 /home/orangepi/MMDVMHost
            cp -f MMDVM.ini_original /home/orangepi/MMDVMHost
            cp -f MMDVMBM.ini /home/orangepi/MMDVMHost
            cp -f MMDVMBM.ini_copia /home/orangepi/MMDVMHost
            cp -f MMDVMBM.ini_copia2 /home/orangepi/MMDVMHost
            cp -f MMDVMBM.ini_copia3 /home/orangepi/MMDVMHost
            cp -f MMDVMLIBRE.ini /home/orangepi/MMDVMHost
            cp -f MMDVMLIBRE.ini_uno /home/orangepi/MMDVMHost
            cp -f MMDVMLIBRE.ini_dos /home/orangepi/DoMMDVMHost     
            cp -f MMDVMPLUS.ini /home/orangepi/MMDVMHost
            cp -f MMDVMPLUS.ini_copia /home/orangepi/MMDVMHost
            cp -f MMDVMPLUS.ini_copia2 /home/orangepi/MMDVMHost
            cp -f MMDVMPLUS.ini_copia3 /home/orangepi/MMDVMHost

            #solo Dstar y solo Fusion
            cp -f MMDVMDSTAR.ini /home/orangepi/MMDVMHost
            cp -f MMDVMFUSION.ini /home/orangepi/MMDVMHost
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

