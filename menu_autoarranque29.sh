#!/bin/bash
# script para instalar md380tools
while true
do
clear

echo "\33[1;32m   ************************************************************"
echo "   *                                                          *"
echo "   *    Script para Modificar AUTOARRANQUE     \33[1;31m by EA3EIZ\33[1;32m     *"
echo "   *                                                          *"
echo "   ************************************************************"
echo -n "\33[1;36m   1)\33[1;37m  Quitar D-STAR del autoarranque    - \33[1;32m"
dstar=`grep "D-STAR" /home/pi/autoarranque.ini`
dstar=`expr substr $dstar 8 3`
if [ $dstar = "ON" ]
then
echo "\33[1;32m$dstar"
else
echo "\33[1;31m"
fi
dstar=`grep "D-STAR" /home/pi/autoarranque.ini`


#echo -n "\33[1;36m  22)\33[1;37m  Quitar D-STAR Repeater            - \33[1;32m"
#dstarr=`grep "dstarrepeater" /home/pi/autoarranque.ini`
#dstarr=`expr substr $dstarr 15 3`
#if [ $dstarr = "ON" ]
#then
#echo "\33[1;32m$dstarr"
#else
#echo "\33[1;31m"
#fi
#dstarr=`grep "dstarrepeater" /home/pi/autoarranque.ini`


echo -n "\33[1;36m   2)\33[1;37m  Quitar BlueDV del autoarranque    - \33[1;32m"
bluedv=`grep "BlueDV" /home/pi/autoarranque.ini`
bluedv=`expr substr $bluedv 8 3`
if [ $bluedv = "ON" ]
then
echo "\33[1;32m$bluedv"
else
echo "\33[1;31m"
fi
bluedv=`grep "BlueDV" /home/pi/autoarranque.ini`

echo -n "\33[1;36m   3)\33[1;37m  Quitar YSF del autoarranque       - "
YSF=`grep "YSF" /home/pi/autoarranque.ini`
YSF=`expr substr $YSF 5 3`
if [ $YSF = "ON" ]
then
echo "\33[1;32m$YSF"
else
echo "\33[1;31m"
fi
bluedv=`grep "YSF" /home/pi/autoarranque.ini`

echo -n "\33[1;36m   4)\33[1;37m  Quitar DV4mini del autoarranque   - "
DV4mini=`grep "DV4mini" /home/pi/autoarranque.ini`
DV4mini=`expr substr $DV4mini 9 3`
if [ $DV4mini = "ON" ]
then
echo "\33[1;32m$DV4mini"
else
echo "\33[1;31m"
fi
bluedv=`grep "DV4mini" /home/pi/autoarranque.ini`

echo -n "\33[1;36m   5)\33[1;37m  Quitar MMDVM del autoarranque     - "
MMDVMPLACA=`grep "MMDVMPLACA" /home/pi/autoarranque.ini`
MMDVMPLACA=`expr substr $MMDVMPLACA 12 3`
if [ $MMDVMPLACA = "ON" ]
then
echo "\33[1;32m$MMDVMPLACA"
else
echo "\33[1;31m"
fi
bluedv=`grep "MMDVMPLACA" /home/pi/autoarranque.ini`

echo -n "\33[1;36m   6)\33[1;37m  Quitar MMDVMPLUS del autoarranque - "
MMDVMPLUS=`grep "MMDVMPLUS" /home/pi/autoarranque.ini`
MMDVMPLUS=`expr substr $MMDVMPLUS 11 3`
if [ $MMDVMPLUS = "ON" ]
then
echo "\33[1;32m$MMDVMPLUS"
else
echo "\33[1;31m"
fi
bluedv=`grep "MMDVMPLUS" /home/pi/autoarranque.ini`

echo -n "\33[1;36m   7)\33[1;37m  Quitar MMDVMBM del autoarranque   - "
MMDVMBM=`grep "MMDVMBM" /home/pi/autoarranque.ini`
MMDVMBM=`expr substr $MMDVMBM 9 3`
if [ $MMDVMBM = "ON" ]
then
echo "\33[1;32m$MMDVMBM"
else
echo "\33[1;31m"
fi
bluedv=`grep "MMDVMBM" /home/pi/autoarranque.ini`

