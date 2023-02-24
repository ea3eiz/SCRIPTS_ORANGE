#!/bin/bash
clear
while true
do
SCRIPTS_version="SCRIPTS_ORANGE"
#Colores
ROJO="\033[1;31m"
VERDE="\033[1;32m"
BLANCO="\033[1;37m"
AMARILLO="\033[1;33m"
CIAN="\033[1;36m"
GRIS="\033[0m"
clear
echo "\33[1;32m   *********************************************************************"
echo "   *                                                                   *"
echo "   *           Script para Actualizar DV4mini \33[1;33mV.02.05   \33[1;31m by EA3EIZ\33[1;32m     *"
echo "   *                                                                   *"
echo "   *********************************************************************"
echo  "\33[1;36m   1)\33[1;33m Actualizar \33[1;32mDV4MINI20190307   \33[1;33m"
echo  "\33[1;36m   2)\33[1;33m Volver a la versión \33[1;32mDV4MINI20190127   \33[1;33m"
echo  "\33[1;36m   3)\33[1;33m Volver a la versión \33[1;32mDV4MINI20170517   \33[1;33m"
echo  "\33[1;36m   4)\33[1;33m Actualizar \33[1;32mDV4MINI20190307${AMARILLO} (NEW)   \33[1;33m"
echo ""
echo -n "\33[1;36m   Elige una opción: " 
read escoger_menu
case $escoger_menu in
1) echo ""
while true
do
clear
                        
                        ejecutar1=S
                        case $ejecutar1 in
                        [sS]* ) echo ""
                        echo ">>>>>>>>> ACTUALIZANDO >>>>>>>>"
                        sudo rm -r /home/orangepi/$SCRIPTS_version/DV4MINI/
                        cd /home/orangepi/$SCRIPTS_version
                        git clone http://github.com/ea3eiz/DV4MINI
                        sudo rm -r /home/orangepi/dv4mini
                        sudo rm /usr/bin/dv_serial
                        sudo mkdir /home/orangepi/dv4mini
                        cd /home/orangepi/$SCRIPTS_version/DV4MINI/20190307
                        sudo cp dv_serial /home/orangepi/dv4mini
                        sudo cp dv4mini.exe /home/orangepi/dv4mini
                        sudo cp xref.ip /home/orangepi/dv4mini
                        sudo cp dv4k.png /home/orangepi/dv4mini
                        sudo cp dv_serial /usr/bin/
                        cd /usr/bin/
                        sudo chmod 777 dv_serial
                        cd /home/orangepi/dv4mini
                        sudo chmod 777 dv_serial
                        clear
                        echo "************************************"
                        echo "*** SE HA ACTUALIZADO CON EXITO  ***"
                        echo "************************************"
                        sleep 3                        
                        clear
                        break;;
                        [nN]* ) echo ""
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
                        echo ">>>>>>>>> ACTUALIZANDO >>>>>>>>"
                        sudo rm -r /home/orangepi/$SCRIPTS_version/DV4MINI/
                        cd /home/orangepi/$SCRIPTS_version
                        git clone http://github.com/ea3eiz/DV4MINI
                        sudo rm -r /home/orangepi/dv4mini
                        sudo rm /usr/bin/dv_serial
                        sudo mkdir /home/orangepi/dv4mini
                        cd /home/orangepi/$SCRIPTS_version/DV4MINI/20190127
                        sudo cp dv_serial /home/orangepi/dv4mini
                        sudo cp dv4mini.exe /home/orangepi/dv4mini
                        sudo cp xref.ip /home/orangepi/dv4mini
                        sudo cp dv4k.png /home/orangepi/dv4mini
                        sudo cp dv_serial /usr/bin/
                        cd /usr/bin/
                        sudo chmod 777 dv_serial
                        cd /home/orangepi/dv4mini
                        sudo chmod 777 dv_serial
                        clear
                        echo "************************************"
                        echo "*** SE HA ACTUALIZADO CON EXITO  ***"
                        echo "************************************"
                        sleep 3                        
                        clear
                        break;;
                        [nN]* ) echo ""
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
                        echo ">>>>>>>>> ACTUALIZANDO >>>>>>>>"
                        sudo rm -r /home/orangepi/$SCRIPTS_version/DV4MINI/
                        cd /home/orangepi/$SCRIPTS_version
                        git clone http://github.com/ea3eiz/DV4MINI
                        sudo rm -r /home/orangepi/dv4mini
                        sudo rm /usr/bin/dv_serial
                        sudo mkdir /home/orangepi/dv4mini
                        cd /home/orangepi/$SCRIPTS_version/DV4MINI/20170517
                        sudo cp dv_serial /home/orangepi/dv4mini
                        sudo cp dv4mini.exe /home/orangepi/dv4mini
                        sudo cp xref.ip /home/orangepi/dv4mini
                        sudo cp dv4k.png /home/orangepi/dv4mini
                        sudo cp dv_serial /usr/bin/
                        cd /usr/bin/
                        sudo chmod 777 dv_serial
                        cd /home/orangepi/dv4mini
                        sudo chmod 777 dv_serial
                        clear
                        echo "************************************"
                        echo "*** SE HA ACTUALIZADO CON EXITO  ***"
                        echo "************************************"
                        sleep 3                        
                        clear
                        break;;
                        [nN]* ) echo ""
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
                        echo ">>>>>>>>> ACTUALIZANDO >>>>>>>>"
                        sudo rm -r /home/orangepi/$SCRIPTS_version/DV4MINI/
                        cd /home/orangepi/$SCRIPTS_version
                        git clone http://github.com/ea3eiz/DV4MINI
                        sudo rm -r /home/orangepi/dv4mini
                        sudo rm /usr/bin/dv_serial
                        sudo mkdir /home/orangepi/dv4mini
                        cd /home/orangepi/$SCRIPTS_version/DV4MINI/20190307new
                        sudo cp dv_serial /home/orangepi/dv4mini
                        sudo cp dv4mini.exe /home/orangepi/dv4mini
                        sudo cp xref.ip /home/orangepi/dv4mini
                        sudo cp dv4k.png /home/orangepi/dv4mini
                        sudo cp dv_serial /usr/bin/
                        cd /usr/bin/
                        sudo chmod 777 dv_serial
                        cd /home/orangepi/dv4mini
                        sudo chmod 777 dv_serial
                        clear
                        echo "************************************"
                        echo "*** SE HA ACTUALIZADO CON EXITO  ***"
                        echo "************************************"
                        sleep 3                        
                        clear
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

