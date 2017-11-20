#!/bin/bash
while true
do
clear

echo "\33[1;32m   ********************************************************************"
echo "   *      Script Conexiones dvrptr DCS018          \33[1;33mV.02.06            \33[1;32m*"
echo "   *                     \33[1;31mby EA3EIZ & EA4AOJ\33[1;32m                           *"
echo "   ********************************************************************"
echo -n "\33[1;36m   1)\33[1;37m DCS018 A WORLD WIDE"
echo "\33[1;36m           2)\33[1;37m DCS018 B REM"
echo -n "\33[1;36m   3)\33[1;37m DCS018 C INTERNACIONAL"
echo "\33[1;36m        4)\33[1;37m DCS018 D SPAIN"
echo -n "\33[1;36m   5)\33[1;37m DCS018 E USA BLINGUAL EN/SP"
echo "\33[1;36m   6)\33[1;37m DCS018 F D-STAR FRANCAIS"
echo -n "\33[1;36m   7)\33[1;37m DCS018 G D-STAR DEUTSCH"
echo "\33[1;36m       8)\33[1;37m DCS018 H RADIO EMERGENCY"
echo -n "\33[1;36m   9)\33[1;37m DCS018 I D-RATS USERS"
echo "\33[1;36m        10)\33[1;37m DCS018 J AMERICA LATINA"
echo -n "\33[1;36m  11)\33[1;37m DCS018 K DCS<>FUSION TEST"
echo "\33[1;36m    12)\33[1;37m DCS018 L D-STAR 10mts (29"
echo -n "\33[1;36m  13)\33[1;37m DCS018 M REGIONAL EA1"
echo "\33[1;36m        14)\33[1;37m DCS018 N REGIONAL EA2"
echo -n "\33[1;36m  15)\33[1;37m DCS018 O REGIONAL EA3"
echo "\33[1;36m        16)\33[1;37m DCS018 P REGIONAL EA4"
echo -n "\33[1;36m  17)\33[1;37m DCS018 Q REGIONAL EA5"
echo "\33[1;36m        18)\33[1;37m DCS018 R REGIONAL EA6"
echo -n "\33[1;36m  19)\33[1;37m DCS018 S REGIONAL EA7"
echo "\33[1;36m        20)\33[1;37m DCS018 T TEST"
echo -n "\33[1;36m  21)\33[1;37m DCS018 U EUROPE"
echo "\33[1;36m              22)\33[1;37m DCS018 V DCS<>DMR TEST"
echo -n "\33[1;36m  23)\33[1;37m DCS018 W REGIONAL EA8-EA9"
echo "\33[1;36m    24)\33[1;37m DCS018 Z ECHO FUSION"
echo ""
echo "\33[1;36m   0)\33[1;34m Salir del script \33[1;31m OJO!! no salir con ctrl+c ni con la x"
echo ""
echo -n "\33[1;36m   Elige una opción del 0 al 24: " 
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
5) echo ""
while true
do
clear
                        ejecutar1=S
                        case $ejecutar1 in
                        [sS]* ) echo ""
                        echo ">>>>>>>>> DCS018 E >>>>>"
                        sudo sed -i "20c DCS018" /home/orangepi/.config/Microsoft/dvrptr/1.0.0.0/dvrptr_X2a.cfg
                        sudo sed -i "21c E" /home/orangepi/.config/Microsoft/dvrptr/1.0.0.0/dvrptr_X2a.cfg
                        break;;
                        [nN]* ) echo ""
clear
exit;
break;;
esac
done;;
6) echo ""
while true
do
clear
                        ejecutar1=S
                        case $ejecutar1 in
                        [sS]* ) echo ""
                        echo ">>>>>>>>> DCS018 F >>>>>"
                        sudo sed -i "20c DCS018" /home/orangepi/.config/Microsoft/dvrptr/1.0.0.0/dvrptr_X2a.cfg
                        sudo sed -i "21c F" /home/orangepi/.config/Microsoft/dvrptr/1.0.0.0/dvrptr_X2a.cfg
                        break;;
                        [nN]* ) echo ""
clear
exit;
break;;
esac
done;;
7) echo ""
while true
do
clear
                        ejecutar1=S
                        case $ejecutar1 in
                        [sS]* ) echo ""
                        echo ">>>>>>>>> DCS018 G >>>>>"
                        sudo sed -i "20c DCS018" /home/orangepi/.config/Microsoft/dvrptr/1.0.0.0/dvrptr_X2a.cfg
                        sudo sed -i "21c G" /home/orangepi/.config/Microsoft/dvrptr/1.0.0.0/dvrptr_X2a.cfg
                        break;;
                        [nN]* ) echo ""
