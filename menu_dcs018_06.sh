#!/bin/bash
while true
do
clear

echo "\33[1;32m   ********************************************************************"
echo "   *      Script para Grabar pantallas Nextion \33[1;33mV.02.05                \33[1;32m*"
echo "   *                     \33[1;31mby EA3EIZ & EA4AOJ\33[1;32m                           *"
echo "   ********************************************************************"
echo "\33[1;36m   1)\33[1;37m DCS018 A WORLD WIDE"
echo "\33[1;36m   2)\33[1;37m DCS018 B REM"
echo "\33[1;36m   3)\33[1;37m DCS018 C INTERNACIONAL"
echo "\33[1;36m   4)\33[1;37m DCS018 D SPAIN"
echo "\33[1;36m   5)\33[1;37m DCS018 E USA BLINGUAL EN/SP"
echo "\33[1;36m   6)\33[1;37m DCS018 F D-STAR FRANCAIS"
echo "\33[1;36m   7)\33[1;37m DCS018 G D-STAR DEUTSCH"
echo "\33[1;36m   8)\33[1;37m DCS018 H RADIO EMERGENCY"
echo "\33[1;36m   9)\33[1;37m DCS018 I D-RATS USERS"
echo "\33[1;36m  10)\33[1;37m DCS018 J AMERICA LATINA"
echo "\33[1;36m  10)\33[1;37m DCS018 K DCS<>FUSION TEST"
echo "\33[1;36m  10)\33[1;37m DCS018 L D-STAR 10mts (29"
echo "\33[1;36m  10)\33[1;37m DCS018 M REGIONAL EA1"
echo "\33[1;36m  10)\33[1;37m DCS018 N REGIONAL EA2"
echo "\33[1;36m  10)\33[1;37m DCS018 O REGIONAL EA3"
echo "\33[1;36m  10)\33[1;37m DCS018 P REGIONAL EA4"
echo "\33[1;36m  10)\33[1;37m DCS018 Q REGIONAL EA5"
echo "\33[1;36m  10)\33[1;37m DCS018 R REGIONAL EA6"
echo "\33[1;36m  10)\33[1;37m DCS018 S REGIONAL EA7"
echo "\33[1;36m  10)\33[1;37m DCS018 T TEST"
echo "\33[1;36m  10)\33[1;37m DCS018 U EUROPE"
echo "\33[1;36m  10)\33[1;37m DCS018 V DCS<>DMR TEST"
echo "\33[1;36m  10)\33[1;37m DCS018 W REGIONAL EA8-EA9"
echo "\33[1;36m  10)\33[1;37m DCS018 Z ECHO FUSION"
echo ""
echo "\33[1;36m   0)\33[1;34m Salir del script \33[1;31m OJO!! no salir con ctrl+c ni con la x"
echo ""
echo -n "\33[1;36m   Elige una opción del 0 al 4: " 
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
                        echo ">>>>>>>>> DCS018 A >>>>>"
                        sudo sed -i "20c DCS018" /home/orangepi/.config/Microsoft/dvrptr/1.0.0.0/dvrptr_X2a.cfg
                        sudo sed -i "21c A" /home/orangepi/.config/Microsoft/dvrptr/1.0.0.0/dvrptr_X2a.cfg
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
                        echo ">>>>>>>>> DCS018 B >>>>>"
                        sudo sed -i "20c DCS018" /home/orangepi/.config/Microsoft/dvrptr/1.0.0.0/dvrptr_X2a.cfg
                        sudo sed -i "21c B" /home/orangepi/.config/Microsoft/dvrptr/1.0.0.0/dvrptr_X2a.cfg
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
                        echo ">>>>>>>>> DCS018 C >>>>>"
                        sudo sed -i "20c DCS018" /home/orangepi/.config/Microsoft/dvrptr/1.0.0.0/dvrptr_X2a.cfg
                        sudo sed -i "21c C" /home/orangepi/.config/Microsoft/dvrptr/1.0.0.0/dvrptr_X2a.cfg
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
                        echo ">>>>>>>>> DCS018 D >>>>>"
                        sudo sed -i "20c DCS018" /home/orangepi/.config/Microsoft/dvrptr/1.0.0.0/dvrptr_X2a.cfg
                        sudo sed -i "21c D" /home/orangepi/.config/Microsoft/dvrptr/1.0.0.0/dvrptr_X2a.cfg
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