echo -n "\33[1;36m   8)\33[1;37m  Quitar SVXLINK del autoarranque   - "
SVXLINK=`grep "SVXLINK" /home/pi/autoarranque.ini`
SVXLINK=`expr substr $SVXLINK 9 3`
if [ $SVXLINK = "ON" ]
then
echo "\33[1;32m$SVXLINK"
else
echo "\33[1;31m"
fi
bluedv=`grep "SVXLINK" /home/pi/autoarranque.ini`

echo "\33[1;33m"
echo -n "\33[1;36m   9)\33[1;33m  Poner DSTAR en el autoarranque    - "
dstar=`grep "D-STAR" /home/pi/autoarranque.ini`
dstar=`expr substr $dstar 8 3`
if [ $dstar = "OFF" ]
then
echo "\33[1;31m$dstar"
else
echo "\33[1;31m"
fi
dstar=`grep "D-STAR" /home/pi/autoarranque.ini`

#echo -n "\33[1;36m  99)\33[1;33m  Poner Solo DSTAR Repeater         - "
#dstarr=`grep "dstarrepeater" /home/pi/autoarranque.ini`
#dstarr=`expr substr $dstarr 15 3`
#if [ $dstarr = "OFF" ]
#then
#echo "\33[1;31m$dstarr"
#else
#echo "\33[1;31m"
#fi
#dstarr=`grep "dstarrepeater" /home/pi/autoarranque.ini`

echo -n "\33[1;36m  10)\33[1;33m  Poner BlueDV en el autoarranque   - "
bluedv=`grep "BlueDV" /home/pi/autoarranque.ini`
bluedv=`expr substr $bluedv 8 3`
if [ $bluedv = "OFF" ]
then
echo "\33[1;31m$bluedv"
else
echo "\33[1;31m"
fi
bluedv=`grep "BlueDV" /home/pi/autoarranque.ini`

echo -n "\33[1;36m  11)\33[1;33m  Poner YSF en el autoarranque      - "
YSF=`grep "YSF" /home/pi/autoarranque.ini`
YSF=`expr substr $YSF 5 3`
if [ $YSF = "OFF" ]
then
echo "\33[1;31m$YSF"
else
echo "\33[1;31m"
fi
bluedv=`grep "YSF" /home/pi/autoarranque.ini`

echo -n "\33[1;36m  12)\33[1;33m  Poner DV4mini en el autoarranque  - "
DV4mini=`grep "DV4mini" /home/pi/autoarranque.ini`
DV4mini=`expr substr $DV4mini 9 3`
if [ $DV4mini = "OFF" ]
then
echo "\33[1;31m$DV4mini"
else
echo "\33[1;31m"
fi
bluedv=`grep "DV4mini" /home/pi/autoarranque.ini`

echo -n "\33[1;36m  13)\33[1;33m  Poner MMDVM en el autoarranque    - "
MMDVMPLACA=`grep "MMDVMPLACA" /home/pi/autoarranque.ini`
MMDVMPLACA=`expr substr $MMDVMPLACA 12 3`
if [ $MMDVMPLACA = "OFF" ]
then
echo "\33[1;31m$MMDVMPLACA"
else
echo "\33[1;31m"
fi
bluedv=`grep "MMDVMPLACA" /home/pi/autoarranque.ini`

echo -n "\33[1;36m  14)\33[1;33m  Poner MMDVMPLUS en autoarranque   - "
MMDVMPLUS=`grep "MMDVMPLUS" /home/pi/autoarranque.ini`
MMDVMPLUS=`expr substr $MMDVMPLUS 11 3`
if [ $MMDVMPLUS = "OFF" ]
then
echo "\33[1;31m$MMDVMPLUS"
else
echo "\33[1;31m"
fi
bluedv=`grep "MMDVMPLUS" /home/pi/autoarranque.ini`