clear
exit;
break;;
esac
done;;
8) echo ""
while true
do
clear
                        ejecutar1=S
                        case $ejecutar1 in
                        [sS]* ) echo ""
                        echo ">>>>>>>>> DCS018 H >>>>>"
                        sudo sed -i "20c DCS018" /home/orangepi/.config/Microsoft/dvrptr/1.0.0.0/dvrptr_X2a.cfg
                        sudo sed -i "21c H" /home/orangepi/.config/Microsoft/dvrptr/1.0.0.0/dvrptr_X2a.cfg
                        break;;
                        [nN]* ) echo ""
clear
exit;
break;;
esac
done;;
9) echo ""
while true
do
clear
                        ejecutar1=S
                        case $ejecutar1 in
                        [sS]* ) echo ""
                        echo ">>>>>>>>> DCS018 I >>>>>"
                        sudo sed -i "20c DCS018" /home/orangepi/.config/Microsoft/dvrptr/1.0.0.0/dvrptr_X2a.cfg
                        sudo sed -i "21c I" /home/orangepi/.config/Microsoft/dvrptr/1.0.0.0/dvrptr_X2a.cfg
                        break;;
                        [nN]* ) echo ""
clear
exit;
break;;
esac
done;;
10) echo ""
while true
do
clear
                        ejecutar1=S
                        case $ejecutar1 in
                        [sS]* ) echo ""
                        echo ">>>>>>>>> DCS018 J >>>>>"
                        sudo sed -i "20c DCS018" /home/orangepi/.config/Microsoft/dvrptr/1.0.0.0/dvrptr_X2a.cfg
                        sudo sed -i "21c J" /home/orangepi/.config/Microsoft/dvrptr/1.0.0.0/dvrptr_X2a.cfg
                        break;;
                        [nN]* ) echo ""
clear
exit;
break;;
esac
done;;
11) echo ""
while true
do
clear
                        ejecutar1=S
                        case $ejecutar1 in
                        [sS]* ) echo ""
                        echo ">>>>>>>>> DCS018 K >>>>>"
                        sudo sed -i "20c DCS018" /home/orangepi/.config/Microsoft/dvrptr/1.0.0.0/dvrptr_X2a.cfg
                        sudo sed -i "21c K" /home/orangepi/.config/Microsoft/dvrptr/1.0.0.0/dvrptr_X2a.cfg
                        break;;
                        [nN]* ) echo ""
clear
exit;
break;;
esac
done;;
12) echo ""
while true
do
clear
                        ejecutar1=S
                        case $ejecutar1 in
                        [sS]* ) echo ""
                        echo ">>>>>>>>> DCS018 L >>>>>"
                        sudo sed -i "20c DCS018" /home/orangepi/.config/Microsoft/dvrptr/1.0.0.0/dvrptr_X2a.cfg
                        sudo sed -i "21c L" /home/orangepi/.config/Microsoft/dvrptr/1.0.0.0/dvrptr_X2a.cfg
                        break;;
                        [nN]* ) echo ""
clear
exit;
break;;
esac
done;;
13) echo ""
while true
do
clear
                        ejecutar1=S
                        case $ejecutar1 in
                        [sS]* ) echo ""
                        echo ">>>>>>>>> DCS018 M >>>>>"
                        sudo sed -i "20c DCS018" /home/orangepi/.config/Microsoft/dvrptr/1.0.0.0/dvrptr_X2a.cfg
                        sudo sed -i "21c M" /home/orangepi/.config/Microsoft/dvrptr/1.0.0.0/dvrptr_X2a.cfg
                        break;;
                        [nN]* ) echo ""
clear
exit;
break;;
esac
done;;
14) echo ""
while true
do
clear
                        ejecutar1=S
                        case $ejecutar1 in
                        [sS]* ) echo ""
                        echo ">>>>>>>>> DCS018 N >>>>>"
                        sudo sed -i "20c DCS018" /home/orangepi/.config/Microsoft/dvrptr/1.0.0.0/dvrptr_X2a.cfg
                        sudo sed -i "21c N" /home/orangepi/.config/Microsoft/dvrptr/1.0.0.0/dvrptr_X2a.cfg
                        break;;
                        [nN]* ) echo ""
clear
exit;
break;;
esac
done;;
15) echo ""
while true
do
clear
                        ejecutar1=S
                        case $ejecutar1 in
                        [sS]* ) echo ""
                        echo ">>>>>>>>> DCS018 O >>>>>"
                        sudo sed -i "20c DCS018" /home/orangepi/.config/Microsoft/dvrptr/1.0.0.0/dvrptr_X2a.cfg
                        sudo sed -i "21c 0" /home/orangepi/.config/Microsoft/dvrptr/1.0.0.0/dvrptr_X2a.cfg
                        break;;
                        [nN]* ) echo ""
clear
exit;
break;;
esac
done;;
16) echo ""
while true
do
clear
                        ejecutar1=S
                        case $ejecutar1 in
                        [sS]* ) echo ""
                        echo ">>>>>>>>> DCS018 P >>>>>"
                        sudo sed -i "20c DCS018" /home/orangepi/.config/Microsoft/dvrptr/1.0.0.0/dvrptr_X2a.cfg
                        sudo sed -i "21c P" /home/orangepi/.config/Microsoft/dvrptr/1.0.0.0/dvrptr_X2a.cfg
                        break;;
                        [nN]* ) echo ""
