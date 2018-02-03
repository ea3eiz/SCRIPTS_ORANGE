﻿#!/bin/bash
# script para instalar md380tools
while true
do
clear

echo "\33[1;32m   ************************************************************"
echo "   *                                                          *"
echo "   * Script Modificar AUTOARRANQUE \33[1;33mV.02.05\33[1;31m by EA3EIZ & EA4AOJ\33[1;32m *"
echo "   *                                                          *"
echo "   ************************************************************"
echo -n "\33[1;36m   1)\33[1;37m  Quitar ircDDB del autoarranque        - \33[1;32m"
dstar=`grep "D-STAR" ~/autoarranque.ini`
dstar=`expr substr $dstar 8 3`
if [ $dstar = "ON" ]
then
echo "\33[1;32m$dstar"
else
echo "\33[1;31m"
fi
dstar=`grep "D-STAR" ~/autoarranque.ini`

echo -n "\33[1;36m   2)\33[1;37m  Quitar BlueDV del autoarranque        - \33[1;32m"
bluedv=`grep "BlueDV" ~/autoarranque.ini`
bluedv=`expr substr $bluedv 8 3`
if [ $bluedv = "ON" ]
then
echo "\33[1;32m$bluedv"
else
echo "\33[1;31m"
fi
bluedv=`grep "BlueDV" ~/autoarranque.ini`

echo -n "\33[1;36m   3)\33[1;37m  Quitar YSF del autoarranque           - "
YSF=`grep "YSF" ~/autoarranque.ini`
YSF=`expr substr $YSF 5 3`
if [ $YSF = "ON" ]
then
echo "\33[1;32m$YSF"
else
echo "\33[1;31m"
fi
bluedv=`grep "YSF" ~/autoarranque.ini`

echo -n "\33[1;36m   4)\33[1;37m  Quitar DV4mini del autoarranque       - "
DV4mini=`grep "DV4mini" ~/autoarranque.ini`
DV4mini=`expr substr $DV4mini 9 3`
if [ $DV4mini = "ON" ]
then
echo "\33[1;32m$DV4mini"
else
echo "\33[1;31m"
fi
bluedv=`grep "DV4mini" ~/autoarranque.ini`

echo -n "\33[1;36m   5)\33[1;37m  Quitar Radio del autoarranque         - "
MMDVMPLACA=`grep "MMDVMPLACA" ~/autoarranque.ini`
MMDVMPLACA=`expr substr $MMDVMPLACA 12 3`
if [ $MMDVMPLACA = "ON" ]
then
echo "\33[1;32m$MMDVMPLACA"
else
echo "\33[1;31m"
fi
bluedv=`grep "MMDVMPLACA" ~/autoarranque.ini`

echo -n "\33[1;36m   6)\33[1;37m  Quitar DMR+ del autoarranque          - "
MMDVMPLUS=`grep "MMDVMPLUS" ~/autoarranque.ini`
MMDVMPLUS=`expr substr $MMDVMPLUS 11 3`
if [ $MMDVMPLUS = "ON" ]
then
echo "\33[1;32m$MMDVMPLUS"
else
echo "\33[1;31m"
fi
bluedv=`grep "MMDVMPLUS" ~/autoarranque.ini`





echo -n "\33[1;36m   7)\33[1;37m  Quitar LIBRE del autoarranque         - "
MMDVMLIBRE=`grep "MMDVMLIBRE" ~/autoarranque.ini`
MMDVMLIBRE=`expr substr $MMDVMLIBRE 12 3`
if [ $MMDVMLIBRE = "ON" ]
then
echo "\33[1;32m$MMDVMLIBRE"
else
echo "\33[1;31m"
fi
bluedv=`grep "MMDVMLIBRE" ~/autoarranque.ini`


echo -n "\33[1;36m   8)\33[1;37m  Quitar BM del autoarranque            - "
MMDVMBM=`grep "MMDVMBM" ~/autoarranque.ini`
MMDVMBM=`expr substr $MMDVMBM 9 3`
if [ $MMDVMBM = "ON" ]
then
echo "\33[1;32m$MMDVMBM"
else
echo "\33[1;31m"
fi
bluedv=`grep "MMDVMBM" ~/autoarranque.ini`