echo -n "\33[1;36m  15)\33[1;33m  Poner MMDVMBM en el autoarranque  - "
MMDVMBM=`grep "MMDVMBM" /home/pi/autoarranque.ini`
MMDVMBM=`expr substr $MMDVMBM 9 3`
if [ $MMDVMBM = "OFF" ]
then
echo "\33[1;31m$MMDVMBM"
else
echo "\33[1;31m"
fi
bluedv=`grep "MMDVMBM" /home/pi/autoarranque.ini`

echo -n "\33[1;36m  16)\33[1;33m  Poner SVXLINK en el autoarranque  - "
SVXLINK=`grep "SVXLINK" /home/pi/autoarranque.ini`
SVXLINK=`expr substr $SVXLINK 9 3`
if [ $SVXLINK = "OFF" ]
then
echo "\33[1;31m$SVXLINK"
else
echo "\33[1;31m"
fi
bluedv=`grep "SVXLINK" /home/pi/autoarranque.ini`
echo "\33[0m "
echo "\33[1;36m  17)\33[1;31m *** REINICIAR LA RASPBERRY PI ***"
echo ""
echo "\33[1;36m   0)\33[1;34m Salir del script \33[1;31m OJO!! no salir con ctrl+c ni con la x"
echo ""
echo "\33[1;36m   Por favor, elige una opción del 0 al 17" 
read escoger_menu
echo ""

case $escoger_menu in
1) echo ""
while true
do
clear
	        actualizar=S
		    case $actualizar in
			[sS]* ) echo ""
			echo "Quitando D-STAR del autoarranque >>>>>"
			sleep 1
			cd /home/pi/.config/autostart
			sudo mv Gateway.desktop /home/pi
			sed -i "1c D-STAR=OFF" /home/pi/autoarranque.ini
			break;;
			[nN]* ) echo ""
			break;;
esac
done;;
22) echo ""
while true
do
clear
            actualizar=S
            case $actualizar in
            [sS]* ) echo ""
            echo "Quitando D-STAR Repeater del autoarranque >>>>>"
            sleep 1
            cd /home/pi/.config/autostart
            sudo mv dstarrepeater.desktop /home/pi
            sed -i "9c dstarrepeater=OFF" /home/pi/autoarranque.ini
            break;;
            [nN]* ) echo ""
            break;;
esac
done;;
2) echo ""
while true
do
clear
	        actualizar=S
		    case $actualizar in
			[sS]* ) echo ""
			echo "Quitando BlueDV del autoarranque >>>>>"
            sleep 1
            cd /home/pi/.config/autostart
			sudo mv BlueDV.desktop /home/pi
			sed -i "2c BlueDV=OFF" /home/pi/autoarranque.ini
			break;;
			[nN]* ) echo ""
			break;;
esac
done;;
3) echo ""
while true
do
clear

                       actualizar=S
		               case $actualizar in
			           [sS]* ) echo ""
			           echo "Quitando YSF del autoarranque >>>>>"
                       sleep 1
                       cd /home/pi/.config/autostart
                       sudo mv ysfgateway.desktop /home/pi
                       sed -i "3c YSF=OFF" /home/pi/autoarranque.ini
                       break;;
                       [nN]* ) echo ""
                       break;;
esac
done;;
4) echo ""
while true
do
clear            
                        actualizar=S
		                case $actualizar in
			            [sS]* ) echo ""
			            echo "Quitando DV4mini del autoarranque >>>>>"
                        sleep 1
                        cd /home/pi/.config/autostart
                        sudo mv dv4mini.desktop /home/pi
                        sed -i "4c DV4mini=OFF" /home/pi/autoarranque.ini
                        break;;
                        [nN]* ) echo ""
                        break;;
esac
done;;
5) echo ""
while true
do
clear              
                        actualizar=S
		                case $actualizar in
			            [sS]* ) echo ""
			            echo "Quitando MMDVM del autoarranque >>>>>"
                        sleep 1
                        cd /home/pi/.config/autostart
                        sudo mv MMDVM.desktop /home/pi
                        sed -i "5c MMDVMPLACA=OFF" /home/pi/autoarranque.ini
                        break;;
                        [nN]* ) echo ""
                        break;;
