#!/bin/bash
while true
do
clear
ROJO="\033[1;31m"
VERDE="\033[1;32m"
BLANCO="\033[1;37m"
AMARILLO="\033[1;33m"
CIAN="\033[1;36m"
GRIS="\033[0m"
echo "${VERDE}"

echo "${VERDE}\v\v"
echo "   *********************************************************************"
echo ""
echo "${AMARILLO}                           Actualizar MMDVMHost "
echo " "
echo "${BLANCO}                       DESHABILITADO TEMPORALMENTE "
echo "${VERDE}"
echo "   *********************************************************************"
echo ""
echo -n "${CIAN}  Pulsa enter para cerrar esta ventana: "
read a
exit;


echo "\33[1;32m   *********************************************************************"
echo "   *                                                                   *"
echo "   *       Script para Actualizar MMDVMHost  \33[1;31m by EA3EIZ & EA4AOJ\33[1;32m       *"
echo "   *                                                                   *"
echo "   *********************************************************************"
echo  "\33[1;36m   1)\33[1;33m Instalación limpia de MMDVMHost (Incluye System Fusion II)\33[1;33m"
echo  "\33[1;36m   2)\33[1;33m Volver a la versión anterior de MMDVMHost \33[1;33m"
echo ""
echo "\33[1;36m   0)\33[1;34m Salir del script \33[1;31m OJO!! no salir con ctrl+c ni con la x"
echo ""
echo -n "\33[1;36m   Elige una opción: " 
read escoger_menu

case $escoger_menu in
1) echo ""
while true
do
clear
                    echo " *******************************************************************************"
                    echo " \33[1;31m* Si instalas MMDVMhost desde esta opción, perderás todas las configuraciones *"
                    echo " * Tendrás que volver a configurar todos los MMDVM                             *"
                    echo " \33[1;32m*******************************************************************************"
                    echo "\33[1;33m"
                    read -p '  Quieres hacer una instalación limpia de MMDVMHost? S/N: ' ejecutar1
                    case $ejecutar1 in
                    [sS]* ) echo ""
                    echo "ok >>>>>"
                    cd /home/orangepi/  
                    sudo rm -r /home/orangepi/MMDVMHost
                    git clone https://github.com/g4klx/MMDVMHost
                    #git clone https://github.com/ea3eiz/MMDVMHost
                    cd /home/orangepi/MMDVMHost

                    HOY=$(date +%Y%m%d)
                    FIJA="const char* VERSION = "\"
                    PI=":Opi"\"
                    HOY1=$HOY$PI
                    PUNTO=";"
                    
                    sed -i "22c $FIJA$HOY1$PUNTO" /home/orangepi/MMDVMHost/Version.h
                    sed -i "171c val \/\= 1.0;" /home/orangepi/MMDVMHost/Nextion.cpp
                   
                    #Comprueba si existe el fichero info.ini
                    if [ -f /home/orangepi/Downloads/info.ini ];
                    then
                    echo ""
                    else
                    sudo cp /home/orangepi/SCRIPTS_ORANGE/info.ini /home/orangepi/Downloads
                    fi
                    #===============================================

                   

                    # Pone la fecha de la versión MMDVMHost en la linea 2 del fichero info.ini
                    sed -i "2c $HOY" /home/orangepi/Downloads/info.ini
                    make clean
                    make

                    cp MMDVM.ini MMDVMDMR2YSF.ini
                    cp MMDVM.ini MMDVMDMR2NXDN.ini

                    # Crea los ejecutables para estas 4 aplicaciones 
                    cp MMDVMHost MMDVMRADIO 
                    cp MMDVMHost MMDVMBM
                    cp MMDVMHost MMDVMPLUS
                    cp MMDVMHost MMDVMDSTAR
                    cp MMDVMHost MMDVMFUSION
                    cp MMDVMHost DMR2NXDN
                    cp MMDVMHost DMR2YSF
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

                    cp MMDVM.ini TODOS_LOS_INIS.ini
                    
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
1000) echo ""
while true
do
clear
                    echo " *******************************************************************************"
                    echo " \33[1;31m* Si instalas MMDVMhost desde esta opción, perderás todas las configuraciones *"
                    echo " * Tendrás que volver a configurar todos los MMDVM                             *"
                    echo " \33[1;32m*******************************************************************************"
                    echo "\33[1;33m"
                    read -p '  Quieres hacer una instalación limpia de MMDVMHost? S/N: ' ejecutar1
                    case $ejecutar1 in
                    [sS]* ) echo ""
                    echo "ok >>>>>"
                    cd /home/orangepi/  
                    sudo rm -r /home/orangepi/MMDVMHost
                    git clone https://github.com/g4klx/MMDVMHost
                    cd /home/orangepi/MMDVMHost

                    HOY=$(date +%Y%m%d)
                    FIJA="const char* VERSION = "\"
                    PI=":Opi"\"
                    HOY1=$HOY$PI
                    PUNTO=";"
                    
                    sed -i "22c $FIJA$HOY1$PUNTO" /home/orangepi/MMDVMHost/Version.h
                    #sed -i "145c val \/\= 1.0;" /home/orangepi/MMDVMHost/Nextion.cpp
                   
                    #Comprueba si existe el fichero info.ini
                    if [ -f /home/orangepi/Downloads/info.ini ];
                    then
                    echo ""
                    else
                    sudo cp /home/orangepi/SCRIPTS_ORANGE/info.ini /home/orangepi/Downloads
                    fi
                    #===============================================

                   

                    # Pone la fecha de la versión MMDVMHost en la linea 2 del fichero info.ini
                    sed -i "2c $HOY" /home/orangepi/Downloads/info.ini
                    make clean
                    make

                    cp MMDVM.ini MMDVMDMR2YSF.ini
                    cp MMDVM.ini MMDVMDMR2NXDN.ini

                    # Crea los ejecutables para estas 4 aplicaciones 
                    cp MMDVMHost MMDVMRADIO 
                    cp MMDVMHost MMDVMBM
                    cp MMDVMHost MMDVMPLUS
                    cp MMDVMHost MMDVMDSTAR
                    cp MMDVMHost MMDVMFUSION
                    cp MMDVMHost DMR2NXDN
                    cp MMDVMHost DMR2YSF
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

                    cp MMDVM.ini TODOS_LOS_INIS.ini
                    
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