clear
exit;
break;;
esac
done;;
17) echo ""
while true
do
clear
                        ejecutar1=S
                        case $ejecutar1 in
                        [sS]* ) echo ""
                        echo ">>>>>>>>> DCS018 Q >>>>>"
                        sudo sed -i "20c DCS018" /home/orangepi/.config/Microsoft/dvrptr/1.0.0.0/dvrptr_X2a.cfg
                        sudo sed -i "21c Q" /home/orangepi/.config/Microsoft/dvrptr/1.0.0.0/dvrptr_X2a.cfg
                        break;;
                        [nN]* ) echo ""
clear
exit;
break;;
esac
done;;
18) echo ""
while true
do
clear
                        ejecutar1=S
                        case $ejecutar1 in
                        [sS]* ) echo ""
                        echo ">>>>>>>>> DCS018 R >>>>>"
                        sudo sed -i "20c DCS018" /home/orangepi/.config/Microsoft/dvrptr/1.0.0.0/dvrptr_X2a.cfg
                        sudo sed -i "21c R" /home/orangepi/.config/Microsoft/dvrptr/1.0.0.0/dvrptr_X2a.cfg
                        break;;
                        [nN]* ) echo ""
clear
exit;
break;;
esac
done;;
19) echo ""
while true
do
clear
                        ejecutar1=S
                        case $ejecutar1 in
                        [sS]* ) echo ""
                        echo ">>>>>>>>> DCS018 S >>>>>"
                        sudo sed -i "20c DCS018" /home/orangepi/.config/Microsoft/dvrptr/1.0.0.0/dvrptr_X2a.cfg
                        sudo sed -i "21c S" /home/orangepi/.config/Microsoft/dvrptr/1.0.0.0/dvrptr_X2a.cfg
                        break;;
                        [nN]* ) echo ""
clear
exit;
break;;
esac
done;;

20) echo ""
while true
do
clear
                        ejecutar1=S
                        case $ejecutar1 in
                        [sS]* ) echo ""
                        echo ">>>>>>>>> DCS018 T >>>>>"
                        sudo sed -i "20c DCS018" /home/orangepi/.config/Microsoft/dvrptr/1.0.0.0/dvrptr_X2a.cfg
                        sudo sed -i "21c T" /home/orangepi/.config/Microsoft/dvrptr/1.0.0.0/dvrptr_X2a.cfg
                        break;;
                        [nN]* ) echo ""
clear
exit;
break;;
esac
done;;
21) echo ""
while true
do
clear
                        ejecutar1=S
                        case $ejecutar1 in
                        [sS]* ) echo ""
                        echo ">>>>>>>>> DCS018 U >>>>>"
                        sudo sed -i "20c DCS018" /home/orangepi/.config/Microsoft/dvrptr/1.0.0.0/dvrptr_X2a.cfg
                        sudo sed -i "21c U" /home/orangepi/.config/Microsoft/dvrptr/1.0.0.0/dvrptr_X2a.cfg
                        break;;
                        [nN]* ) echo ""
clear
exit;
break;;
esac
done;;
22) echo ""
while true
do
clear
                        ejecutar1=S
                        case $ejecutar1 in
                        [sS]* ) echo ""
                        echo ">>>>>>>>> DCS018 V >>>>>"
                        sudo sed -i "20c DCS018" /home/orangepi/.config/Microsoft/dvrptr/1.0.0.0/dvrptr_X2a.cfg
                        sudo sed -i "21c V" /home/orangepi/.config/Microsoft/dvrptr/1.0.0.0/dvrptr_X2a.cfg
                        break;;
                        [nN]* ) echo ""
clear
exit;
break;;
esac
done;;
23) echo ""
while true
do
clear
                        ejecutar1=S
                        case $ejecutar1 in
                        [sS]* ) echo ""
                        echo ">>>>>>>>> DCS018 W >>>>>"
                        sudo sed -i "20c DCS018" /home/orangepi/.config/Microsoft/dvrptr/1.0.0.0/dvrptr_X2a.cfg
                        sudo sed -i "21c W" /home/orangepi/.config/Microsoft/dvrptr/1.0.0.0/dvrptr_X2a.cfg
                        break;;
                        [nN]* ) echo ""
clear
exit;
break;;
esac
done;;
24) echo ""
while true
do
clear
                        ejecutar1=S
                        case $ejecutar1 in
                        [sS]* ) echo ""
                        echo ">>>>>>>>> DCS018 Z >>>>>"
                        sudo sed -i "20c DCS018" /home/orangepi/.config/Microsoft/dvrptr/1.0.0.0/dvrptr_X2a.cfg
                        sudo sed -i "21c Z" /home/orangepi/.config/Microsoft/dvrptr/1.0.0.0/dvrptr_X2a.cfg
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