esac
done;;
6) echo ""
while true
do
clear              
                        actualizar=S
		                case $actualizar in
			            [sS]* ) echo ""
			            echo "Quitando MMDVMPLUS del autoarranque >>>>>"
                        sleep 1
                        cd /home/pi/.config/autostart
                        sudo mv MMDVMPLUS.desktop /home/pi
                        sed -i "6c MMDVMPLUS=OFF" /home/pi/autoarranque.ini
                        break;;
                        [nN]* ) echo ""
                        break;;
esac
done;;
7) echo ""
while true
do
clear              
                        actualizar=S
		                case $actualizar in
			            [sS]* ) echo ""
			            echo "Quitando MMDVMBM del autoarranque >>>>>"
                        sleep 1
                        cd /home/pi/.config/autostart
                        sudo mv MMDVMBM.desktop /home/pi
                        sed -i "7c MMDVMBM=OFF" /home/pi/autoarranque.ini
                        break;;
                        [nN]* ) echo ""
                        break;;
esac
done;;
8) echo ""
while true
do
clear	        
		    actualizar=S
		    case $actualizar in
			[sS]* ) echo ""
			echo "Quitando SVXLINK del autoarranque >>>>>"
            sleep 1
            cd /home/pi/.config/autostart
			sudo mv svxlink.desktop /home/pi
			sed -i "8c SVXLINK=OFF" /home/pi/autoarranque.ini
			break;;
			[nN]* ) echo ""
			break;;
esac
done;;
9) echo ""
while true
do
clear	        
		    actualizar=S
		    case $actualizar in
			[sS]* ) echo ""
			echo "Poniendo DSTAR en el autoarranque >>>>>"
			bluedv=`grep "BlueDV" /home/pi/autoarranque.ini`
bluedv=`expr substr $bluedv 8 3`
if [ $bluedv = "OFF" ]
then
# sleep 1
            cd /home/pi/
			sudo mv Gateway.desktop /home/pi/.config/autostart/
			sed -i "1c D-STAR=ON" /home/pi/autoarranque.ini
clear
           echo "\33[1;32m**********************************************************"
           echo "*                                                        *"
           echo "*  \33[1;31mDebes de tener MMDVMBM ó MMDVMPLUS en el autoarranque \33[1;32m*"
           echo "*               \33[1;31m para que funcione D-STAR                \33[1;32m*"
           echo "*                                                        *"
           echo "**********************************************************"
           echo ""
           echo ""
           echo -n "\33[1;37mPulsa enter para seguir  "
           read parado
else
clear
echo "\33[1;31m No pueden estar en el autoarranque  BlueDV y D-STAR a la vez"
sleep 5
fi        
			break;;
			[nN]* ) echo ""
			break;;
esac
done;;
#99) echo ""
#while true
#do
#clear           
            #actualizar=S
            #case $actualizar in
            #[sS]* ) echo ""
            #echo "Poniendo DSTAR Repeater en el autoarranque >>>>>"
            #bluedv=`grep "BlueDV" /home/pi/autoarranque.ini`
#bluedv=`expr substr $bluedv 8 3`
#if [ $bluedv = "OFF" ]
#then
# sleep 1
            #cd /home/pi/
           # sudo mv dstarrepeater.desktop /home/pi/.config/autostart/
           # sed -i "9c dstarrepeater=ON" /home/pi/autoarranque.ini
#else
#clear
#echo "\33[1;31m No pueden estar en el autoarranque  BlueDV y D-STAR Repeater a la vez"
#sleep 5
#fi        
           # break;;
           # [nN]* ) echo ""
            #break;;