echo -n "\33[1;36m   9)\33[1;37m  Quitar SVXLINK del autoarranque       - "
SVXLINK=`grep "SVXLINK" ~/autoarranque.ini`
SVXLINK=`expr substr $SVXLINK 9 3`
if [ $SVXLINK = "ON" ]
then
echo "\33[1;32m$SVXLINK"
else
echo "\33[1;31m"
fi
bluedv=`grep "SVXLINK" ~/autoarranque.ini`



#==================================================================================
echo -n "\33[1;36m  10)\33[1;37m  Quitar SOLO_DSTAR del autoarranque    - \33[1;32m"
solod=`grep "SOLO_DSTAR" ~/autoarranque.ini`
solod=`expr substr $solod 12 3`
if [ $solod = "ON" ]
then
echo "\33[1;32m$solod"
else
echo "\33[1;31m"
fi
solod=`grep "SOLO_DSTAR" ~/autoarranque.ini`
#=================================================================================


#==================================================================================
echo -n "\33[1;36m  11)\33[1;37m  Quitar SOLO_FUSION del autoarranque   - \33[1;32m"
solof=`grep "SOLO_FUSION" ~/autoarranque.ini`
solof=`expr substr $solof 13 3`
if [ $solof = "ON" ]
then
echo "\33[1;32m$solof"
else
echo "\33[1;31m"
fi
solof=`grep "SOLO_FUSION" ~/autoarranque.ini`
#=================================================================================

#==================================================================================
echo -n "\33[1;36m  12)\33[1;37m  Quitar DVRPTR del autoarranque        - \33[1;32m"
dvrptrq=`grep "DVRPTR" ~/autoarranque.ini`
dvrptrq=`expr substr $dvrptrq 8 3`
if [ $dvrptrq = "ON" ]
then
echo "\33[1;32m$dvrptrq"
else
echo "\33[1;31m"
fi
solof=`grep "DVRPTR" ~/autoarranque.ini`
#=================================================================================

#==================================================================================
echo -n "\33[1;36m  13)\33[1;37m  Quitar YSF2DMR del autoarranque       - \33[1;32m"
var1=`grep "F2DMR" ~/autoarranque.ini`
var1=`expr substr $var1 7 3`
if [ $var1 = "ON" ]
then
echo "\33[1;32m$var1"
else
echo "\33[1;31m"
fi
var2=`grep "F2DMR" ~/autoarranque.ini`
#=================================================================================

echo "\33[1;33m"

echo -n "\33[1;36m  14)\33[1;33m  Poner ircDDB en el autoarranque       - "
dstar=`grep "D-STAR" ~/autoarranque.ini`
dstar=`expr substr $dstar 8 3`
if [ $dstar = "OFF" ]
then
echo "\33[1;31m$dstar"
else
echo "\33[1;31m"
fi
dstar=`grep "D-STAR" ~/autoarranque.ini`

echo -n "\33[1;36m  15)\33[1;33m  Poner BlueDV en el autoarranque       - "
bluedv=`grep "BlueDV" ~/autoarranque.ini`
bluedv=`expr substr $bluedv 8 3`
if [ $bluedv = "OFF" ]
then
echo "\33[1;31m$bluedv"
else
echo "\33[1;31m"
fi
bluedv=`grep "BlueDV" ~/autoarranque.ini`

echo -n "\33[1;36m  16)\33[1;33m  Poner YSF en el autoarranque          - "
YSF=`grep "YSF" ~/autoarranque.ini`
YSF=`expr substr $YSF 5 3`
if [ $YSF = "OFF" ]
then
echo "\33[1;31m$YSF"
else
echo "\33[1;31m"
fi
bluedv=`grep "YSF" ~/autoarranque.ini`

