#!/bin/bash
while true
do
clear
#SCRIPTS_version=$(awk "NR==1" ~/.config/autostart/version)
ROJO="\033[1;31m"
VERDE="\033[1;32m"
BLANCO="\033[1;37m"
AMARILLO="\033[1;33m"
CIAN="\033[1;36m"
GRIS="\033[0m"
echo "${VERDE}"
echo "   ************************************************************************"
echo "   *          Script para actualizar MMVDM_HS (Pincho Low Cost) \33[1;33m      \33[1;32m    *"
echo "   *                           \33[1;31mby EA4AOJ & EA3EIZ\33[1;32m                         *"
echo "   ************************************************************************"
echo "\33[1;36m   1)\33[1;32m Descargar y compilar el último firmware MMDVM_HS disponible"
echo "\33[1;36m   2)\33[1;33m Editar parámetros Config.h"
echo "\33[1;36m   3)\33[1;32m Compilar MMDVM_HS con tus parámetro del Config.h"
echo "\33[1;36m   4)\33[1;32m Grabar firmware MMDVM_HS por el USB (host del STM)"
echo "\33[1;36m   5)\33[1;37m Grabar firmware MMDVM_HS por el USART_1 (adaptador usb-ttl)"
echo ""
echo "   ${CIAN}Versión actual del firmware:"
#echo "\33[1;36m   2)\33[1;37m Actualizar ZUMSpot por GPIO"
echo -n "${BLANCO}   "
tac $(ls -1rt ~/MMDVMHost/MMDVM-*.log | tail -n1 ) | grep "protocol" -m 1 | sed -n 's/description: /&\n/;s/.*\n//p'
echo "   La versión se actualiza al abrir de nuevo MMMDVMHost"
echo ""
echo "\33[1;36m   0)\33[1;34m Salir del script \33[1;31m OJO!! no salir con ctrl+c ni con la x"
echo ""
echo -n "\33[1;36m   Elige una opción: " 
read escoger_menu
echo ""
case $escoger_menu in
a) echo ""
while true
do
clear
                        read -p 'Quieres continuar con el proceso S/N: ' continuar
                        case $continuar in
                        [sS]* ) echo ""
                        echo ">>>>>>>>> DESCARGANDO FIRMWARE "
                        cd ~
                        sudo rm -R MMDVM_HS 
                        git clone https://github.com/juribeparada/MMDVM_HS
                        cd MMDVM_HS/
                        git submodule init
                        git submodule update

                        clear
                        echo "${VERDE}"
                        echo "Quieres editar el fichero de configuración Config.h ? S/N:"
                        read siguiente
                        if [ "$siguiente" = "S" -o "$siguiente" = "s" ]
                        then
                        pluma ~/MMDVM_HS/Config.h
echo "${ROJO}"
echo "   ******************************"
echo "   *                            *"
echo "   *        COMPILANDO          *"
echo "   *                            *"
echo "   ******************************"
                        sleep 3
                        make clean
                        make bl
                        else
                        make clean
                        make bl
                        fi
echo "${VERDE}"
echo "   ******************************"
echo "   *                            *"
echo "   *     PROCESO TERMINADO      *"
echo "   *                            *"
echo "   ******************************"
sleep 3










                        break;;
                        [nN]* ) echo ""
                        clear
                        exit;
                        break;;
esac
done;;        
1) echo ""
while true
do
clear
                        read -p 'Quieres descargar el firmware S/N: ' continuar
                        case $continuar in
                        [sS]* ) echo ""
                        echo ">>>>>>>>> DESCARGANDO FIRMWARE "
                        cd ~
                        sudo rm -R MMDVM_HS 
                        git clone https://github.com/juribeparada/MMDVM_HS
                        cd MMDVM_HS/
                        git submodule init
                        git submodule update
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
                        read -p 'Quieres editar el fichero de configuración S/N: ' continuar
                        case $continuar in
                        [sS]* ) echo ""
                        echo ""
                        pluma ~/MMDVM_HS/Config.h
                        break;;
                        [nN]* ) echo ""
                        clear
                        break;;
esac
done;;
3) echo ""
while true
do
clear
                        read -p 'Quieres compilar MMDVN_HS con los parámetros de tu Config.h ? S/N: ' continuar
                        case $continuar in
                        [sS]* ) echo ""
                        echo ""
                        cd ~/MMDVM_HS/
                        make
                        make bl
                        break;;
                        [nN]* ) echo ""
                        clear
                        break;;
esac
done;;
4) echo ""
while true
do
clear
                        read -p 'Quieres grabar el firmware en tu dispositivo S/N: ' continuar
                        case $continuar in
                        [sS]* ) echo ""
                        echo ""
                        cd ~/MMDVM_HS/
                        cp ~/SCRIPTS_ORANGE/install_fw_librekit.sh ~/MMDVM_HS/bin/
                        cd ~/MMDVM_HS/bin
                        sleep 2
                        sudo chmod 777 install_fw_librekit.sh
                        ./install_fw_librekit.sh
                        break;;
                        [nN]* ) echo ""
                        clear
                        break;;
esac
done;;
5) echo ""
while true
do
clear
                        read -p 'Quieres grabar el firmware con bootloader en tu dispositivo con el conversor USB-TTL S/N ?: ' continuar
                        case $continuar in
                        [sS]* ) echo ""
                        echo ""
                        cd ~/MMDVM_HS/
                        sudo make serial-bl devser=/dev/ttyUSB0
                        break;;
                        [nN]* ) echo ""
                        clear
                        break;;
esac
done;;
1001) echo ""
while true
do
clear
                        read -p 'Quieres descargar el firmware S/N: ' continuar
                        case $continuar in
                        [sS]* ) echo ""
                        echo ">>>>>>>>> DESCARGANDO FIRMWARE "
                        
                        cd ~
                        git clone https://git.code.sf.net/p/stm32flash/code stm32flash
                        cd stm32flash
                        make
                        sudo make install

                        sudo apt-get update
                        sudo apt-get install gcc-arm-none-eabi gdb-arm-none-eabi libstdc++-arm-none-eabi-newlib libnewlib-arm-none-eabi

                        cd ~
                        sudo rm -R MMDVM_HS 
                        git clone https://github.com/juribeparada/MMDVM_HS
                        cd MMDVM_HS/
                        git submodule init
                        git submodule update
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