#esac
#done;;
10) echo ""
while true
do
clear
	                                   actualizar=S
		                         case $actualizar in
			               [sS]* ) echo ""
			               dstar=`grep "D-STAR" /home/pi/autoarranque.ini`
                                             bm=`grep "MMDVMBM" /home/pi/autoarranque.ini`
                                             plus=`grep "MMDVMPLUS" /home/pi/autoarranque.ini`
                                             ys=`grep "YSF" /home/pi/autoarranque.ini`
dstar=`expr substr $dstar 8 2`
bm=`expr substr $bm 9 2`
plus=`expr substr $plus 11 2`
ys=`expr substr $ys 5 2`
if [ $dstar = "ON" ]
then      
echo "\33[1;31m No pueden estar en el autoarranque  BlueDV y D-STAR a la vez"
sleep 5
else                                     

if [ $ys = "ON" ]
then      
echo "\33[1;31m No pueden estar en el autoarranque  BlueDV y YSF a la vez"
sleep 5
else
			
if [ $bm = "ON" ]
then     
echo "\33[1;31m No pueden estar en el autoarranque  BlueDV y MMDVMBM a la vez"
sleep 5
else          

if [ $plus = "ON" ]
then     
echo "\33[1;31m No pueden estar en el autoarranque  BlueDV y MMDVMPLUS a la vez"
sleep 5
else                            
                                            echo "Poniendo BlueDV en el autoarranque >>>>>"
                                            sleep 1
                                            cd /home/pi
                                            sudo mv BlueDV.desktop /home/pi/.config/autostart/
                                            sed -i "2c BlueDV=ON" /home/pi/autoarranque.ini
fi
fi 
fi 
fi 
			break;;
			[nN]* ) echo ""
			break;;
esac
done;;
11) echo ""
while true
do
clear              
                        actualizar=S
		                case $actualizar in
			            [sS]* ) echo ""
			            echo "Poniendo YSF en el autoarranque >>>>>"
bluedv=`grep "BlueDV" /home/pi/autoarranque.ini`
bluedv=`expr substr $bluedv 8 3`
if [ $bluedv = "OFF" ]
then
  sleep 1
                        cd /home/pi
                        sudo mv ysfgateway.desktop /home/pi/.config/autostart/
                        sed -i "3c YSF=ON" /home/pi/autoarranque.ini
                        sed -i "3c YSF=ON" /home/pi/status.ini

clear
           echo "\33[1;32m**********************************************************"
           echo "*                                                        *"
           echo "*  \33[1;31mDebes de tener MMDVMBM ó MMDVMPLUS en el autoarranque \33[1;32m*"
           echo "*               \33[1;31m para que funcione YSF                   \33[1;32m*"
           echo "*                                                        *"
           echo "**********************************************************"
           echo ""
           echo ""
           echo -n "\33[1;37mPulsa enter para seguir  "
           read parado


else
clear
echo "\33[1;31m No pueden estar en el autoarranque  BlueDV y YSF a la vez"
sleep 5
fi        

                        break;;
                        [nN]* ) echo ""
                        break;;
esac
done;;
12) echo ""
while true
do
clear               
                        actualizar=S
		                case $actualizar in
			            [sS]* ) echo ""
			            echo "Poniendo DV4mini en el autoarranque >>>>>"
                        sleep 1
                        cd /home/pi
                        sudo mv dv4mini.desktop /home/pi/.config/autostart/
                        sed -i "4c DV4mini=ON" /home/pi/autoarranque.ini
                        break;;
                        [nN]* ) echo ""
                        break;;
esac
done;;
13) echo ""
while true
do
clear           
                        actualizar=S
		                case $actualizar in
			            [sS]* ) echo ""
			            echo "Poniendo MMDVM en el autoarranque >>>>>"
                        cd /home/pi
                        sudo mv MMDVM.desktop /home/pi/.config/autostart/
                        sed -i "5c MMDVMPLACA=ON" /home/pi/autoarranque.ini		            			            
                        sleep 1
                        cd /home/pi
                        sudo mv MMDVM.desktop /home/pi/.config/autostart/
                        sed -i "5c MMDVMPLACA=ON" /home/pi/autoarranque.ini
                        break;;
                        [nN]* ) echo ""
                        break;;