echo -n "\33[1;36m  17)\33[1;33m  Poner DV4mini en el autoarranque      - "
DV4mini=`grep "DV4mini" ~/autoarranque.ini`
DV4mini=`expr substr $DV4mini 9 3`
if [ $DV4mini = "OFF" ]
then
echo "\33[1;31m$DV4mini"
else
echo "\33[1;31m"
fi
bluedv=`grep "DV4mini" ~/autoarranque.ini`

echo -n "\33[1;36m  18)\33[1;33m  Poner Radio en el autoarranque        - "
MMDVMPLACA=`grep "MMDVMPLACA" ~/autoarranque.ini`
MMDVMPLACA=`expr substr $MMDVMPLACA 12 3`
if [ $MMDVMPLACA = "OFF" ]
then
echo "\33[1;31m$MMDVMPLACA"
else
echo "\33[1;31m"
fi
bluedv=`grep "MMDVMPLACA" ~/autoarranque.ini`

echo -n "\33[1;36m  19)\33[1;33m  Poner DMR+ en autoarranque            - "
MMDVMPLUS=`grep "MMDVMPLUS" ~/autoarranque.ini`
MMDVMPLUS=`expr substr $MMDVMPLUS 11 3`
if [ $MMDVMPLUS = "OFF" ]
then
echo "\33[1;31m$MMDVMPLUS"
else
echo "\33[1;31m"
fi
bluedv=`grep "MMDVMPLUS" ~/autoarranque.ini`





echo -n "\33[1;36m  20)\33[1;33m  Poner LIBRE en autoarranque           - "
MMDVMLIBRE=`grep "MMDVMLIBRE" ~/autoarranque.ini`
MMDVMLIBRE=`expr substr $MMDVMLIBRE 12 3`
if [ $MMDVMLIBRE = "OFF" ]
then
echo "\33[1;31m$MMDVMLIBRE"
else
echo "\33[1;31m"
fi
bluedv=`grep "MMDVMLIBRE" ~/autoarranque.ini`




echo -n "\33[1;36m  21)\33[1;33m  Poner BM en el autoarranque           - "
MMDVMBM=`grep "MMDVMBM" ~/autoarranque.ini`
MMDVMBM=`expr substr $MMDVMBM 9 3`
if [ $MMDVMBM = "OFF" ]
then
echo "\33[1;31m$MMDVMBM"
else
echo "\33[1;31m"
fi
bluedv=`grep "MMDVMBM" ~/autoarranque.ini`

echo -n "\33[1;36m  22)\33[1;33m  Poner SVXLINK en el autoarranque      - "
SVXLINK=`grep "SVXLINK" ~/autoarranque.ini`
SVXLINK=`expr substr $SVXLINK 9 3`
if [ $SVXLINK = "OFF" ]
then
echo "\33[1;31m$SVXLINK"
else
echo "\33[1;31m"
fi
bluedv=`grep "SVXLINK" ~/autoarranque.ini`



#==================================================================================
echo -n "\33[1;36m  23)\33[1;33m  Poner SOLO_DSTAR en el autoarranque   - "
solod=`grep "SOLO_DSTAR" ~/autoarranque.ini`
solod=`expr substr $solod 12 3`
if [ $solod = "OFF" ]
then
echo "\33[1;31m$solod"
else
echo "\33[1;31m"
fi
solod=`grep "SOLO_DSTAR" ~/autoarranque.ini`
#==================================================================================



#==================================================================================
echo -n "\33[1;36m  24)\33[1;33m  Poner SOLO_FUSION en el autoarranque  - "
solof=`grep "SOLO_FUSION" ~/autoarranque.ini`
solof=`expr substr $solof 13 3`
if [ $solof = "OFF" ]
then
echo "\33[1;31m$solof"
else
echo "\33[1;31m"
fi
solof=`grep "SOLO_FUSION" ~/autoarranque.ini`
#==================================================================================

#==================================================================================
echo -n "\33[1;36m  25)\33[1;33m  Poner DVRPTR en el autoarranque       - "
dvrptr=`grep "DVRPTR" ~/autoarranque.ini`
dvrptr=`expr substr $dvrptr 8 3`
if [ $dvrptr = "OFF" ]
then
echo "\33[1;31m$dvrptr"
else
echo "\33[1;31m"
fi
solof=`grep "DVRPTR" ~/autoarranque.ini`
#==================================================================================

#==================================================================================
echo -n "\33[1;36m  26)\33[1;33m  Poner YSF2DMR en el autoarranque      - "
ysf_dmr=`grep "F2DMR" ~/autoarranque.ini`
ysf_dmr=`expr substr $ysf_dmr 7 3`
if [ $ysf_dmr = "OFF" ]
then
echo "\33[1;31m$ysf_dmr"
else
echo "\33[1;31m"
fi
trans=`grep "F2DMR" ~/autoarranque.ini`
#==================================================================================


echo "\33[0m "
echo "\33[1;36m  27)\33[1;32m ***  REESTABLECER AUTOARRANQUES  ***"
echo ""

echo "\33[1;36m  28)\33[1;31m *** REINICIAR LA ORANGE PI ***"
echo ""
echo "\33[1;36m   0)\33[1;34m Salir del script \33[1;31m OJO!! no salir con ctrl+c ni con la x"
echo ""
echo "\33[1;36m   Por favor, elige una opción del 0 al 27" 
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
			                 sleep 2
			                 cd ~/.config/autostart
                       mv ircDDB.desktop ~/AUTOSTART
			                 sed -i "1c D-STAR=OFF" ~/autoarranque.ini
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
                       sleep 2
                       cd ~/.config/autostart
                       mv BLUEDV.desktop ~/AUTOSTART
			                 sed -i "2c BlueDV=OFF" ~/autoarranque.ini
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
                       sleep 2
                       cd ~/.config/autostart
                       mv YSF.desktop ~/AUTOSTART
                       sed -i "3c YSF=OFF" ~/autoarranque.ini
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
                        sleep 2
                        cd ~/.config/autostart
                        mv DV4mini.desktop ~/AUTOSTART
                        sed -i "4c DV4mini=OFF" ~/autoarranque.ini
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
                        sleep 2
                        cd ~/.config/autostart
                        mv RADIO.desktop ~/AUTOSTART
                        sed -i "5c MMDVMPLACA=OFF" ~/autoarranque.ini
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
                        sleep 2
                        cd ~/.config/autostart
                        mv DMRPLUS.desktop ~/AUTOSTART
                        sed -i "6c MMDVMPLUS=OFF" ~/autoarranque.ini
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
                        echo "Quitando LIBRE del autoarranque >>>>>"
                        sleep 2
                        cd ~/.config/autostart
                        mv LIBRE.desktop ~/AUTOSTART
                        sed -i "10c MMDVMLIBRE=OFF" ~/autoarranque.ini
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
                        echo "Quitando BM del autoarranque >>>>>"
                        sleep 2
                        cd ~/.config/autostart
                        mv BM.desktop ~/AUTOSTART
                        sed -i "7c MMDVMBM=OFF" ~/autoarranque.ini
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
			echo "Quitando SVXLINK del autoarranque >>>>>"
      sleep 2
      cd ~/.config/autostart
      mv SVXLINK.desktop ~/AUTOSTART
			sed -i "8c SVXLINK=OFF" ~/autoarranque.ini
			break;;
			[nN]* ) echo ""
			break;;