esac
done;;
14) echo ""
while true
do
clear              
                       actualizar=S
	             case $actualizar in
	             [sS]* ) echo ""
                       blue=`grep "BlueDV" /home/pi/autoarranque.ini`
                       bm=`grep "MMDVMBM" /home/pi/autoarranque.ini`
                       plus=`grep "MMDVMPLUS" /home/pi/autoarranque.ini`
blue=`expr substr $blue 8 2`
bm=`expr substr $bm 9 2`
plus=`expr substr $plus 11 2`
if [ $blue = "ON" ]
then      
echo "\33[1;31m No pueden estar en el autoarranque  BlueDV y MMDVMPLUS a la vez"
sleep 5
else                                     
            
if [ $bm = "ON" ]
then     
echo "\33[1;31m No pueden estar en el autoarranque  MMDVMPLUS y MMDVMBM a la vez"
sleep 5
else          
                            
                        echo "Poniendo MMDVMPLUS en el autoarranque >>>>>"
                        sleep 1
                        cd /home/pi
                        sudo mv MMDVMPLUS.desktop /home/pi/.config/autostart/
                        sed -i "6c MMDVMPLUS=ON" /home/pi/autoarranque.ini
                        sed -i "6c MMDVMPLUS=ON" /home/pi/status.ini
fi
fi 

                        break;;
                        [nN]* ) echo ""
                        break;;
esac
done;;
15) echo ""
while true
do
clear
                        actualizar=S
                 case $actualizar in
                 [sS]* ) echo ""
                       blue=`grep "BlueDV" /home/pi/autoarranque.ini`
                       bm=`grep "MMDVMBM" /home/pi/autoarranque.ini`
                       plus=`grep "MMDVMPLUS" /home/pi/autoarranque.ini`
blue=`expr substr $blue 8 2`
bm=`expr substr $bm 9 2`
plus=`expr substr $plus 11 2`
if [ $blue = "ON" ]
then      
echo "\33[1;31m No pueden estar en el autoarranque  BlueDV y MMDVMBM a la vez"
sleep 5
else                                     
            
if [ $plus = "ON" ]
then     
echo "\33[1;31m No pueden estar en el autoarranque  MMDVMPLUS y MMDVMBM a la vez"
sleep 5
else          
                            
                        echo "Poniendo MMDVMBM en el autoarranque >>>>>"
                        sleep 1
                        cd /home/pi
                        sudo mv MMDVMBM.desktop /home/pi/.config/autostart/
                        sed -i "7c MMDVMBM=ON" /home/pi/autoarranque.ini
                        sed -i "7c MMDVMBM=ON" /home/pi/status.ini
fi
fi 

                        break;;
                        [nN]* ) echo ""
                        break;;
esac
done;;


16) echo ""

while true
do
clear

	        
		                actualizar=S
		                case $actualizar in
			            [sS]* ) echo ""
			            echo "Poniendo SVXLINK en el autoarranque >>>>>"
                        sleep 1
                        cd /home/pi
			            sudo mv svxlink.desktop /home/pi/.config/autostart
			            sed -i "8c SVXLINK=ON" /home/pi/autoarranque.ini
			            break;;
			            [nN]* ) echo ""
			            break;;
esac
done;;





17) echo ""

while true
do
clear
echo " \33[1;31m  ************************************************************"
echo "   *                                                          *"
echo "   *     OJO!!   SE VA A REINICIAR LA RASPBERRY PI            *"
echo "   *                                                          *"
echo "   ************************************************************"
echo ""
                read -p '   Estás seguro de querer reiniciar ? Si/No: ' ejecutar13
                    case $ejecutar13 in
                        [sS]* ) echo ""
                        echo "ok >>>>>"
                        sudo reboot
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
echo "\33[1;33m   **************************************************"
echo "   *                                                *"
echo "   *     CERRANDO SCRIPT                            *"
echo "   *                                                *"
echo "   **************************************************"
sleep 1
clear
exit;;	
esac
done