esac
done;;
10) echo ""
while true
do
clear
            actualizar=S
            case $actualizar in
            [sS]* ) echo ""
            echo "Quitando SOLO_D-STAR del autoarranque >>>>>"
            sleep 2
            cd ~/.config/autostart
            mv DSTARSOLO.desktop ~/AUTOSTART
            sed -i "11c SOLO_DSTAR=OFF" ~/autoarranque.ini
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
            echo "Quitando SOLO_FUSION del autoarranque >>>>>"
            sleep 2
            cd ~/.config/autostart
            mv FUSIONSOLO.desktop ~/AUTOSTART
            sed -i "12c SOLO_FUSION=OFF" ~/autoarranque.ini
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
                                            echo "Quitando DVRPTR en el autoarranque >>>>>"
                                            sleep 2
                                            cd ~/.config/autostart
                                            mv DVRPTR.desktop ~/AUTOSTART
                                            sed -i "13c DVRPTR=OFF" ~/autoarranque.ini
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
                                            echo "Quitando YSF2DMR en el autoarranque >>>>>"
                                            sleep 2
                                            cd ~/.config/autostart
                                            mv YSF2DMR.desktop ~/AUTOSTART
                                            sed -i "15c F2DMR=OFF" ~/autoarranque.ini
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
			            echo "Poniendo DSTAR en el autoarranque >>>>>"
                  sleep 2
                  cd ~/AUTOSTART
                  mv ircDDB.desktop ~/.config/autostart/
			            sed -i "1c D-STAR=ON" ~/autoarranque.ini
                  clear
                  echo "\33[1;32m**********************************************************"
                  echo "*                                                        *"
                  echo "*  \33[1;31mDebes de tener BM ó DMR+ en el autoarranque \33[1;32m*"
                  echo "*               \33[1;31m para que funcione D-STAR                \33[1;32m*"
                  echo "*                                                        *"
                  echo "**********************************************************"
                  echo ""
                  echo ""
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
                                            echo "Poniendo BlueDV en el autoarranque >>>>>"
                                            sleep 2
                                            cd ~/AUTOSTART
                                            mv BLUEDV.desktop ~/.config/autostart/
                                            sed -i "2c BlueDV=ON" ~/autoarranque.ini
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
			                  echo "Poniendo YSF en el autoarranque >>>>>"
                        sleep 2
                        cd ~/AUTOSTART
                        mv YSF.desktop ~/.config/autostart/
                        sed -i "3c YSF=ON" ~/autoarranque.ini
                        clear
                        echo "\33[1;32m**********************************************************"
                        echo "*                                                        *"
                        echo "*  \33[1;31mDebes de tener BM ó DMR+ en el autoarranque \33[1;32m*"
                        echo "*               \33[1;31m para que funcione YSF                   \33[1;32m*"
                        echo "*                                                        *"
                        echo "**********************************************************"
                        echo ""
                        echo ""                            
                        break;;
                        [nN]* ) echo ""
                        break;;
esac
done;;
17) echo ""
while true
do
clear               
                        actualizar=S
		                    case $actualizar in
			                  [sS]* ) echo ""
			                  echo "Poniendo DV4mini en el autoarranque >>>>>"
                        sleep 2
                        cd ~/AUTOSTART
                        mv DV4mini.desktop ~/.config/autostart/
                        sed -i "4c DV4mini=ON" ~/autoarranque.ini
                        break;;
                        [nN]* ) echo ""
                        break;;
esac
done;;
18) echo ""
while true
do
clear           
                        actualizar=S
		                    case $actualizar in
			                  [sS]* ) echo ""
			                  echo "Poniendo Radio en el autoarranque >>>>>"
                        sleep 2
                        cd ~/AUTOSTART
                        mv RADIO.desktop ~/.config/autostart/
                        sed -i "5c MMDVMPLACA=ON" ~/autoarranque.ini		            			            
                        sleep 5                
                        break;;
                        [nN]* ) echo ""
                        break;;
esac
done;;
19) echo ""
while true
do
clear              
                        actualizar=S
	                      case $actualizar in
	                      [sS]* ) echo ""
                        echo "Poniendo DMR+ en el autoarranque >>>>>"
                        sleep 2
                        cd ~/AUTOSTART
                        mv DMRPLUS.desktop ~/.config/autostart/
                        sed -i "6c MMDVMPLUS=ON" ~/autoarranque.ini
                        break;;
                        [nN]* ) echo ""
                        break;;
esac
done;;
20) echo ""
while true
do
clear              
                        actualizar=S
                        case $actualizar in
                        [sS]* ) echo ""
                        echo "Poniendo LIBRE en el autoarranque >>>>>"
                        sleep 2
                        cd ~/AUTOSTART
                        mv LIBRE.desktop ~/.config/autostart/
                        sed -i "10c MMDVMLIBRE=ON" ~/autoarranque.ini
                        break;;
                        [nN]* ) echo ""
                        break;;
esac
done;;
21) echo ""
while true
do
clear
                        actualizar=S
                        case $actualizar in
                        [sS]* ) echo ""
                        echo "Poniendo BM en el autoarranque >>>>>"
                        sleep 2
                        cd ~/AUTOSTART
                        mv BM.desktop ~/.config/autostart/
                        sed -i "7c MMDVMBM=ON" ~/autoarranque.ini
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
			            echo "Poniendo SVXLINK en el autoarranque >>>>>"
                  sleep 2
                  cd ~/AUTOSTART
                  mv SVXLINK.desktop ~/.config/autostart/
			            sed -i "8c SVXLINK=ON" ~/autoarranque.ini
			            break;;
			            [nN]* ) echo ""
			            break;;
esac
done;;
23) echo ""
while true
do
clear
            actualizar=S
            case $actualizar in
            [sS]* ) echo ""
            echo "Poniendo SOLO_D-STAR en el autoarranque >>>>>"
            sleep 2
            cd ~/AUTOSTART
            mv DSTARSOLO.desktop ~/.config/autostart/
            sed -i "11c SOLO_DSTAR=ON" ~/autoarranque.ini
            break;;
            [nN]* ) echo ""
            break;;
esac
done;;
24) echo ""
while true
do
clear
            actualizar=S
            case $actualizar in
            [sS]* ) echo ""
            echo "Poniendo solo FUSION en el autoarranque >>>>>"
            sleep 2
            cd ~/AUTOSTART
            mv FUSIONSOLO.desktop ~/.config/autostart/
            sed -i "12c SOLO_FUSION=ON" ~/autoarranque.ini
            break;;
            [nN]* ) echo ""
            break;;
esac
done;;
25) echo ""
while true
do
clear
                                            actualizar=S
                                            case $actualizar in
                                            [sS]* ) echo ""
                                            echo "Poniendo DVRPTR en el autoarranque >>>>>"
                                            sleep 2
                                            cd ~/AUTOSTART
                                            mv DVRPTR.desktop ~/.config/autostart/
                                            sed -i "13c DVRPTR=ON" ~/autoarranque.ini
                                            break;;
                                            [nN]* ) echo ""
                                            break;;
esac
done;;

26) echo ""
while true
do
clear
                                            actualizar=S
                                            case $actualizar in
                                            [sS]* ) echo ""
                                            echo "Poniendo YSF2DMR en el autoarranque >>>>>"
                                            sleep 2
                                            cd ~/AUTOSTART
                                            mv YSF2DMR.desktop ~/.config/autostart/
                                            sed -i "15c F2DMR=ON" ~/autoarranque.ini
                                            break;;
                                            [nN]* ) echo ""
                                            break;;
esac
done;;
27) echo ""
while true
do
clear
                        echo "\33[1;31m" #color rojo
                        echo " *****************************************************"
                        echo " ** OJO!! ESTO PONDRÁ TODOS LOS AUTOARRANQUES EN OFF *"
                        echo " *****************************************************"
                        echo "\33[1;37m" #color
                        read -p 'Quieres Actualizar? Si/No: ' ejecutar1
                        case $ejecutar1 in
                        [sS]* ) echo ""
                        echo ">>>>>>>>> RESTABLECIENDO EL AUTOARRANQUE POR DEFECTO~/   >>>>>"
                        cd ~/SCRIPTS_ORANGE
                        git pull
                        cp -f ~/SCRIPTS_ORANGE/autoarranque.ini ~/
                        exit;
                        break;;
                        [nN]* ) echo ""
clear
exit;
break;;
esac
done;;
28) echo ""
while true
do
clear
echo " \33[1;31m  ************************************************************"
echo "   *                                                          *"
echo "   *     OJO!!   SE VA A REINICIAR LA ORANGE PI               *"
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
sleep 2
clear
exit;;	
esac
done

