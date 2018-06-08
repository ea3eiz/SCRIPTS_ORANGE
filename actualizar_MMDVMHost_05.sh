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
echo  "\33[1;36m   3)\33[1;33m Instalación limpia de MMDVMHost\33[1;33m"
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
            echo "\33[1;33m"
            read -p '  Quieres actualizar MMDVMHost ? Si/No: ' ejecutar1
            case $ejecutar1 in
            [sS]* ) echo ""
            echo "ok >>>>>"

#comprueba si el ficgero existe
 if [ -d ~/MMDVMHost_anterior ];
then
echo ""
else
mkdir MMDVMHost_anterior
fi 
#===============================

            sudo chmod 777 -R ~/Downloads

            #copia todos los inis en Dowloads antes de actualizar
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

            cd  ~/YSF2DMR
            cp -f YSF2DMR.ini ~/Downloads
            cp -f YSF2DMR.ini_copia_01 ~/Downloads
            cp -f YSF2DMR.ini_copia_02 ~/Downloads

            cd  ~/YSFClients/YSFGateway/
            sudo cp -f YSFGateway.ini ~/Downloads
            
            cd ~/bluedv/
            sudo cp -f BlueDVconfig.ini ~/Downloads

            cd /usr/local/etc/svxlink/
            sudo cp -f svxlink.conf ~/Downloads

            cd /usr/local/etc/svxlink/svxlink.d/
            sudo cp -f ModuleEchoLink.conf ~/Downloads

                    cd ~/
                    cp MMDVMHost/*.* MMDVMHost_anterior/
                    sudo rm -r MMDVMHost
                    git clone https://github.com/g4klx/MMDVMHost
                    cd ~/MMDVMHost

                    HOY=$(date +%Y%m%d)
                    FIJA="const char* VERSION = "\"
                    PI=":REM-V.02.07.04"\"
                    HOY1=$HOY$PI
                    PUNTO=";"


                    #HOY=$(date +%Y%m%d)
                    #FIJA="const char* VERSION = "\"
                    #PI=":Opi"\"
                    #HOY1=$HOY$PI
                    #PUNTO=";"
                    
                    sed -i "22c $FIJA$HOY1$PUNTO" ~/MMDVMHost/Version.h
                  
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

                    sudo chmod 777 -R ~/MMDVMHost
                    sudo chmod 777 -R ~/Downloads
 clear                   
echo "***************************************************"
echo "* RESTAURANDO LOS DATOS DE LA COPIA DE SEGURIDAD  *"
echo "***************************************************"
                    # Crea los ejecutables para estas 4 aplicaciones  
                    cp MMDVMHost MMDVMBM
                    cp MMDVMHost MMDVMPLUS
                    cp MMDVMHost MMDVMDSTAR
                    cp MMDVMHost MMDVMFUSION
                    #=================================================
                    # Rutina solo para el LIBRE ======================
                    cd ~/SCRIPTS_ORANGE
                    cp MMDVMHostLIBRE ~/MMDVMHost
                    cp MMDVMLIBRE.ini ~/MMDVMHost
                    cd ~/MMDVMHost
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

                     sudo chmod 777 -R ~/MMDVMHost

#*** restaura solo los datos de las copias en Downloads************

#======================= MMDVM.ini   ============================

# Callsign 
var=`grep -n -m 1 '\<Callsign\>' ~/Downloads/MMDVM.ini` # 2:Callsign=EA3EIZ
var1=`grep -m 1 '\<Callsign\>' ~/Downloads/MMDVM.ini` # Callsign=EA3EIZ
buscar=":"
largo_linea=`expr index $var $buscar` #comprueba el largo incluyendo los dos puntos (:)
largo_linea=`expr $largo_linea - 1` #comprueba el largo quitando los dos puntos (:)
numero_linea=`expr substr $var 1 $largo_linea` # recoge numero linea Downloads
Hvar=`grep -n -m 1 '\<Callsign\>' ~/MMDVMHost/MMDVM.ini` # 2:Callsign=EA3EIZ
buscar=":"
Hlargo_linea=`expr index $Hvar $buscar` 
Hlargo_linea=`expr $Hlargo_linea - 1` 
Hnumero_linea=`expr substr $Hvar 1 $Hlargo_linea` # recoge numero linea MMDXVMHost
Hletra=c
Hlinea_sed=$Hnumero_linea$Hletra
sed -i "$Hlinea_sed $var1" ~/MMDVMHost/MMDVM.ini

#Id capturado de la linea 3
Id=$(awk "NR==3" ~/Downloads/MMDVM.ini)
sed -i "3c $Id" ~/MMDVMHost/MMDVM.ini

#Timeout capturado de la linea 4
timeou=$(awk "NR==4" ~/Downloads/MMDVM.ini)
sed -i "4c $timeou" ~/MMDVMHost/MMDVM.ini

#Duplex
var=`grep -n -m 1 '\<Duplex\>' ~/Downloads/MMDVM.ini`
var1=`grep -m 1 '\<Duplex\>' ~/Downloads/MMDVM.ini`
buscar=":"
largo_linea=`expr index $var $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea=`expr substr $var 1 $largo_linea`
Dvar=`grep -n -m 1 '\<Duplex\>' ~/MMDVMHost/MMDVM.ini`
buscar=":"
Dlargo_linea=`expr index $Dvar $buscar`
Dlargo_linea=`expr $Dlargo_linea - 1`
Dnumero_linea=`expr substr $Dvar 1 $Dlargo_linea`
Dletra=c
Dlinea_sed=$Dnumero_linea$Dletra
sed -i "$Dlinea_sed $var1" ~/MMDVMHost/MMDVM.ini

#RFModeHang
var=`grep -n -m 1 '\<RFModeHang\>' ~/Downloads/MMDVM.ini`
var1=`grep -m 1 '\<RFModeHang\>' ~/Downloads/MMDVM.ini`
buscar=":"
largo_linea=`expr index $var $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea=`expr substr $var 1 $largo_linea`
Rvar=`grep -n -m 1 '\<RFModeHang\>' ~/MMDVMHost/MMDVM.ini`
buscar=":"
Rlargo_linea=`expr index $Rvar $buscar`
Rlargo_linea=`expr $Rlargo_linea - 1`
Rnumero_linea=`expr substr $Rvar 1 $Rlargo_linea`
Rletra=c
Rlinea_sed=$Rnumero_linea$Rletra
sed -i "$Rlinea_sed $var1" ~/MMDVMHost/MMDVM.ini

#Display
var=`grep -n -m 1 '\<Display\>' ~/Downloads/MMDVM.ini`
var1=`grep -m 1 '\<Display\>' ~/Downloads/MMDVM.ini`
buscar=":"
largo_linea=`expr index $var $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea=`expr substr $var 1 $largo_linea`
Dvar=`grep -n -m 1 '\<Display\>' ~/MMDVMHost/MMDVM.ini`
buscar=":"
Dlargo_linea=`expr index $Dvar $buscar`
Dlargo_linea=`expr $Dlargo_linea - 1`
Dnumero_linea=`expr substr $Dvar 1 $Dlargo_linea`
Dletra=c
Dlinea_sed=$Dnumero_linea$Dletra
sed -i "$Dlinea_sed $var1" ~/MMDVMHost/MMDVM.ini

#RXFrequency
var=`grep -n -m 1 '\<RXFrequency\>' ~/Downloads/MMDVM.ini`
var1=`grep -m 1 '\<RXFrequency\>' ~/Downloads/MMDVM.ini`
buscar=":"
largo_linea=`expr index $var $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea=`expr substr $var 1 $largo_linea`
Xvar=`grep -n -m 1 '\<RXFrequency\>' ~/MMDVMHost/MMDVM.ini`
buscar=":"
Xlargo_linea=`expr index $Xvar $buscar`
Xlargo_linea=`expr $Xlargo_linea - 1`
Xnumero_linea=`expr substr $Xvar 1 $Xlargo_linea`
Xletra=c
Xlinea_sed=$Xnumero_linea$Xletra
sed -i "$Xlinea_sed $var1" ~/MMDVMHost/MMDVM.ini

#TXFrequency
var=`grep -n -m 1 '\<TXFrequency\>' ~/Downloads/MMDVM.ini`
var1=`grep -m 1 '\<TXFrequency\>' ~/Downloads/MMDVM.ini`
buscar=":"
largo_linea=`expr index $var $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea=`expr substr $var 1 $largo_linea`
Tvar=`grep -n -m 1 '\<TXFrequency\>' ~/MMDVMHost/MMDVM.ini`
buscar=":"
Tlargo_linea=`expr index $Tvar $buscar`
Tlargo_linea=`expr $Tlargo_linea - 1`
Tnumero_linea=`expr substr $Tvar 1 $Tlargo_linea`
Tletra=c
Tlinea_sed=$Tnumero_linea$Tletra
sed -i "$Tlinea_sed $var1" ~/MMDVMHost/MMDVM.ini

#Latitude
var=`grep -n -m 1 '\<Latitude\>' ~/Downloads/MMDVM.ini`
var1=`grep -m 1 '\<Latitude\>' ~/Downloads/MMDVM.ini`
buscar=":"
largo_linea=`expr index $var $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea=`expr substr $var 1 $largo_linea`
Lvar=`grep -n -m 1 '\<Latitude\>' ~/MMDVMHost/MMDVM.ini`
buscar=":"
Llargo_linea=`expr index $Lvar $buscar`
Llargo_linea=`expr $Llargo_linea - 1`
Lnumero_linea=`expr substr $Lvar 1 $Llargo_linea`
Lletra=c
Llinea_sed=$Lnumero_linea$Lletra
sed -i "$Llinea_sed $var1" ~/MMDVMHost/MMDVM.ini

#Longitude
var=`grep -n -m 1 '\<Longitude\>' ~/Downloads/MMDVM.ini`
var1=`grep -m 1 '\<Longitude\>' ~/Downloads/MMDVM.ini`
buscar=":"
largo_linea=`expr index $var $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea=`expr substr $var 1 $largo_linea`
LGvar=`grep -n -m 1 '\<Longitude\>' ~/MMDVMHost/MMDVM.ini`
buscar=":"
LGlargo_linea=`expr index $LGvar $buscar`
LGlargo_linea=`expr $LGlargo_linea - 1`
LGnumero_linea=`expr substr $LGvar 1 $LGlargo_linea`
LGletra=c
LGlinea_sed=$LGnumero_linea$LGletra
sed -i "$LGlinea_sed $var1" ~/MMDVMHost/MMDVM.ini

#Location
var=`grep -n -m 1 '\<Location\>' ~/Downloads/MMDVM.ini`
var1=`grep -m 1 '\<Location\>' ~/Downloads/MMDVM.ini`
buscar=":"
largo_linea=`expr index $var $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea=`expr substr $var 1 $largo_linea`
LOvar=`grep -n -m 1 '\<Location\>' ~/MMDVMHost/MMDVM.ini`
buscar=":"
LOlargo_linea=`expr index $LOvar $buscar`
LOlargo_linea=`expr $LOlargo_linea - 1`
LOnumero_linea=`expr substr $LOvar 1 $LOlargo_linea`
LOletra=c
LOlinea_sed=$LOnumero_linea$LOletra
sed -i "$LOlinea_sed $var1" ~/MMDVMHost/MMDVM.ini

#URL
var=`grep -n -m 1 '\<URL\>' ~/Downloads/MMDVM.ini`
var1=`grep -m 1 '\<URL\>' ~/Downloads/MMDVM.ini`
buscar=":"
largo_linea=`expr index $var $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea_url=`expr substr $var 1 $largo_linea`
Uvar=`grep -n -m 1 '\<URL\>' ~/MMDVMHost/MMDVM.ini`
Ubuscar=":"
Ulargo_linea=`expr index $Uvar $buscar`
Ulargo_linea=`expr $Ulargo_linea - 1`
Unumero_linea_url=`expr substr $Uvar 1 $largo_linea`
Uletra=c
Ulinea_sed=$Unumero_linea_url$Uletra
sed -i "$Ulinea_sed $var1" ~/MMDVMHost/MMDVM.ini

#Baliza 
var1=`grep -n -m 1 "\[CW Id\]" ~/Downloads/MMDVM.ini`
var2=`echo "$var1" | tr -d '[[:space:]]'`
buscar=":"
largo_linea=`expr index $var2 $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea=`expr substr $var2 1 $largo_linea`
numero_linea=`expr $numero_linea + 1`
CWvar1=`grep -n -m 1 "\[CW Id\]" ~/MMDVMHost/MMDVM.ini`
CWvar2=`echo "$CWvar1" | tr -d '[[:space:]]'`
buscar=":"
CWlargo_linea=`expr index $CWvar2 $buscar`
CWlargo_linea=`expr $CWlargo_linea - 1`
CWnumero_linea=`expr substr $CWvar2 1 $CWlargo_linea`
CWnumero_linea=`expr $CWnumero_linea + 1`
CWCW=$(awk "NR==$CWnumero_linea" ~/Downloads/MMDVM.ini)
CWletra=c
CWlinea_sed=$CWnumero_linea$CWletra
sed -i "$CWlinea_sed $CWCW" ~/MMDVMHost/MMDVM.ini

#RXLevel
var=`grep -n -m 1 '\<RXLevel\>' ~/Downloads/MMDVM.ini`
var1=`grep -m 1 '\<RXLevel\>' ~/Downloads/MMDVM.ini`
buscar=":"
largo_linea=`expr index $var $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea=`expr substr $var 1 $largo_linea`
RLvar=`grep -n -m 1 '\<RXLevel\>' ~/MMDVMHost/MMDVM.ini`
buscar=":"
RLlargo_linea=`expr index $RLvar $buscar`
RLlargo_linea=`expr $RLlargo_linea - 1`
RLnumero_linea=`expr substr $RLvar 1 $RLlargo_linea`
RLletra=c
RLlinea_sed=$RLnumero_linea$RLletra
sed -i "$RLlinea_sed $var1" ~/MMDVMHost/MMDVM.ini

#TXLevel
var=`grep -n -m 1 '\<TXLevel\>' ~/Downloads/MMDVM.ini`
var1=`grep -m 1 '\<TXLevel\>' ~/Downloads/MMDVM.ini`
buscar=":"
largo_linea=`expr index $var $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea=`expr substr $var 1 $largo_linea`
TLvar=`grep -n -m 1 '\<TXLevel\>' ~/MMDVMHost/MMDVM.ini`
buscar=":"
TLlargo_linea=`expr index $TLvar $buscar`
TLlargo_linea=`expr $TLlargo_linea - 1`
TLnumero_linea=`expr substr $TLvar 1 $TLlargo_linea`
TLletra=c
TLlinea_sed=$TLnumero_linea$TLletra
sed -i "$TLlinea_sed $var1" ~/MMDVMHost/MMDVM.ini

#Module
var=`grep -n -m 1 '\<Module\>' ~/Downloads/MMDVM.ini`
var1=`grep -m 1 '\<Module\>' ~/Downloads/MMDVM.ini`
buscar=":"
largo_linea=`expr index $var $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea=`expr substr $var 1 $largo_linea`
MOvar=`grep -n -m 1 '\<Module\>' ~/MMDVMHost/MMDVM.ini`
buscar=":"
MOlargo_linea=`expr index $MOvar $buscar`
MOlargo_linea=`expr $MOlargo_linea - 1`
MOnumero_linea=`expr substr $MOvar 1 $MOlargo_linea`
MOletra=c
MOlinea_sed=$MOnumero_linea$MOletra
sed -i "$MOlinea_sed $var1" ~/MMDVMHost/MMDVM.ini

#Txinvert
var=`grep -n -m 1 '\<TXInvert\>' ~/Downloads/MMDVM.ini`
var1=`grep -m 1 '\<TXInvert\>' ~/Downloads/MMDVM.ini`
buscar=":"
largo_linea=`expr index $var $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea=`expr substr $var 1 $largo_linea`
TIvar=`grep -n -m 1 '\<TXInvert\>' ~/MMDVMHost/MMDVM.ini`
buscar=":"
TIlargo_linea=`expr index $TIvar $buscar`
TIlargo_linea=`expr $TIlargo_linea - 1`
TInumero_linea=`expr substr $TIvar 1 $TIlargo_linea`
TIletra=c
TIlinea_sed=$TInumero_linea$TIletra
sed -i "$TIlinea_sed $var1" ~/MMDVMHost/MMDVM.ini

#Modem capturado de la linea txinvert -1
numero_linea_MODEM=`expr $numero_linea - 1` # Downloads
MOnumero_linea_MODEM=`expr $TInumero_linea - 1` # MMDVMHost
modem=$(awk "NR==$numero_linea_MODEM" ~/Downloads/MMDVM.ini)
TIletra=c
TIlinea_sed=$MOnumero_linea_MODEM$TIletra
sed -i "$TIlinea_sed $modem" ~/MMDVMHost/MMDVM.ini

#Address
var=`grep -n -m 1 '\<Address\>' ~/Downloads/MMDVM.ini`
var1=`grep -m 1 '\<Address\>' ~/Downloads/MMDVM.ini`
buscar=":"
largo_linea=`expr index $var $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea_Address=`expr substr $var 1 $largo_linea`
ADvar=`grep -n -m 1 '\<Address\>' ~/MMDVMHost/MMDVM.ini`
buscar=":"
ADlargo_linea=`expr index $ADvar $buscar`
ADlargo_linea=`expr $ADlargo_linea - 1`
ADnumero_linea_Address=`expr substr $ADvar 1 $ADlargo_linea`
ADletra=c
ADlinea_sed=$ADnumero_linea_Address$ADletra
sed -i "$ADlinea_sed $var1" ~/MMDVMHost/MMDVM.ini

#Port captura de la linea Address +1
numero_linea_Address=`expr $numero_linea_Address + 1` # Downloads
ADnumero_linea_Address=`expr $ADnumero_linea_Address + 1` # MMDVMHost
port=$(awk "NR==$numero_linea_Address" ~/Downloads/MMDVM.ini)
ADletra=c
ADlinea_sed=$ADnumero_linea_Address$ADletra
sed -i "$ADlinea_sed $port" ~/MMDVMHost/MMDVM.ini

#Password
var=`grep -n -m 1 '\<Password\>' ~/Downloads/MMDVM.ini`
var1=`grep -m 1 '\<Password\>' ~/Downloads/MMDVM.ini`
buscar=":"
largo_linea=`expr index $var $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea_password=`expr substr $var 1 $largo_linea`
PWvar=`grep -n -m 1 '\<Password\>' ~/MMDVMHost/MMDVM.ini`
buscar=":"
PWlargo_linea=`expr index $PWvar $buscar`
PWlargo_linea=`expr $PWlargo_linea - 1`
PWnumero_linea_password=`expr substr $PWvar 1 $PWlargo_linea`
PWletra=c
PWlinea_sed=$PWnumero_linea_password$PWletra
sed -i "$PWlinea_sed $var1" ~/MMDVMHost/MMDVM.ini

#Options linea password  +1
numero_linea_password=`expr $numero_linea_password + 1` # Downloads
PWnumero_linea_password=`expr $PWnumero_linea_password + 1` # MMDVMHost
option=$(awk "NR==$numero_linea_password" ~/Downloads/MMDVM.ini)
PWletra=c
PWlinea_sed=$PWnumero_linea_password$PWletra
sed -i "$PWlinea_sed $option" ~/MMDVMHost/MMDVM.ini

#ScreenLayout
var=`grep -n -m 1 '\<ScreenLayout\>' ~/Downloads/MMDVM.ini`
var1=`grep -m 1 '\<ScreenLayout\>' ~/Downloads/MMDVM.ini`
buscar=":"
largo_linea=`expr index $var $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea=`expr substr $var 1 $largo_linea`
SCvar=`grep -n -m 1 '\<ScreenLayout\>' ~/MMDVMHost/MMDVM.ini`
buscar=":"
SClargo_linea=`expr index $SCvar $buscar`
SClargo_linea=`expr $SClargo_linea - 1`
SCnumero_linea=`expr substr $SCvar 1 $SClargo_linea`
SCletra=c
SClinea_sed=$SCnumero_linea$SCletra
sed -i "$SClinea_sed $var1" ~/MMDVMHost/MMDVM.ini

#Brightness
var=`grep -n -m 1 '\<Brightness\>' ~/Downloads/MMDVM.ini`
var1=`grep -m 1 '\<Brightness\>' ~/Downloads/MMDVM.ini`
buscar=":"
largo_linea=`expr index $var $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea=`expr substr $var 1 $largo_linea`
BRvar=`grep -n -m 1 '\<Brightness\>' ~/MMDVMHost/MMDVM.ini`
buscar=":"
BRlargo_linea=`expr index $BRvar $buscar`
BRlargo_linea=`expr $BRlargo_linea - 1`
BRnumero_linea=`expr substr $BRvar 1 $BRlargo_linea`
BRletra=c
BRlinea_sed=$BRnumero_linea$BRletra
sed -i "$BRlinea_sed $var1" ~/MMDVMHost/MMDVM.ini

#Slot1
var=`grep -n -m 1 '\<Slot1\>' ~/Downloads/MMDVM.ini`
var1=`grep -m 1 '\<Slot1\>' ~/Downloads/MMDVM.ini`
buscar=":"
largo_linea=`expr index $var $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea=`expr substr $var 1 $largo_linea`
SLvar=`grep -n -m 1 '\<Slot1\>' ~/MMDVMHost/MMDVM.ini`
buscar=":"
SLlargo_linea=`expr index $SLvar $buscar`
SLlargo_linea=`expr $SLlargo_linea - 1`
SLnumero_linea=`expr substr $SLvar 1 $SLlargo_linea`
SLletra=c
SLlinea_sed=$SLnumero_linea$SLletra
sed -i "$SLlinea_sed $var1" ~/MMDVMHost/MMDVM.ini

#DisplayLevel
var=`grep -n -m 1 '\<DisplayLevel\>' ~/Downloads/MMDVM.ini`
var1=`grep -m 1 '\<DisplayLevel\>' ~/Downloads/MMDVM.ini`
buscar=":"
largo_linea=`expr index $var $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea=`expr substr $var 1 $largo_linea`
DIvar=`grep -n -m 1 '\<DisplayLevel\>' ~/MMDVMHost/MMDVM.ini`
buscar=":"
DIlargo_linea=`expr index $DIvar $buscar`
DIlargo_linea=`expr $DIlargo_linea - 1`
DInumero_linea=`expr substr $DIvar 1 $DIlargo_linea`
DIletra=c
DIlinea_sed=$DInumero_linea$DIletra
sed -i "$DIlinea_sed $var1" ~/MMDVMHost/MMDVM.ini

#TXHang
var=`grep -n -m 1 '\<TXHang\>' ~/Downloads/MMDVM.ini`
var1=`grep -m 1 '\<TXHang\>' ~/Downloads/MMDVM.ini`
buscar=":"
largo_linea=`expr index $var $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea=`expr substr $var 1 $largo_linea`
THvar=`grep -n -m 1 '\<TXHang\>' ~/MMDVMHost/MMDVM.ini`
buscar=":"
THlargo_linea=`expr index $THvar $buscar`
THlargo_linea=`expr $THlargo_linea - 1`
THnumero_linea=`expr substr $THvar 1 $THlargo_linea`
THletra=c
THlinea_sed=$THnumero_linea$THletra
sed -i "$THlinea_sed $var1" ~/MMDVMHost/MMDVM.ini

#D-Star
var=`grep -n -m 1 "\[D-Star\]" ~/Downloads/MMDVM.ini` 
var1=`grep -m 1 "\[D-Star\]" ~/Downloads/MMDVM.ini`
buscar=":"
largo_linea=`expr index $var $buscar` 
largo_linea=`expr $largo_linea - 1` 
numero_linea=`expr substr $var 1 $largo_linea` 
numero_linea_dstar=`expr $numero_linea + 1` 
DSvar=`grep -n -m 1 "\[D-Star\]" ~/MMDVMHost/MMDVM.ini` 
DSvar1=`grep -m 1 "\[D-Star\]" ~/MMDVMHost/MMDVM.ini`
buscar=":"
DSlargo_linea=`expr index $DSvar $buscar` 
DSlargo_linea=`expr $DSlargo_linea - 1` 
DSnumero_linea=`expr substr $DSvar 1 $DSlargo_linea` 
DSnumero_linea_dstar=`expr $DSnumero_linea + 1`
DSDS=$(awk "NR==$numero_linea_dstar" ~/Downloads/MMDVM.ini) 
DSletrac=c
DSlinea_sed=$DSnumero_linea_dstar$DSletrac
sed -i "$DSlinea_sed $DSDS" ~/MMDVMHost/MMDVM.ini

#DMR
var=`grep -n -m 1 "\[DMR\]" ~/Downloads/MMDVM.ini` 
var1=`grep -m 1 "\[DMR\]" ~/Downloads/MMDVM.ini`
buscar=":"
largo_linea=`expr index $var $buscar` 
largo_linea=`expr $largo_linea - 1` 
numero_linea=`expr substr $var 1 $largo_linea` 
numero_linea_dmr=`expr $numero_linea + 1` 
DMvar=`grep -n "\[DMR\]" ~/MMDVMHost/MMDVM.ini` 
DMvar1=`grep -n -m 1 "\[DMR\]" ~/MMDVMHost/MMDVM.ini`
buscar=":"
DMlargo_linea=`expr index $DMvar $buscar` 
DMlargo_linea=`expr $DMlargo_linea - 1` 
DMnumero_linea=`expr substr $DMvar 1 $DMlargo_linea` 
DMnumero_linea_dmr=`expr $DMnumero_linea + 1` 
DMDM=$(awk "NR==$numero_linea_dmr" ~/Downloads/MMDVM.ini)
DMletrac=c
DMlinea_sed=$DMnumero_linea_dmr$DMletrac 
sed -i "$DMlinea_sed $DMDM" ~/MMDVMHost/MMDVM.ini

#P25
var=`grep -n -m 1 "\[P25\]" ~/Downloads/MMDVM.ini` 
var1=`grep -m 1 "\[P25\]" ~/Downloads/MMDVM.ini`
buscar=":"
largo_linea=`expr index $var $buscar` 
largo_linea=`expr $largo_linea - 1` 
numero_linea=`expr substr $var 1 $largo_linea` 
numero_linea_p25=`expr $numero_linea + 1` 
P2var=`grep -n -m 1 "\[P25\]" ~/MMDVMHost/MMDVM.ini` 
P2var1=`grep -n "\[P25\]" ~/MMDVMHost/MMDVM.ini`
buscar=":"
P2largo_linea=`expr index $P2var $buscar` 
P2largo_linea=`expr $P2largo_linea - 1` 
P2numero_linea=`expr substr $P2var 1 $P2largo_linea` 
P2numero_linea_p25=`expr $P2numero_linea + 1` 
P2P2=$(awk "NR==$numero_linea_p25" ~/Downloads/MMDVM.ini)
P2letrac=c
P2linea_sed=$P2numero_linea_p25$P2letrac
sed -i "$P2linea_sed $P2P2" ~/MMDVMHost/MMDVM.ini

#NXDN
var=`grep -n -m 1 "\[NXDN\]" ~/Downloads/MMDVM.ini` 
var1=`grep -m 1 "\[NXDN\]" ~/Downloads/MMDVM.ini`
buscar=":"
largo_linea=`expr index $var $buscar` 
largo_linea=`expr $largo_linea - 1` 
numero_linea=`expr substr $var 1 $largo_linea` 
numero_linea_p25=`expr $numero_linea + 1`
P2P2=$(awk "NR==$numero_linea_p25" ~/Downloads/MMDVM.ini)
P2var=`grep -n -m 1 "\[NXDN\]" ~/MMDVMHost/MMDVM.ini` 
P2var1=`grep -n "\[NXDN\]" ~/MMDVMHost/MMDVM.ini`
buscar=":"
P2largo_linea=`expr index $P2var $buscar` 
P2largo_linea=`expr $P2largo_linea - 1` 
P2numero_linea=`expr substr $P2var 1 $P2largo_linea` 
P2numero_linea_p25=`expr $P2numero_linea + 1` 
P2letrac=c
P2linea_sed=$P2numero_linea_p25$P2letrac
sed -i "$P2linea_sed $P2P2" ~/MMDVMHost/MMDVM.ini

#FUSION
var1=`grep -n -m 1 "\[System Fusion\]" ~/Downloads/MMDVM.ini`
var2=`echo "$var1" | tr -d '[[:space:]]'`
buscar=":"
largo_linea=`expr index $var2 $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea=`expr substr $var2 1 $largo_linea`
numero_linea=`expr $numero_linea + 1`
CWvar1=`grep -n -m 1 "\[System Fusion\]" ~/MMDVMHost/MMDVM.ini`
CWvar2=`echo "$CWvar1" | tr -d '[[:space:]]'`
buscar=":"
CWlargo_linea=`expr index $CWvar2 $buscar`
CWlargo_linea=`expr $CWlargo_linea - 1`
CWnumero_linea=`expr substr $CWvar2 1 $CWlargo_linea`
CWnumero_linea=`expr $CWnumero_linea + 1`
CWCW=$(awk "NR==$CWnumero_linea" ~/Downloads/MMDVM.ini)
CWletra=c
CWlinea_sed=$CWnumero_linea$CWletra
sed -i "$CWlinea_sed $CWCW" ~/MMDVMHost/MMDVM.ini

#Nextion
var=`grep -n -m 1 "\[Nextion\]" ~/Downloads/MMDVM.ini` 
var1=`grep -m 1 "\[Nextion\]" ~/Downloads/MMDVM.ini`
buscar=":"
largo_linea=`expr index $var $buscar` 
largo_linea=`expr $largo_linea - 1` 
numero_linea=`expr substr $var 1 $largo_linea` 
numero_linea_p25=`expr $numero_linea + 2` 
P2var=`grep -n -m 1 "\[Nextion\]" ~/MMDVMHost/MMDVM.ini` 
P2var1=`grep -n "\[Nextion\]" ~/MMDVMHost/MMDVM.ini`
buscar=":"
P2largo_linea=`expr index $P2var $buscar` 
P2largo_linea=`expr $P2largo_linea - 1` 
P2numero_linea=`expr substr $P2var 1 $P2largo_linea` 
P2numero_linea_p25=`expr $P2numero_linea + 2` 
P2P2=$(awk "NR==$numero_linea_p25" ~/Downloads/MMDVM.ini)
P2letrac=c
P2linea_sed=$P2numero_linea_p25$P2letrac
sed -i "$P2linea_sed $P2P2" ~/MMDVMHost/MMDVM.ini

#======================= MMDVM.ini_copia   ============================

# Callsign 
var=`grep -n -m 1 '\<Callsign\>' ~/Downloads/MMDVM.ini_copia` # 2:Callsign=EA3EIZ
var1=`grep -m 1 '\<Callsign\>' ~/Downloads/MMDVM.ini_copia` # Callsign=EA3EIZ
buscar=":"
largo_linea=`expr index $var $buscar` #comprueba el largo incluyendo los dos puntos (:)
largo_linea=`expr $largo_linea - 1` #comprueba el largo quitando los dos puntos (:)
numero_linea=`expr substr $var 1 $largo_linea` # recoge numero linea Downloads
Hvar=`grep -n -m 1 '\<Callsign\>' ~/MMDVMHost/MMDVM.ini_copia` # 2:Callsign=EA3EIZ
buscar=":"
Hlargo_linea=`expr index $Hvar $buscar` 
Hlargo_linea=`expr $Hlargo_linea - 1` 
Hnumero_linea=`expr substr $Hvar 1 $Hlargo_linea` # recoge numero linea MMDXVMHost
Hletra=c
Hlinea_sed=$Hnumero_linea$Hletra
sed -i "$Hlinea_sed $var1" ~/MMDVMHost/MMDVM.ini_copia

#Id capturado de la linea 3
Id=$(awk "NR==3" ~/Downloads/MMDVM.ini_copia)
sed -i "3c $Id" ~/MMDVMHost/MMDVM.ini_copia

#Timeout capturado de la linea 4
timeou=$(awk "NR==4" ~/Downloads/MMDVM.ini_copia)
sed -i "4c $timeou" ~/MMDVMHost/MMDVM.ini_copia

#Duplex
var=`grep -n -m 1 '\<Duplex\>' ~/Downloads/MMDVM.ini_copia`
var1=`grep -m 1 '\<Duplex\>' ~/Downloads/MMDVM.ini_copia`
buscar=":"
largo_linea=`expr index $var $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea=`expr substr $var 1 $largo_linea`
Dvar=`grep -n -m 1 '\<Duplex\>' ~/MMDVMHost/MMDVM.ini_copia`
buscar=":"
Dlargo_linea=`expr index $Dvar $buscar`
Dlargo_linea=`expr $Dlargo_linea - 1`
Dnumero_linea=`expr substr $Dvar 1 $Dlargo_linea`
Dletra=c
Dlinea_sed=$Dnumero_linea$Dletra
sed -i "$Dlinea_sed $var1" ~/MMDVMHost/MMDVM.ini_copia

#RFModeHang
var=`grep -n -m 1 '\<RFModeHang\>' ~/Downloads/MMDVM.ini_copia`
var1=`grep -m 1 '\<RFModeHang\>' ~/Downloads/MMDVM.ini_copia`
buscar=":"
largo_linea=`expr index $var $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea=`expr substr $var 1 $largo_linea`
Rvar=`grep -n -m 1 '\<RFModeHang\>' ~/MMDVMHost/MMDVM.ini_copia`
buscar=":"
Rlargo_linea=`expr index $Rvar $buscar`
Rlargo_linea=`expr $Rlargo_linea - 1`
Rnumero_linea=`expr substr $Rvar 1 $Rlargo_linea`
Rletra=c
Rlinea_sed=$Rnumero_linea$Rletra
sed -i "$Rlinea_sed $var1" ~/MMDVMHost/MMDVM.ini_copia

#Display
var=`grep -n -m 1 '\<Display\>' ~/Downloads/MMDVM.ini_copia`
var1=`grep -m 1 '\<Display\>' ~/Downloads/MMDVM.ini_copia`
buscar=":"
largo_linea=`expr index $var $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea=`expr substr $var 1 $largo_linea`
Dvar=`grep -n -m 1 '\<Display\>' ~/MMDVMHost/MMDVM.ini_copia`
buscar=":"
Dlargo_linea=`expr index $Dvar $buscar`
Dlargo_linea=`expr $Dlargo_linea - 1`
Dnumero_linea=`expr substr $Dvar 1 $Dlargo_linea`
Dletra=c
Dlinea_sed=$Dnumero_linea$Dletra
sed -i "$Dlinea_sed $var1" ~/MMDVMHost/MMDVM.ini_copia

#RXFrequency
var=`grep -n -m 1 '\<RXFrequency\>' ~/Downloads/MMDVM.ini_copia`
var1=`grep -m 1 '\<RXFrequency\>' ~/Downloads/MMDVM.ini_copia`
buscar=":"
largo_linea=`expr index $var $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea=`expr substr $var 1 $largo_linea`
Xvar=`grep -n -m 1 '\<RXFrequency\>' ~/MMDVMHost/MMDVM.ini_copia`
buscar=":"
Xlargo_linea=`expr index $Xvar $buscar`
Xlargo_linea=`expr $Xlargo_linea - 1`
Xnumero_linea=`expr substr $Xvar 1 $Xlargo_linea`
Xletra=c
Xlinea_sed=$Xnumero_linea$Xletra
sed -i "$Xlinea_sed $var1" ~/MMDVMHost/MMDVM.ini_copia

#TXFrequency
var=`grep -n -m 1 '\<TXFrequency\>' ~/Downloads/MMDVM.ini_copia`
var1=`grep -m 1 '\<TXFrequency\>' ~/Downloads/MMDVM.ini_copia`
buscar=":"
largo_linea=`expr index $var $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea=`expr substr $var 1 $largo_linea`
Tvar=`grep -n -m 1 '\<TXFrequency\>' ~/MMDVMHost/MMDVM.ini_copia`
buscar=":"
Tlargo_linea=`expr index $Tvar $buscar`
Tlargo_linea=`expr $Tlargo_linea - 1`
Tnumero_linea=`expr substr $Tvar 1 $Tlargo_linea`
Tletra=c
Tlinea_sed=$Tnumero_linea$Tletra
sed -i "$Tlinea_sed $var1" ~/MMDVMHost/MMDVM.ini_copia

#Latitude
var=`grep -n -m 1 '\<Latitude\>' ~/Downloads/MMDVM.ini_copia`
var1=`grep -m 1 '\<Latitude\>' ~/Downloads/MMDVM.ini_copia`
buscar=":"
largo_linea=`expr index $var $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea=`expr substr $var 1 $largo_linea`
Lvar=`grep -n -m 1 '\<Latitude\>' ~/MMDVMHost/MMDVM.ini_copia`
buscar=":"
Llargo_linea=`expr index $Lvar $buscar`
Llargo_linea=`expr $Llargo_linea - 1`
Lnumero_linea=`expr substr $Lvar 1 $Llargo_linea`
Lletra=c
Llinea_sed=$Lnumero_linea$Lletra
sed -i "$Llinea_sed $var1" ~/MMDVMHost/MMDVM.ini_copia

#Longitude
var=`grep -n -m 1 '\<Longitude\>' ~/Downloads/MMDVM.ini_copia`
var1=`grep -m 1 '\<Longitude\>' ~/Downloads/MMDVM.ini_copia`
buscar=":"
largo_linea=`expr index $var $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea=`expr substr $var 1 $largo_linea`
LGvar=`grep -n -m 1 '\<Longitude\>' ~/MMDVMHost/MMDVM.ini_copia`
buscar=":"
LGlargo_linea=`expr index $LGvar $buscar`
LGlargo_linea=`expr $LGlargo_linea - 1`
LGnumero_linea=`expr substr $LGvar 1 $LGlargo_linea`
LGletra=c
LGlinea_sed=$LGnumero_linea$LGletra
sed -i "$LGlinea_sed $var1" ~/MMDVMHost/MMDVM.ini_copia

#Location
var=`grep -n -m 1 '\<Location\>' ~/Downloads/MMDVM.ini_copia`
var1=`grep -m 1 '\<Location\>' ~/Downloads/MMDVM.ini_copia`
buscar=":"
largo_linea=`expr index $var $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea=`expr substr $var 1 $largo_linea`
LOvar=`grep -n -m 1 '\<Location\>' ~/MMDVMHost/MMDVM.ini_copia`
buscar=":"
LOlargo_linea=`expr index $LOvar $buscar`
LOlargo_linea=`expr $LOlargo_linea - 1`
LOnumero_linea=`expr substr $LOvar 1 $LOlargo_linea`
LOletra=c
LOlinea_sed=$LOnumero_linea$LOletra
sed -i "$LOlinea_sed $var1" ~/MMDVMHost/MMDVM.ini_copia

#URL
var=`grep -n -m 1 '\<URL\>' ~/Downloads/MMDVM.ini_copia`
var1=`grep -m 1 '\<URL\>' ~/Downloads/MMDVM.ini_copia`
buscar=":"
largo_linea=`expr index $var $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea_url=`expr substr $var 1 $largo_linea`
Uvar=`grep -n -m 1 '\<URL\>' ~/MMDVMHost/MMDVM.ini_copia`
Ubuscar=":"
Ulargo_linea=`expr index $Uvar $buscar`
Ulargo_linea=`expr $Ulargo_linea - 1`
Unumero_linea_url=`expr substr $Uvar 1 $largo_linea`
Uletra=c
Ulinea_sed=$Unumero_linea_url$Uletra
sed -i "$Ulinea_sed $var1" ~/MMDVMHost/MMDVM.ini_copia

#Baliza 
var1=`grep -n -m 1 "\[CW Id\]" ~/Downloads/MMDVM.ini_copia`
var2=`echo "$var1" | tr -d '[[:space:]]'`
buscar=":"
largo_linea=`expr index $var2 $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea=`expr substr $var2 1 $largo_linea`
numero_linea=`expr $numero_linea + 1`
CWvar1=`grep -n -m 1 "\[CW Id\]" ~/MMDVMHost/MMDVM.ini_copia`
CWvar2=`echo "$CWvar1" | tr -d '[[:space:]]'`
buscar=":"
CWlargo_linea=`expr index $CWvar2 $buscar`
CWlargo_linea=`expr $CWlargo_linea - 1`
CWnumero_linea=`expr substr $CWvar2 1 $CWlargo_linea`
CWnumero_linea=`expr $CWnumero_linea + 1`
CWCW=$(awk "NR==$CWnumero_linea" ~/Downloads/MMDVM.ini_copia)
CWletra=c
CWlinea_sed=$CWnumero_linea$CWletra
sed -i "$CWlinea_sed $CWCW" ~/MMDVMHost/MMDVM.ini_copia

#RXLevel
var=`grep -n -m 1 '\<RXLevel\>' ~/Downloads/MMDVM.ini_copia`
var1=`grep -m 1 '\<RXLevel\>' ~/Downloads/MMDVM.ini_copia`
buscar=":"
largo_linea=`expr index $var $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea=`expr substr $var 1 $largo_linea`
RLvar=`grep -n -m 1 '\<RXLevel\>' ~/MMDVMHost/MMDVM.ini_copia`
buscar=":"
RLlargo_linea=`expr index $RLvar $buscar`
RLlargo_linea=`expr $RLlargo_linea - 1`
RLnumero_linea=`expr substr $RLvar 1 $RLlargo_linea`
RLletra=c
RLlinea_sed=$RLnumero_linea$RLletra
sed -i "$RLlinea_sed $var1" ~/MMDVMHost/MMDVM.ini_copia

#TXLevel
var=`grep -n -m 1 '\<TXLevel\>' ~/Downloads/MMDVM.ini_copia`
var1=`grep -m 1 '\<TXLevel\>' ~/Downloads/MMDVM.ini_copia`
buscar=":"
largo_linea=`expr index $var $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea=`expr substr $var 1 $largo_linea`
TLvar=`grep -n -m 1 '\<TXLevel\>' ~/MMDVMHost/MMDVM.ini_copia`
buscar=":"
TLlargo_linea=`expr index $TLvar $buscar`
TLlargo_linea=`expr $TLlargo_linea - 1`
TLnumero_linea=`expr substr $TLvar 1 $TLlargo_linea`
TLletra=c
TLlinea_sed=$TLnumero_linea$TLletra
sed -i "$TLlinea_sed $var1" ~/MMDVMHost/MMDVM.ini_copia

#Module
var=`grep -n -m 1 '\<Module\>' ~/Downloads/MMDVM.ini_copia`
var1=`grep -m 1 '\<Module\>' ~/Downloads/MMDVM.ini_copia`
buscar=":"
largo_linea=`expr index $var $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea=`expr substr $var 1 $largo_linea`
MOvar=`grep -n -m 1 '\<Module\>' ~/MMDVMHost/MMDVM.ini_copia`
buscar=":"
MOlargo_linea=`expr index $MOvar $buscar`
MOlargo_linea=`expr $MOlargo_linea - 1`
MOnumero_linea=`expr substr $MOvar 1 $MOlargo_linea`
MOletra=c
MOlinea_sed=$MOnumero_linea$MOletra
sed -i "$MOlinea_sed $var1" ~/MMDVMHost/MMDVM.ini_copia

#Txinvert
var=`grep -n -m 1 '\<TXInvert\>' ~/Downloads/MMDVM.ini_copia`
var1=`grep -m 1 '\<TXInvert\>' ~/Downloads/MMDVM.ini_copia`
buscar=":"
largo_linea=`expr index $var $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea=`expr substr $var 1 $largo_linea`
TIvar=`grep -n -m 1 '\<TXInvert\>' ~/MMDVMHost/MMDVM.ini_copia`
buscar=":"
TIlargo_linea=`expr index $TIvar $buscar`
TIlargo_linea=`expr $TIlargo_linea - 1`
TInumero_linea=`expr substr $TIvar 1 $TIlargo_linea`
TIletra=c
TIlinea_sed=$TInumero_linea$TIletra
sed -i "$TIlinea_sed $var1" ~/MMDVMHost/MMDVM.ini_copia

#Modem capturado de la linea txinvert -1
numero_linea_MODEM=`expr $numero_linea - 1` # Downloads
MOnumero_linea_MODEM=`expr $TInumero_linea - 1` # MMDVMHost
modem=$(awk "NR==$numero_linea_MODEM" ~/Downloads/MMDVM.ini_copia)
TIletra=c
TIlinea_sed=$MOnumero_linea_MODEM$TIletra
sed -i "$TIlinea_sed $modem" ~/MMDVMHost/MMDVM.ini_copia

#Address
var=`grep -n -m 1 '\<Address\>' ~/Downloads/MMDVM.ini_copia`
var1=`grep -m 1 '\<Address\>' ~/Downloads/MMDVM.ini_copia`
buscar=":"
largo_linea=`expr index $var $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea_Address=`expr substr $var 1 $largo_linea`
ADvar=`grep -n -m 1 '\<Address\>' ~/MMDVMHost/MMDVM.ini_copia`
buscar=":"
ADlargo_linea=`expr index $ADvar $buscar`
ADlargo_linea=`expr $ADlargo_linea - 1`
ADnumero_linea_Address=`expr substr $ADvar 1 $ADlargo_linea`
ADletra=c
ADlinea_sed=$ADnumero_linea_Address$ADletra
sed -i "$ADlinea_sed $var1" ~/MMDVMHost/MMDVM.ini_copia

#Port captura de la linea Address +1
numero_linea_Address=`expr $numero_linea_Address + 1` # Downloads
ADnumero_linea_Address=`expr $ADnumero_linea_Address + 1` # MMDVMHost
port=$(awk "NR==$numero_linea_Address" ~/Downloads/MMDVM.ini_copia)
ADletra=c
ADlinea_sed=$ADnumero_linea_Address$ADletra
sed -i "$ADlinea_sed $port" ~/MMDVMHost/MMDVM.ini_copia

#Password
var=`grep -n -m 1 '\<Password\>' ~/Downloads/MMDVM.ini_copia`
var1=`grep -m 1 '\<Password\>' ~/Downloads/MMDVM.ini_copia`
buscar=":"
largo_linea=`expr index $var $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea_password=`expr substr $var 1 $largo_linea`
PWvar=`grep -n -m 1 '\<Password\>' ~/MMDVMHost/MMDVM.ini_copia`
buscar=":"
PWlargo_linea=`expr index $PWvar $buscar`
PWlargo_linea=`expr $PWlargo_linea - 1`
PWnumero_linea_password=`expr substr $PWvar 1 $PWlargo_linea`
PWletra=c
PWlinea_sed=$PWnumero_linea_password$PWletra
sed -i "$PWlinea_sed $var1" ~/MMDVMHost/MMDVM.ini_copia

#Options linea password  +1
numero_linea_password=`expr $numero_linea_password + 1` # Downloads
PWnumero_linea_password=`expr $PWnumero_linea_password + 1` # MMDVMHost
option=$(awk "NR==$numero_linea_password" ~/Downloads/MMDVM.ini_copia)
PWletra=c
PWlinea_sed=$PWnumero_linea_password$PWletra
sed -i "$PWlinea_sed $option" ~/MMDVMHost/MMDVM.ini_copia

#ScreenLayout
var=`grep -n -m 1 '\<ScreenLayout\>' ~/Downloads/MMDVM.ini_copia`
var1=`grep -m 1 '\<ScreenLayout\>' ~/Downloads/MMDVM.ini_copia`
buscar=":"
largo_linea=`expr index $var $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea=`expr substr $var 1 $largo_linea`
SCvar=`grep -n -m 1 '\<ScreenLayout\>' ~/MMDVMHost/MMDVM.ini_copia`
buscar=":"
SClargo_linea=`expr index $SCvar $buscar`
SClargo_linea=`expr $SClargo_linea - 1`
SCnumero_linea=`expr substr $SCvar 1 $SClargo_linea`
SCletra=c
SClinea_sed=$SCnumero_linea$SCletra
sed -i "$SClinea_sed $var1" ~/MMDVMHost/MMDVM.ini_copia

#Brightness
var=`grep -n -m 1 '\<Brightness\>' ~/Downloads/MMDVM.ini_copia`
var1=`grep -m 1 '\<Brightness\>' ~/Downloads/MMDVM.ini_copia`
buscar=":"
largo_linea=`expr index $var $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea=`expr substr $var 1 $largo_linea`
BRvar=`grep -n -m 1 '\<Brightness\>' ~/MMDVMHost/MMDVM.ini_copia`
buscar=":"
BRlargo_linea=`expr index $BRvar $buscar`
BRlargo_linea=`expr $BRlargo_linea - 1`
BRnumero_linea=`expr substr $BRvar 1 $BRlargo_linea`
BRletra=c
BRlinea_sed=$BRnumero_linea$BRletra
sed -i "$BRlinea_sed $var1" ~/MMDVMHost/MMDVM.ini_copia

#Slot1
var=`grep -n -m 1 '\<Slot1\>' ~/Downloads/MMDVM.ini_copia`
var1=`grep -m 1 '\<Slot1\>' ~/Downloads/MMDVM.ini_copia`
buscar=":"
largo_linea=`expr index $var $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea=`expr substr $var 1 $largo_linea`
SLvar=`grep -n -m 1 '\<Slot1\>' ~/MMDVMHost/MMDVM.ini_copia`
buscar=":"
SLlargo_linea=`expr index $SLvar $buscar`
SLlargo_linea=`expr $SLlargo_linea - 1`
SLnumero_linea=`expr substr $SLvar 1 $SLlargo_linea`
SLletra=c
SLlinea_sed=$SLnumero_linea$SLletra
sed -i "$SLlinea_sed $var1" ~/MMDVMHost/MMDVM.ini_copia

#DisplayLevel
var=`grep -n -m 1 '\<DisplayLevel\>' ~/Downloads/MMDVM.ini_copia`
var1=`grep -m 1 '\<DisplayLevel\>' ~/Downloads/MMDVM.ini_copia`
buscar=":"
largo_linea=`expr index $var $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea=`expr substr $var 1 $largo_linea`
DIvar=`grep -n -m 1 '\<DisplayLevel\>' ~/MMDVMHost/MMDVM.ini_copia`
buscar=":"
DIlargo_linea=`expr index $DIvar $buscar`
DIlargo_linea=`expr $DIlargo_linea - 1`
DInumero_linea=`expr substr $DIvar 1 $DIlargo_linea`
DIletra=c
DIlinea_sed=$DInumero_linea$DIletra
sed -i "$DIlinea_sed $var1" ~/MMDVMHost/MMDVM.ini_copia

#TXHang
var=`grep -n -m 1 '\<TXHang\>' ~/Downloads/MMDVM.ini_copia`
var1=`grep -m 1 '\<TXHang\>' ~/Downloads/MMDVM.ini_copia`
buscar=":"
largo_linea=`expr index $var $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea=`expr substr $var 1 $largo_linea`
THvar=`grep -n -m 1 '\<TXHang\>' ~/MMDVMHost/MMDVM.ini_copia`
buscar=":"
THlargo_linea=`expr index $THvar $buscar`
THlargo_linea=`expr $THlargo_linea - 1`
THnumero_linea=`expr substr $THvar 1 $THlargo_linea`
THletra=c
THlinea_sed=$THnumero_linea$THletra
sed -i "$THlinea_sed $var1" ~/MMDVMHost/MMDVM.ini_copia

#D-Star
var=`grep -n -m 1 "\[D-Star\]" ~/Downloads/MMDVM.ini_copia` 
var1=`grep -m 1 "\[D-Star\]" ~/Downloads/MMDVM.ini_copia`
buscar=":"
largo_linea=`expr index $var $buscar` 
largo_linea=`expr $largo_linea - 1` 
numero_linea=`expr substr $var 1 $largo_linea` 
numero_linea_dstar=`expr $numero_linea + 1` 
DSvar=`grep -n -m 1 "\[D-Star\]" ~/MMDVMHost/MMDVM.ini_copia` 
DSvar1=`grep -m 1 "\[D-Star\]" ~/MMDVMHost/MMDVM.ini_copia`
buscar=":"
DSlargo_linea=`expr index $DSvar $buscar` 
DSlargo_linea=`expr $DSlargo_linea - 1` 
DSnumero_linea=`expr substr $DSvar 1 $DSlargo_linea` 
DSnumero_linea_dstar=`expr $DSnumero_linea + 1`
DSDS=$(awk "NR==$numero_linea_dstar" ~/Downloads/MMDVM.ini_copia) 
DSletrac=c
DSlinea_sed=$DSnumero_linea_dstar$DSletrac
sed -i "$DSlinea_sed $DSDS" ~/MMDVMHost/MMDVM.ini_copia

#DMR
var=`grep -n -m 1 "\[DMR\]" ~/Downloads/MMDVM.ini_copia` 
var1=`grep -m 1 "\[DMR\]" ~/Downloads/MMDVM.ini_copia`
buscar=":"
largo_linea=`expr index $var $buscar` 
largo_linea=`expr $largo_linea - 1` 
numero_linea=`expr substr $var 1 $largo_linea` 
numero_linea_dmr=`expr $numero_linea + 1` 
DMvar=`grep -n "\[DMR\]" ~/MMDVMHost/MMDVM.ini_copia` 
DMvar1=`grep -n -m 1 "\[DMR\]" ~/MMDVMHost/MMDVM.ini_copia`
buscar=":"
DMlargo_linea=`expr index $DMvar $buscar` 
DMlargo_linea=`expr $DMlargo_linea - 1` 
DMnumero_linea=`expr substr $DMvar 1 $DMlargo_linea` 
DMnumero_linea_dmr=`expr $DMnumero_linea + 1` 
DMDM=$(awk "NR==$numero_linea_dmr" ~/Downloads/MMDVM.ini_copia)
DMletrac=c
DMlinea_sed=$DMnumero_linea_dmr$DMletrac 
sed -i "$DMlinea_sed $DMDM" ~/MMDVMHost/MMDVM.ini_copia

#P25
var=`grep -n -m 1 "\[P25\]" ~/Downloads/MMDVM.ini_copia` 
var1=`grep -m 1 "\[P25\]" ~/Downloads/MMDVM.ini_copia`
buscar=":"
largo_linea=`expr index $var $buscar` 
largo_linea=`expr $largo_linea - 1` 
numero_linea=`expr substr $var 1 $largo_linea` 
numero_linea_p25=`expr $numero_linea + 1` 
P2var=`grep -n -m 1 "\[P25\]" ~/MMDVMHost/MMDVM.ini_copia` 
P2var1=`grep -n "\[P25\]" ~/MMDVMHost/MMDVM.ini_copia`
buscar=":"
P2largo_linea=`expr index $P2var $buscar` 
P2largo_linea=`expr $P2largo_linea - 1` 
P2numero_linea=`expr substr $P2var 1 $P2largo_linea` 
P2numero_linea_p25=`expr $P2numero_linea + 1` 
P2P2=$(awk "NR==$numero_linea_p25" ~/Downloads/MMDVM.ini_copia)
P2letrac=c
P2linea_sed=$P2numero_linea_p25$P2letrac
sed -i "$P2linea_sed $P2P2" ~/MMDVMHost/MMDVM.ini_copia

#NXDN
var=`grep -n -m 1 "\[NXDN\]" ~/Downloads/MMDVM.ini_copia` 
var1=`grep -m 1 "\[NXDN\]" ~/Downloads/MMDVM.ini_copia`
buscar=":"
largo_linea=`expr index $var $buscar` 
largo_linea=`expr $largo_linea - 1` 
numero_linea=`expr substr $var 1 $largo_linea` 
numero_linea_p25=`expr $numero_linea + 1`
P2P2=$(awk "NR==$numero_linea_p25" ~/Downloads/MMDVM.ini_copia)
P2var=`grep -n -m 1 "\[NXDN\]" ~/MMDVMHost/MMDVM.ini_copia` 
P2var1=`grep -n "\[NXDN\]" ~/MMDVMHost/MMDVM.ini_copia`
buscar=":"
P2largo_linea=`expr index $P2var $buscar` 
P2largo_linea=`expr $P2largo_linea - 1` 
P2numero_linea=`expr substr $P2var 1 $P2largo_linea` 
P2numero_linea_p25=`expr $P2numero_linea + 1` 
P2letrac=c
P2linea_sed=$P2numero_linea_p25$P2letrac
sed -i "$P2linea_sed $P2P2" ~/MMDVMHost/MMDVM.ini_copia

#FUSION
var1=`grep -n -m 1 "\[System Fusion\]" ~/Downloads/MMDVM.ini_copia`
var2=`echo "$var1" | tr -d '[[:space:]]'`
buscar=":"
largo_linea=`expr index $var2 $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea=`expr substr $var2 1 $largo_linea`
numero_linea=`expr $numero_linea + 1`
CWvar1=`grep -n -m 1 "\[System Fusion\]" ~/MMDVMHost/MMDVM.ini_copia`
CWvar2=`echo "$CWvar1" | tr -d '[[:space:]]'`
buscar=":"
CWlargo_linea=`expr index $CWvar2 $buscar`
CWlargo_linea=`expr $CWlargo_linea - 1`
CWnumero_linea=`expr substr $CWvar2 1 $CWlargo_linea`
CWnumero_linea=`expr $CWnumero_linea + 1`
CWCW=$(awk "NR==$CWnumero_linea" ~/Downloads/MMDVM.ini_copia)
CWletra=c
CWlinea_sed=$CWnumero_linea$CWletra
sed -i "$CWlinea_sed $CWCW" ~/MMDVMHost/MMDVM.ini_copia

#Nextion
var=`grep -n -m 1 "\[Nextion\]" ~/Downloads/MMDVM.ini_copia` 
var1=`grep -m 1 "\[Nextion\]" ~/Downloads/MMDVM.ini_copia`
buscar=":"
largo_linea=`expr index $var $buscar` 
largo_linea=`expr $largo_linea - 1` 
numero_linea=`expr substr $var 1 $largo_linea` 
numero_linea_p25=`expr $numero_linea + 2` 
P2var=`grep -n -m 1 "\[Nextion\]" ~/MMDVMHost/MMDVM.ini_copia` 
P2var1=`grep -n "\[Nextion\]" ~/MMDVMHost/MMDVM.ini_copia`
buscar=":"
P2largo_linea=`expr index $P2var $buscar` 
P2largo_linea=`expr $P2largo_linea - 1` 
P2numero_linea=`expr substr $P2var 1 $P2largo_linea` 
P2numero_linea_p25=`expr $P2numero_linea + 2` 
P2P2=$(awk "NR==$numero_linea_p25" ~/Downloads/MMDVM.ini_copia)
P2letrac=c
P2linea_sed=$P2numero_linea_p25$P2letrac
sed -i "$P2linea_sed $P2P2" ~/MMDVMHost/MMDVM.ini_copia

#======================= MMDVM.ini_copia2   ============================

# Callsign 
var=`grep -n -m 1 '\<Callsign\>' ~/Downloads/MMDVM.ini_copia2` # 2:Callsign=EA3EIZ
var1=`grep -m 1 '\<Callsign\>' ~/Downloads/MMDVM.ini_copia2` # Callsign=EA3EIZ
buscar=":"
largo_linea=`expr index $var $buscar` #comprueba el largo incluyendo los dos puntos (:)
largo_linea=`expr $largo_linea - 1` #comprueba el largo quitando los dos puntos (:)
numero_linea=`expr substr $var 1 $largo_linea` # recoge numero linea Downloads
Hvar=`grep -n -m 1 '\<Callsign\>' ~/MMDVMHost/MMDVM.ini_copia2` # 2:Callsign=EA3EIZ
buscar=":"
Hlargo_linea=`expr index $Hvar $buscar` 
Hlargo_linea=`expr $Hlargo_linea - 1` 
Hnumero_linea=`expr substr $Hvar 1 $Hlargo_linea` # recoge numero linea MMDXVMHost
Hletra=c
Hlinea_sed=$Hnumero_linea$Hletra
sed -i "$Hlinea_sed $var1" ~/MMDVMHost/MMDVM.ini_copia2

#Id capturado de la linea 3
Id=$(awk "NR==3" ~/Downloads/MMDVM.ini_copia2)
sed -i "3c $Id" ~/MMDVMHost/MMDVM.ini_copia2

#Timeout capturado de la linea 4
timeou=$(awk "NR==4" ~/Downloads/MMDVM.ini_copia2)
sed -i "4c $timeou" ~/MMDVMHost/MMDVM.ini_copia2

#Duplex
var=`grep -n -m 1 '\<Duplex\>' ~/Downloads/MMDVM.ini_copia2`
var1=`grep -m 1 '\<Duplex\>' ~/Downloads/MMDVM.ini_copia2`
buscar=":"
largo_linea=`expr index $var $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea=`expr substr $var 1 $largo_linea`
Dvar=`grep -n -m 1 '\<Duplex\>' ~/MMDVMHost/MMDVM.ini_copia2`
buscar=":"
Dlargo_linea=`expr index $Dvar $buscar`
Dlargo_linea=`expr $Dlargo_linea - 1`
Dnumero_linea=`expr substr $Dvar 1 $Dlargo_linea`
Dletra=c
Dlinea_sed=$Dnumero_linea$Dletra
sed -i "$Dlinea_sed $var1" ~/MMDVMHost/MMDVM.ini_copia2

#RFModeHang
var=`grep -n -m 1 '\<RFModeHang\>' ~/Downloads/MMDVM.ini_copia2`
var1=`grep -m 1 '\<RFModeHang\>' ~/Downloads/MMDVM.ini_copia2`
buscar=":"
largo_linea=`expr index $var $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea=`expr substr $var 1 $largo_linea`
Rvar=`grep -n -m 1 '\<RFModeHang\>' ~/MMDVMHost/MMDVM.ini_copia2`
buscar=":"
Rlargo_linea=`expr index $Rvar $buscar`
Rlargo_linea=`expr $Rlargo_linea - 1`
Rnumero_linea=`expr substr $Rvar 1 $Rlargo_linea`
Rletra=c
Rlinea_sed=$Rnumero_linea$Rletra
sed -i "$Rlinea_sed $var1" ~/MMDVMHost/MMDVM.ini_copia2

#Display
var=`grep -n -m 1 '\<Display\>' ~/Downloads/MMDVM.ini_copia2`
var1=`grep -m 1 '\<Display\>' ~/Downloads/MMDVM.ini_copia2`
buscar=":"
largo_linea=`expr index $var $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea=`expr substr $var 1 $largo_linea`
Dvar=`grep -n -m 1 '\<Display\>' ~/MMDVMHost/MMDVM.ini_copia2`
buscar=":"
Dlargo_linea=`expr index $Dvar $buscar`
Dlargo_linea=`expr $Dlargo_linea - 1`
Dnumero_linea=`expr substr $Dvar 1 $Dlargo_linea`
Dletra=c
Dlinea_sed=$Dnumero_linea$Dletra
sed -i "$Dlinea_sed $var1" ~/MMDVMHost/MMDVM.ini_copia2

#RXFrequency
var=`grep -n -m 1 '\<RXFrequency\>' ~/Downloads/MMDVM.ini_copia2`
var1=`grep -m 1 '\<RXFrequency\>' ~/Downloads/MMDVM.ini_copia2`
buscar=":"
largo_linea=`expr index $var $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea=`expr substr $var 1 $largo_linea`
Xvar=`grep -n -m 1 '\<RXFrequency\>' ~/MMDVMHost/MMDVM.ini_copia2`
buscar=":"
Xlargo_linea=`expr index $Xvar $buscar`
Xlargo_linea=`expr $Xlargo_linea - 1`
Xnumero_linea=`expr substr $Xvar 1 $Xlargo_linea`
Xletra=c
Xlinea_sed=$Xnumero_linea$Xletra
sed -i "$Xlinea_sed $var1" ~/MMDVMHost/MMDVM.ini_copia2

#TXFrequency
var=`grep -n -m 1 '\<TXFrequency\>' ~/Downloads/MMDVM.ini_copia2`
var1=`grep -m 1 '\<TXFrequency\>' ~/Downloads/MMDVM.ini_copia2`
buscar=":"
largo_linea=`expr index $var $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea=`expr substr $var 1 $largo_linea`
Tvar=`grep -n -m 1 '\<TXFrequency\>' ~/MMDVMHost/MMDVM.ini_copia2`
buscar=":"
Tlargo_linea=`expr index $Tvar $buscar`
Tlargo_linea=`expr $Tlargo_linea - 1`
Tnumero_linea=`expr substr $Tvar 1 $Tlargo_linea`
Tletra=c
Tlinea_sed=$Tnumero_linea$Tletra
sed -i "$Tlinea_sed $var1" ~/MMDVMHost/MMDVM.ini_copia2

#Latitude
var=`grep -n -m 1 '\<Latitude\>' ~/Downloads/MMDVM.ini_copia2`
var1=`grep -m 1 '\<Latitude\>' ~/Downloads/MMDVM.ini_copia2`
buscar=":"
largo_linea=`expr index $var $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea=`expr substr $var 1 $largo_linea`
Lvar=`grep -n -m 1 '\<Latitude\>' ~/MMDVMHost/MMDVM.ini_copia2`
buscar=":"
Llargo_linea=`expr index $Lvar $buscar`
Llargo_linea=`expr $Llargo_linea - 1`
Lnumero_linea=`expr substr $Lvar 1 $Llargo_linea`
Lletra=c
Llinea_sed=$Lnumero_linea$Lletra
sed -i "$Llinea_sed $var1" ~/MMDVMHost/MMDVM.ini_copia2

#Longitude
var=`grep -n -m 1 '\<Longitude\>' ~/Downloads/MMDVM.ini_copia2`
var1=`grep -m 1 '\<Longitude\>' ~/Downloads/MMDVM.ini_copia2`
buscar=":"
largo_linea=`expr index $var $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea=`expr substr $var 1 $largo_linea`
LGvar=`grep -n -m 1 '\<Longitude\>' ~/MMDVMHost/MMDVM.ini_copia2`
buscar=":"
LGlargo_linea=`expr index $LGvar $buscar`
LGlargo_linea=`expr $LGlargo_linea - 1`
LGnumero_linea=`expr substr $LGvar 1 $LGlargo_linea`
LGletra=c
LGlinea_sed=$LGnumero_linea$LGletra
sed -i "$LGlinea_sed $var1" ~/MMDVMHost/MMDVM.ini_copia2

#Location
var=`grep -n -m 1 '\<Location\>' ~/Downloads/MMDVM.ini_copia2`
var1=`grep -m 1 '\<Location\>' ~/Downloads/MMDVM.ini_copia2`
buscar=":"
largo_linea=`expr index $var $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea=`expr substr $var 1 $largo_linea`
LOvar=`grep -n -m 1 '\<Location\>' ~/MMDVMHost/MMDVM.ini_copia2`
buscar=":"
LOlargo_linea=`expr index $LOvar $buscar`
LOlargo_linea=`expr $LOlargo_linea - 1`
LOnumero_linea=`expr substr $LOvar 1 $LOlargo_linea`
LOletra=c
LOlinea_sed=$LOnumero_linea$LOletra
sed -i "$LOlinea_sed $var1" ~/MMDVMHost/MMDVM.ini_copia2

#URL
var=`grep -n -m 1 '\<URL\>' ~/Downloads/MMDVM.ini_copia2`
var1=`grep -m 1 '\<URL\>' ~/Downloads/MMDVM.ini_copia2`
buscar=":"
largo_linea=`expr index $var $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea_url=`expr substr $var 1 $largo_linea`
Uvar=`grep -n -m 1 '\<URL\>' ~/MMDVMHost/MMDVM.ini_copia2`
Ubuscar=":"
Ulargo_linea=`expr index $Uvar $buscar`
Ulargo_linea=`expr $Ulargo_linea - 1`
Unumero_linea_url=`expr substr $Uvar 1 $largo_linea`
Uletra=c
Ulinea_sed=$Unumero_linea_url$Uletra
sed -i "$Ulinea_sed $var1" ~/MMDVMHost/MMDVM.ini_copia2

#Baliza 
var1=`grep -n -m 1 "\[CW Id\]" ~/Downloads/MMDVM.ini_copia2`
var2=`echo "$var1" | tr -d '[[:space:]]'`
buscar=":"
largo_linea=`expr index $var2 $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea=`expr substr $var2 1 $largo_linea`
numero_linea=`expr $numero_linea + 1`
CWvar1=`grep -n -m 1 "\[CW Id\]" ~/MMDVMHost/MMDVM.ini_copia2`
CWvar2=`echo "$CWvar1" | tr -d '[[:space:]]'`
buscar=":"
CWlargo_linea=`expr index $CWvar2 $buscar`
CWlargo_linea=`expr $CWlargo_linea - 1`
CWnumero_linea=`expr substr $CWvar2 1 $CWlargo_linea`
CWnumero_linea=`expr $CWnumero_linea + 1`
CWCW=$(awk "NR==$CWnumero_linea" ~/Downloads/MMDVM.ini_copia2)
CWletra=c
CWlinea_sed=$CWnumero_linea$CWletra
sed -i "$CWlinea_sed $CWCW" ~/MMDVMHost/MMDVM.ini_copia2

#RXLevel
var=`grep -n -m 1 '\<RXLevel\>' ~/Downloads/MMDVM.ini_copia2`
var1=`grep -m 1 '\<RXLevel\>' ~/Downloads/MMDVM.ini_copia2`
buscar=":"
largo_linea=`expr index $var $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea=`expr substr $var 1 $largo_linea`
RLvar=`grep -n -m 1 '\<RXLevel\>' ~/MMDVMHost/MMDVM.ini_copia2`
buscar=":"
RLlargo_linea=`expr index $RLvar $buscar`
RLlargo_linea=`expr $RLlargo_linea - 1`
RLnumero_linea=`expr substr $RLvar 1 $RLlargo_linea`
RLletra=c
RLlinea_sed=$RLnumero_linea$RLletra
sed -i "$RLlinea_sed $var1" ~/MMDVMHost/MMDVM.ini_copia2

#TXLevel
var=`grep -n -m 1 '\<TXLevel\>' ~/Downloads/MMDVM.ini_copia2`
var1=`grep -m 1 '\<TXLevel\>' ~/Downloads/MMDVM.ini_copia2`
buscar=":"
largo_linea=`expr index $var $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea=`expr substr $var 1 $largo_linea`
TLvar=`grep -n -m 1 '\<TXLevel\>' ~/MMDVMHost/MMDVM.ini_copia2`
buscar=":"
TLlargo_linea=`expr index $TLvar $buscar`
TLlargo_linea=`expr $TLlargo_linea - 1`
TLnumero_linea=`expr substr $TLvar 1 $TLlargo_linea`
TLletra=c
TLlinea_sed=$TLnumero_linea$TLletra
sed -i "$TLlinea_sed $var1" ~/MMDVMHost/MMDVM.ini_copia2

#Module
var=`grep -n -m 1 '\<Module\>' ~/Downloads/MMDVM.ini_copia2`
var1=`grep -m 1 '\<Module\>' ~/Downloads/MMDVM.ini_copia2`
buscar=":"
largo_linea=`expr index $var $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea=`expr substr $var 1 $largo_linea`
MOvar=`grep -n -m 1 '\<Module\>' ~/MMDVMHost/MMDVM.ini_copia2`
buscar=":"
MOlargo_linea=`expr index $MOvar $buscar`
MOlargo_linea=`expr $MOlargo_linea - 1`
MOnumero_linea=`expr substr $MOvar 1 $MOlargo_linea`
MOletra=c
MOlinea_sed=$MOnumero_linea$MOletra
sed -i "$MOlinea_sed $var1" ~/MMDVMHost/MMDVM.ini_copia2

#Txinvert
var=`grep -n -m 1 '\<TXInvert\>' ~/Downloads/MMDVM.ini_copia2`
var1=`grep -m 1 '\<TXInvert\>' ~/Downloads/MMDVM.ini_copia2`
buscar=":"
largo_linea=`expr index $var $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea=`expr substr $var 1 $largo_linea`
TIvar=`grep -n -m 1 '\<TXInvert\>' ~/MMDVMHost/MMDVM.ini_copia2`
buscar=":"
TIlargo_linea=`expr index $TIvar $buscar`
TIlargo_linea=`expr $TIlargo_linea - 1`
TInumero_linea=`expr substr $TIvar 1 $TIlargo_linea`
TIletra=c
TIlinea_sed=$TInumero_linea$TIletra
sed -i "$TIlinea_sed $var1" ~/MMDVMHost/MMDVM.ini_copia2

#Modem capturado de la linea txinvert -1
numero_linea_MODEM=`expr $numero_linea - 1` # Downloads
MOnumero_linea_MODEM=`expr $TInumero_linea - 1` # MMDVMHost
modem=$(awk "NR==$numero_linea_MODEM" ~/Downloads/MMDVM.ini_copia2)
TIletra=c
TIlinea_sed=$MOnumero_linea_MODEM$TIletra
sed -i "$TIlinea_sed $modem" ~/MMDVMHost/MMDVM.ini_copia2

#Address
var=`grep -n -m 1 '\<Address\>' ~/Downloads/MMDVM.ini_copia2`
var1=`grep -m 1 '\<Address\>' ~/Downloads/MMDVM.ini_copia2`
buscar=":"
largo_linea=`expr index $var $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea_Address=`expr substr $var 1 $largo_linea`
ADvar=`grep -n -m 1 '\<Address\>' ~/MMDVMHost/MMDVM.ini_copia2`
buscar=":"
ADlargo_linea=`expr index $ADvar $buscar`
ADlargo_linea=`expr $ADlargo_linea - 1`
ADnumero_linea_Address=`expr substr $ADvar 1 $ADlargo_linea`
ADletra=c
ADlinea_sed=$ADnumero_linea_Address$ADletra
sed -i "$ADlinea_sed $var1" ~/MMDVMHost/MMDVM.ini_copia2

#Port captura de la linea Address +1
numero_linea_Address=`expr $numero_linea_Address + 1` # Downloads
ADnumero_linea_Address=`expr $ADnumero_linea_Address + 1` # MMDVMHost
port=$(awk "NR==$numero_linea_Address" ~/Downloads/MMDVM.ini_copia2)
ADletra=c
ADlinea_sed=$ADnumero_linea_Address$ADletra
sed -i "$ADlinea_sed $port" ~/MMDVMHost/MMDVM.ini_copia2

#Password
var=`grep -n -m 1 '\<Password\>' ~/Downloads/MMDVM.ini_copia2`
var1=`grep -m 1 '\<Password\>' ~/Downloads/MMDVM.ini_copia2`
buscar=":"
largo_linea=`expr index $var $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea_password=`expr substr $var 1 $largo_linea`
PWvar=`grep -n -m 1 '\<Password\>' ~/MMDVMHost/MMDVM.ini_copia2`
buscar=":"
PWlargo_linea=`expr index $PWvar $buscar`
PWlargo_linea=`expr $PWlargo_linea - 1`
PWnumero_linea_password=`expr substr $PWvar 1 $PWlargo_linea`
PWletra=c
PWlinea_sed=$PWnumero_linea_password$PWletra
sed -i "$PWlinea_sed $var1" ~/MMDVMHost/MMDVM.ini_copia2

#Options linea password  +1
numero_linea_password=`expr $numero_linea_password + 1` # Downloads
PWnumero_linea_password=`expr $PWnumero_linea_password + 1` # MMDVMHost
option=$(awk "NR==$numero_linea_password" ~/Downloads/MMDVM.ini_copia2)
PWletra=c
PWlinea_sed=$PWnumero_linea_password$PWletra
sed -i "$PWlinea_sed $option" ~/MMDVMHost/MMDVM.ini_copia2

#ScreenLayout
var=`grep -n -m 1 '\<ScreenLayout\>' ~/Downloads/MMDVM.ini_copia2`
var1=`grep -m 1 '\<ScreenLayout\>' ~/Downloads/MMDVM.ini_copia2`
buscar=":"
largo_linea=`expr index $var $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea=`expr substr $var 1 $largo_linea`
SCvar=`grep -n -m 1 '\<ScreenLayout\>' ~/MMDVMHost/MMDVM.ini_copia2`
buscar=":"
SClargo_linea=`expr index $SCvar $buscar`
SClargo_linea=`expr $SClargo_linea - 1`
SCnumero_linea=`expr substr $SCvar 1 $SClargo_linea`
SCletra=c
SClinea_sed=$SCnumero_linea$SCletra
sed -i "$SClinea_sed $var1" ~/MMDVMHost/MMDVM.ini_copia2

#Brightness
var=`grep -n -m 1 '\<Brightness\>' ~/Downloads/MMDVM.ini_copia2`
var1=`grep -m 1 '\<Brightness\>' ~/Downloads/MMDVM.ini_copia2`
buscar=":"
largo_linea=`expr index $var $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea=`expr substr $var 1 $largo_linea`
BRvar=`grep -n -m 1 '\<Brightness\>' ~/MMDVMHost/MMDVM.ini_copia2`
buscar=":"
BRlargo_linea=`expr index $BRvar $buscar`
BRlargo_linea=`expr $BRlargo_linea - 1`
BRnumero_linea=`expr substr $BRvar 1 $BRlargo_linea`
BRletra=c
BRlinea_sed=$BRnumero_linea$BRletra
sed -i "$BRlinea_sed $var1" ~/MMDVMHost/MMDVM.ini_copia2

#Slot1
var=`grep -n -m 1 '\<Slot1\>' ~/Downloads/MMDVM.ini_copia2`
var1=`grep -m 1 '\<Slot1\>' ~/Downloads/MMDVM.ini_copia2`
buscar=":"
largo_linea=`expr index $var $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea=`expr substr $var 1 $largo_linea`
SLvar=`grep -n -m 1 '\<Slot1\>' ~/MMDVMHost/MMDVM.ini_copia2`
buscar=":"
SLlargo_linea=`expr index $SLvar $buscar`
SLlargo_linea=`expr $SLlargo_linea - 1`
SLnumero_linea=`expr substr $SLvar 1 $SLlargo_linea`
SLletra=c
SLlinea_sed=$SLnumero_linea$SLletra
sed -i "$SLlinea_sed $var1" ~/MMDVMHost/MMDVM.ini_copia2

#DisplayLevel
var=`grep -n -m 1 '\<DisplayLevel\>' ~/Downloads/MMDVM.ini_copia2`
var1=`grep -m 1 '\<DisplayLevel\>' ~/Downloads/MMDVM.ini_copia2`
buscar=":"
largo_linea=`expr index $var $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea=`expr substr $var 1 $largo_linea`
DIvar=`grep -n -m 1 '\<DisplayLevel\>' ~/MMDVMHost/MMDVM.ini_copia2`
buscar=":"
DIlargo_linea=`expr index $DIvar $buscar`
DIlargo_linea=`expr $DIlargo_linea - 1`
DInumero_linea=`expr substr $DIvar 1 $DIlargo_linea`
DIletra=c
DIlinea_sed=$DInumero_linea$DIletra
sed -i "$DIlinea_sed $var1" ~/MMDVMHost/MMDVM.ini_copia2

#TXHang
var=`grep -n -m 1 '\<TXHang\>' ~/Downloads/MMDVM.ini_copia2`
var1=`grep -m 1 '\<TXHang\>' ~/Downloads/MMDVM.ini_copia2`
buscar=":"
largo_linea=`expr index $var $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea=`expr substr $var 1 $largo_linea`
THvar=`grep -n -m 1 '\<TXHang\>' ~/MMDVMHost/MMDVM.ini_copia2`
buscar=":"
THlargo_linea=`expr index $THvar $buscar`
THlargo_linea=`expr $THlargo_linea - 1`
THnumero_linea=`expr substr $THvar 1 $THlargo_linea`
THletra=c
THlinea_sed=$THnumero_linea$THletra
sed -i "$THlinea_sed $var1" ~/MMDVMHost/MMDVM.ini_copia2

#D-Star
var=`grep -n -m 1 "\[D-Star\]" ~/Downloads/MMDVM.ini_copia2` 
var1=`grep -m 1 "\[D-Star\]" ~/Downloads/MMDVM.ini_copia2`
buscar=":"
largo_linea=`expr index $var $buscar` 
largo_linea=`expr $largo_linea - 1` 
numero_linea=`expr substr $var 1 $largo_linea` 
numero_linea_dstar=`expr $numero_linea + 1` 
DSvar=`grep -n -m 1 "\[D-Star\]" ~/MMDVMHost/MMDVM.ini_copia2` 
DSvar1=`grep -m 1 "\[D-Star\]" ~/MMDVMHost/MMDVM.ini_copia2`
buscar=":"
DSlargo_linea=`expr index $DSvar $buscar` 
DSlargo_linea=`expr $DSlargo_linea - 1` 
DSnumero_linea=`expr substr $DSvar 1 $DSlargo_linea` 
DSnumero_linea_dstar=`expr $DSnumero_linea + 1`
DSDS=$(awk "NR==$numero_linea_dstar" ~/Downloads/MMDVM.ini_copia2) 
DSletrac=c
DSlinea_sed=$DSnumero_linea_dstar$DSletrac
sed -i "$DSlinea_sed $DSDS" ~/MMDVMHost/MMDVM.ini_copia2

#DMR
var=`grep -n -m 1 "\[DMR\]" ~/Downloads/MMDVM.ini_copia2` 
var1=`grep -m 1 "\[DMR\]" ~/Downloads/MMDVM.ini_copia2`
buscar=":"
largo_linea=`expr index $var $buscar` 
largo_linea=`expr $largo_linea - 1` 
numero_linea=`expr substr $var 1 $largo_linea` 
numero_linea_dmr=`expr $numero_linea + 1` 
DMvar=`grep -n "\[DMR\]" ~/MMDVMHost/MMDVM.ini_copia2` 
DMvar1=`grep -n -m 1 "\[DMR\]" ~/MMDVMHost/MMDVM.ini_copia2`
buscar=":"
DMlargo_linea=`expr index $DMvar $buscar` 
DMlargo_linea=`expr $DMlargo_linea - 1` 
DMnumero_linea=`expr substr $DMvar 1 $DMlargo_linea` 
DMnumero_linea_dmr=`expr $DMnumero_linea + 1` 
DMDM=$(awk "NR==$numero_linea_dmr" ~/Downloads/MMDVM.ini_copia2)
DMletrac=c
DMlinea_sed=$DMnumero_linea_dmr$DMletrac 
sed -i "$DMlinea_sed $DMDM" ~/MMDVMHost/MMDVM.ini_copia2

#P25
var=`grep -n -m 1 "\[P25\]" ~/Downloads/MMDVM.ini_copia2` 
var1=`grep -m 1 "\[P25\]" ~/Downloads/MMDVM.ini_copia2`
buscar=":"
largo_linea=`expr index $var $buscar` 
largo_linea=`expr $largo_linea - 1` 
numero_linea=`expr substr $var 1 $largo_linea` 
numero_linea_p25=`expr $numero_linea + 1` 
P2var=`grep -n -m 1 "\[P25\]" ~/MMDVMHost/MMDVM.ini_copia2` 
P2var1=`grep -n "\[P25\]" ~/MMDVMHost/MMDVM.ini_copia2`
buscar=":"
P2largo_linea=`expr index $P2var $buscar` 
P2largo_linea=`expr $P2largo_linea - 1` 
P2numero_linea=`expr substr $P2var 1 $P2largo_linea` 
P2numero_linea_p25=`expr $P2numero_linea + 1` 
P2P2=$(awk "NR==$numero_linea_p25" ~/Downloads/MMDVM.ini_copia2)
P2letrac=c
P2linea_sed=$P2numero_linea_p25$P2letrac
sed -i "$P2linea_sed $P2P2" ~/MMDVMHost/MMDVM.ini_copia2

#NXDN
var=`grep -n -m 1 "\[NXDN\]" ~/Downloads/MMDVM.ini_copia2` 
var1=`grep -m 1 "\[NXDN\]" ~/Downloads/MMDVM.ini_copia2`
buscar=":"
largo_linea=`expr index $var $buscar` 
largo_linea=`expr $largo_linea - 1` 
numero_linea=`expr substr $var 1 $largo_linea` 
numero_linea_p25=`expr $numero_linea + 1`
P2P2=$(awk "NR==$numero_linea_p25" ~/Downloads/MMDVM.ini_copia2)
P2var=`grep -n -m 1 "\[NXDN\]" ~/MMDVMHost/MMDVM.ini_copia2` 
P2var1=`grep -n "\[NXDN\]" ~/MMDVMHost/MMDVM.ini_copia2`
buscar=":"
P2largo_linea=`expr index $P2var $buscar` 
P2largo_linea=`expr $P2largo_linea - 1` 
P2numero_linea=`expr substr $P2var 1 $P2largo_linea` 
P2numero_linea_p25=`expr $P2numero_linea + 1` 
P2letrac=c
P2linea_sed=$P2numero_linea_p25$P2letrac
sed -i "$P2linea_sed $P2P2" ~/MMDVMHost/MMDVM.ini_copia2

#FUSION
var1=`grep -n -m 1 "\[System Fusion\]" ~/Downloads/MMDVM.ini_copia2`
var2=`echo "$var1" | tr -d '[[:space:]]'`
buscar=":"
largo_linea=`expr index $var2 $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea=`expr substr $var2 1 $largo_linea`
numero_linea=`expr $numero_linea + 1`
CWvar1=`grep -n -m 1 "\[System Fusion\]" ~/MMDVMHost/MMDVM.ini_copia2`
CWvar2=`echo "$CWvar1" | tr -d '[[:space:]]'`
buscar=":"
CWlargo_linea=`expr index $CWvar2 $buscar`
CWlargo_linea=`expr $CWlargo_linea - 1`
CWnumero_linea=`expr substr $CWvar2 1 $CWlargo_linea`
CWnumero_linea=`expr $CWnumero_linea + 1`
CWCW=$(awk "NR==$CWnumero_linea" ~/Downloads/MMDVM.ini_copia2)
CWletra=c
CWlinea_sed=$CWnumero_linea$CWletra
sed -i "$CWlinea_sed $CWCW" ~/MMDVMHost/MMDVM.ini_copia2

#Nextion
var=`grep -n -m 1 "\[Nextion\]" ~/Downloads/MMDVM.ini_copia2` 
var1=`grep -m 1 "\[Nextion\]" ~/Downloads/MMDVM.ini_copia2`
buscar=":"
largo_linea=`expr index $var $buscar` 
largo_linea=`expr $largo_linea - 1` 
numero_linea=`expr substr $var 1 $largo_linea` 
numero_linea_p25=`expr $numero_linea + 2` 
P2var=`grep -n -m 1 "\[Nextion\]" ~/MMDVMHost/MMDVM.ini_copia2` 
P2var1=`grep -n "\[Nextion\]" ~/MMDVMHost/MMDVM.ini_copia2`
buscar=":"
P2largo_linea=`expr index $P2var $buscar` 
P2largo_linea=`expr $P2largo_linea - 1` 
P2numero_linea=`expr substr $P2var 1 $P2largo_linea` 
P2numero_linea_p25=`expr $P2numero_linea + 2` 
P2P2=$(awk "NR==$numero_linea_p25" ~/Downloads/MMDVM.ini_copia2)
P2letrac=c
P2linea_sed=$P2numero_linea_p25$P2letrac
sed -i "$P2linea_sed $P2P2" ~/MMDVMHost/MMDVM.ini_copia2

#======================= MMDVM.ini_copia3   ============================

# Callsign 
var=`grep -n -m 1 '\<Callsign\>' ~/Downloads/MMDVM.ini_copia3` # 2:Callsign=EA3EIZ
var1=`grep -m 1 '\<Callsign\>' ~/Downloads/MMDVM.ini_copia3` # Callsign=EA3EIZ
buscar=":"
largo_linea=`expr index $var $buscar` #comprueba el largo incluyendo los dos puntos (:)
largo_linea=`expr $largo_linea - 1` #comprueba el largo quitando los dos puntos (:)
numero_linea=`expr substr $var 1 $largo_linea` # recoge numero linea Downloads
Hvar=`grep -n -m 1 '\<Callsign\>' ~/MMDVMHost/MMDVM.ini_copia3` # 2:Callsign=EA3EIZ
buscar=":"
Hlargo_linea=`expr index $Hvar $buscar` 
Hlargo_linea=`expr $Hlargo_linea - 1` 
Hnumero_linea=`expr substr $Hvar 1 $Hlargo_linea` # recoge numero linea MMDXVMHost
Hletra=c
Hlinea_sed=$Hnumero_linea$Hletra
sed -i "$Hlinea_sed $var1" ~/MMDVMHost/MMDVM.ini_copia3

#Id capturado de la linea 3
Id=$(awk "NR==3" ~/Downloads/MMDVM.ini_copia3)
sed -i "3c $Id" ~/MMDVMHost/MMDVM.ini_copia3

#Timeout capturado de la linea 4
timeou=$(awk "NR==4" ~/Downloads/MMDVM.ini_copia3)
sed -i "4c $timeou" ~/MMDVMHost/MMDVM.ini_copia3

#Duplex
var=`grep -n -m 1 '\<Duplex\>' ~/Downloads/MMDVM.ini_copia3`
var1=`grep -m 1 '\<Duplex\>' ~/Downloads/MMDVM.ini_copia3`
buscar=":"
largo_linea=`expr index $var $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea=`expr substr $var 1 $largo_linea`
Dvar=`grep -n -m 1 '\<Duplex\>' ~/MMDVMHost/MMDVM.ini_copia3`
buscar=":"
Dlargo_linea=`expr index $Dvar $buscar`
Dlargo_linea=`expr $Dlargo_linea - 1`
Dnumero_linea=`expr substr $Dvar 1 $Dlargo_linea`
Dletra=c
Dlinea_sed=$Dnumero_linea$Dletra
sed -i "$Dlinea_sed $var1" ~/MMDVMHost/MMDVM.ini_copia3

#RFModeHang
var=`grep -n -m 1 '\<RFModeHang\>' ~/Downloads/MMDVM.ini_copia3`
var1=`grep -m 1 '\<RFModeHang\>' ~/Downloads/MMDVM.ini_copia3`
buscar=":"
largo_linea=`expr index $var $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea=`expr substr $var 1 $largo_linea`
Rvar=`grep -n -m 1 '\<RFModeHang\>' ~/MMDVMHost/MMDVM.ini_copia3`
buscar=":"
Rlargo_linea=`expr index $Rvar $buscar`
Rlargo_linea=`expr $Rlargo_linea - 1`
Rnumero_linea=`expr substr $Rvar 1 $Rlargo_linea`
Rletra=c
Rlinea_sed=$Rnumero_linea$Rletra
sed -i "$Rlinea_sed $var1" ~/MMDVMHost/MMDVM.ini_copia3

#Display
var=`grep -n -m 1 '\<Display\>' ~/Downloads/MMDVM.ini_copia3`
var1=`grep -m 1 '\<Display\>' ~/Downloads/MMDVM.ini_copia3`
buscar=":"
largo_linea=`expr index $var $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea=`expr substr $var 1 $largo_linea`
Dvar=`grep -n -m 1 '\<Display\>' ~/MMDVMHost/MMDVM.ini_copia3`
buscar=":"
Dlargo_linea=`expr index $Dvar $buscar`
Dlargo_linea=`expr $Dlargo_linea - 1`
Dnumero_linea=`expr substr $Dvar 1 $Dlargo_linea`
Dletra=c
Dlinea_sed=$Dnumero_linea$Dletra
sed -i "$Dlinea_sed $var1" ~/MMDVMHost/MMDVM.ini_copia3

#RXFrequency
var=`grep -n -m 1 '\<RXFrequency\>' ~/Downloads/MMDVM.ini_copia3`
var1=`grep -m 1 '\<RXFrequency\>' ~/Downloads/MMDVM.ini_copia3`
buscar=":"
largo_linea=`expr index $var $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea=`expr substr $var 1 $largo_linea`
Xvar=`grep -n -m 1 '\<RXFrequency\>' ~/MMDVMHost/MMDVM.ini_copia3`
buscar=":"
Xlargo_linea=`expr index $Xvar $buscar`
Xlargo_linea=`expr $Xlargo_linea - 1`
Xnumero_linea=`expr substr $Xvar 1 $Xlargo_linea`
Xletra=c
Xlinea_sed=$Xnumero_linea$Xletra
sed -i "$Xlinea_sed $var1" ~/MMDVMHost/MMDVM.ini_copia3

#TXFrequency
var=`grep -n -m 1 '\<TXFrequency\>' ~/Downloads/MMDVM.ini_copia3`
var1=`grep -m 1 '\<TXFrequency\>' ~/Downloads/MMDVM.ini_copia3`
buscar=":"
largo_linea=`expr index $var $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea=`expr substr $var 1 $largo_linea`
Tvar=`grep -n -m 1 '\<TXFrequency\>' ~/MMDVMHost/MMDVM.ini_copia3`
buscar=":"
Tlargo_linea=`expr index $Tvar $buscar`
Tlargo_linea=`expr $Tlargo_linea - 1`
Tnumero_linea=`expr substr $Tvar 1 $Tlargo_linea`
Tletra=c
Tlinea_sed=$Tnumero_linea$Tletra
sed -i "$Tlinea_sed $var1" ~/MMDVMHost/MMDVM.ini_copia3

#Latitude
var=`grep -n -m 1 '\<Latitude\>' ~/Downloads/MMDVM.ini_copia3`
var1=`grep -m 1 '\<Latitude\>' ~/Downloads/MMDVM.ini_copia3`
buscar=":"
largo_linea=`expr index $var $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea=`expr substr $var 1 $largo_linea`
Lvar=`grep -n -m 1 '\<Latitude\>' ~/MMDVMHost/MMDVM.ini_copia3`
buscar=":"
Llargo_linea=`expr index $Lvar $buscar`
Llargo_linea=`expr $Llargo_linea - 1`
Lnumero_linea=`expr substr $Lvar 1 $Llargo_linea`
Lletra=c
Llinea_sed=$Lnumero_linea$Lletra
sed -i "$Llinea_sed $var1" ~/MMDVMHost/MMDVM.ini_copia3

#Longitude
var=`grep -n -m 1 '\<Longitude\>' ~/Downloads/MMDVM.ini_copia3`
var1=`grep -m 1 '\<Longitude\>' ~/Downloads/MMDVM.ini_copia3`
buscar=":"
largo_linea=`expr index $var $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea=`expr substr $var 1 $largo_linea`
LGvar=`grep -n -m 1 '\<Longitude\>' ~/MMDVMHost/MMDVM.ini_copia3`
buscar=":"
LGlargo_linea=`expr index $LGvar $buscar`
LGlargo_linea=`expr $LGlargo_linea - 1`
LGnumero_linea=`expr substr $LGvar 1 $LGlargo_linea`
LGletra=c
LGlinea_sed=$LGnumero_linea$LGletra
sed -i "$LGlinea_sed $var1" ~/MMDVMHost/MMDVM.ini_copia3

#Location
var=`grep -n -m 1 '\<Location\>' ~/Downloads/MMDVM.ini_copia3`
var1=`grep -m 1 '\<Location\>' ~/Downloads/MMDVM.ini_copia3`
buscar=":"
largo_linea=`expr index $var $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea=`expr substr $var 1 $largo_linea`
LOvar=`grep -n -m 1 '\<Location\>' ~/MMDVMHost/MMDVM.ini_copia3`
buscar=":"
LOlargo_linea=`expr index $LOvar $buscar`
LOlargo_linea=`expr $LOlargo_linea - 1`
LOnumero_linea=`expr substr $LOvar 1 $LOlargo_linea`
LOletra=c
LOlinea_sed=$LOnumero_linea$LOletra
sed -i "$LOlinea_sed $var1" ~/MMDVMHost/MMDVM.ini_copia3

#URL
var=`grep -n -m 1 '\<URL\>' ~/Downloads/MMDVM.ini_copia3`
var1=`grep -m 1 '\<URL\>' ~/Downloads/MMDVM.ini_copia3`
buscar=":"
largo_linea=`expr index $var $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea_url=`expr substr $var 1 $largo_linea`
Uvar=`grep -n -m 1 '\<URL\>' ~/MMDVMHost/MMDVM.ini_copia3`
Ubuscar=":"
Ulargo_linea=`expr index $Uvar $buscar`
Ulargo_linea=`expr $Ulargo_linea - 1`
Unumero_linea_url=`expr substr $Uvar 1 $largo_linea`
Uletra=c
Ulinea_sed=$Unumero_linea_url$Uletra
sed -i "$Ulinea_sed $var1" ~/MMDVMHost/MMDVM.ini_copia3

#Baliza 
var1=`grep -n -m 1 "\[CW Id\]" ~/Downloads/MMDVM.ini_copia3`
var2=`echo "$var1" | tr -d '[[:space:]]'`
buscar=":"
largo_linea=`expr index $var2 $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea=`expr substr $var2 1 $largo_linea`
numero_linea=`expr $numero_linea + 1`
CWvar1=`grep -n -m 1 "\[CW Id\]" ~/MMDVMHost/MMDVM.ini_copia3`
CWvar2=`echo "$CWvar1" | tr -d '[[:space:]]'`
buscar=":"
CWlargo_linea=`expr index $CWvar2 $buscar`
CWlargo_linea=`expr $CWlargo_linea - 1`
CWnumero_linea=`expr substr $CWvar2 1 $CWlargo_linea`
CWnumero_linea=`expr $CWnumero_linea + 1`
CWCW=$(awk "NR==$CWnumero_linea" ~/Downloads/MMDVM.ini_copia3)
CWletra=c
CWlinea_sed=$CWnumero_linea$CWletra
sed -i "$CWlinea_sed $CWCW" ~/MMDVMHost/MMDVM.ini_copia3

#RXLevel
var=`grep -n -m 1 '\<RXLevel\>' ~/Downloads/MMDVM.ini_copia3`
var1=`grep -m 1 '\<RXLevel\>' ~/Downloads/MMDVM.ini_copia3`
buscar=":"
largo_linea=`expr index $var $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea=`expr substr $var 1 $largo_linea`
RLvar=`grep -n -m 1 '\<RXLevel\>' ~/MMDVMHost/MMDVM.ini_copia3`
buscar=":"
RLlargo_linea=`expr index $RLvar $buscar`
RLlargo_linea=`expr $RLlargo_linea - 1`
RLnumero_linea=`expr substr $RLvar 1 $RLlargo_linea`
RLletra=c
RLlinea_sed=$RLnumero_linea$RLletra
sed -i "$RLlinea_sed $var1" ~/MMDVMHost/MMDVM.ini_copia3

#TXLevel
var=`grep -n -m 1 '\<TXLevel\>' ~/Downloads/MMDVM.ini_copia3`
var1=`grep -m 1 '\<TXLevel\>' ~/Downloads/MMDVM.ini_copia3`
buscar=":"
largo_linea=`expr index $var $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea=`expr substr $var 1 $largo_linea`
TLvar=`grep -n -m 1 '\<TXLevel\>' ~/MMDVMHost/MMDVM.ini_copia3`
buscar=":"
TLlargo_linea=`expr index $TLvar $buscar`
TLlargo_linea=`expr $TLlargo_linea - 1`
TLnumero_linea=`expr substr $TLvar 1 $TLlargo_linea`
TLletra=c
TLlinea_sed=$TLnumero_linea$TLletra
sed -i "$TLlinea_sed $var1" ~/MMDVMHost/MMDVM.ini_copia3

#Module
var=`grep -n -m 1 '\<Module\>' ~/Downloads/MMDVM.ini_copia3`
var1=`grep -m 1 '\<Module\>' ~/Downloads/MMDVM.ini_copia3`
buscar=":"
largo_linea=`expr index $var $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea=`expr substr $var 1 $largo_linea`
MOvar=`grep -n -m 1 '\<Module\>' ~/MMDVMHost/MMDVM.ini_copia3`
buscar=":"
MOlargo_linea=`expr index $MOvar $buscar`
MOlargo_linea=`expr $MOlargo_linea - 1`
MOnumero_linea=`expr substr $MOvar 1 $MOlargo_linea`
MOletra=c
MOlinea_sed=$MOnumero_linea$MOletra
sed -i "$MOlinea_sed $var1" ~/MMDVMHost/MMDVM.ini_copia3

#Txinvert
var=`grep -n -m 1 '\<TXInvert\>' ~/Downloads/MMDVM.ini_copia3`
var1=`grep -m 1 '\<TXInvert\>' ~/Downloads/MMDVM.ini_copia3`
buscar=":"
largo_linea=`expr index $var $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea=`expr substr $var 1 $largo_linea`
TIvar=`grep -n -m 1 '\<TXInvert\>' ~/MMDVMHost/MMDVM.ini_copia3`
buscar=":"
TIlargo_linea=`expr index $TIvar $buscar`
TIlargo_linea=`expr $TIlargo_linea - 1`
TInumero_linea=`expr substr $TIvar 1 $TIlargo_linea`
TIletra=c
TIlinea_sed=$TInumero_linea$TIletra
sed -i "$TIlinea_sed $var1" ~/MMDVMHost/MMDVM.ini_copia3

#Modem capturado de la linea txinvert -1
numero_linea_MODEM=`expr $numero_linea - 1` # Downloads
MOnumero_linea_MODEM=`expr $TInumero_linea - 1` # MMDVMHost
modem=$(awk "NR==$numero_linea_MODEM" ~/Downloads/MMDVM.ini_copia3)
TIletra=c
TIlinea_sed=$MOnumero_linea_MODEM$TIletra
sed -i "$TIlinea_sed $modem" ~/MMDVMHost/MMDVM.ini_copia3

#Address
var=`grep -n -m 1 '\<Address\>' ~/Downloads/MMDVM.ini_copia3`
var1=`grep -m 1 '\<Address\>' ~/Downloads/MMDVM.ini_copia3`
buscar=":"
largo_linea=`expr index $var $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea_Address=`expr substr $var 1 $largo_linea`
ADvar=`grep -n -m 1 '\<Address\>' ~/MMDVMHost/MMDVM.ini_copia3`
buscar=":"
ADlargo_linea=`expr index $ADvar $buscar`
ADlargo_linea=`expr $ADlargo_linea - 1`
ADnumero_linea_Address=`expr substr $ADvar 1 $ADlargo_linea`
ADletra=c
ADlinea_sed=$ADnumero_linea_Address$ADletra
sed -i "$ADlinea_sed $var1" ~/MMDVMHost/MMDVM.ini_copia3

#Port captura de la linea Address +1
numero_linea_Address=`expr $numero_linea_Address + 1` # Downloads
ADnumero_linea_Address=`expr $ADnumero_linea_Address + 1` # MMDVMHost
port=$(awk "NR==$numero_linea_Address" ~/Downloads/MMDVM.ini_copia3)
ADletra=c
ADlinea_sed=$ADnumero_linea_Address$ADletra
sed -i "$ADlinea_sed $port" ~/MMDVMHost/MMDVM.ini_copia3

#Password
var=`grep -n -m 1 '\<Password\>' ~/Downloads/MMDVM.ini_copia3`
var1=`grep -m 1 '\<Password\>' ~/Downloads/MMDVM.ini_copia3`
buscar=":"
largo_linea=`expr index $var $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea_password=`expr substr $var 1 $largo_linea`
PWvar=`grep -n -m 1 '\<Password\>' ~/MMDVMHost/MMDVM.ini_copia3`
buscar=":"
PWlargo_linea=`expr index $PWvar $buscar`
PWlargo_linea=`expr $PWlargo_linea - 1`
PWnumero_linea_password=`expr substr $PWvar 1 $PWlargo_linea`
PWletra=c
PWlinea_sed=$PWnumero_linea_password$PWletra
sed -i "$PWlinea_sed $var1" ~/MMDVMHost/MMDVM.ini_copia3

#Options linea password  +1
numero_linea_password=`expr $numero_linea_password + 1` # Downloads
PWnumero_linea_password=`expr $PWnumero_linea_password + 1` # MMDVMHost
option=$(awk "NR==$numero_linea_password" ~/Downloads/MMDVM.ini_copia3)
PWletra=c
PWlinea_sed=$PWnumero_linea_password$PWletra
sed -i "$PWlinea_sed $option" ~/MMDVMHost/MMDVM.ini_copia3

#ScreenLayout
var=`grep -n -m 1 '\<ScreenLayout\>' ~/Downloads/MMDVM.ini_copia3`
var1=`grep -m 1 '\<ScreenLayout\>' ~/Downloads/MMDVM.ini_copia3`
buscar=":"
largo_linea=`expr index $var $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea=`expr substr $var 1 $largo_linea`
SCvar=`grep -n -m 1 '\<ScreenLayout\>' ~/MMDVMHost/MMDVM.ini_copia3`
buscar=":"
SClargo_linea=`expr index $SCvar $buscar`
SClargo_linea=`expr $SClargo_linea - 1`
SCnumero_linea=`expr substr $SCvar 1 $SClargo_linea`
SCletra=c
SClinea_sed=$SCnumero_linea$SCletra
sed -i "$SClinea_sed $var1" ~/MMDVMHost/MMDVM.ini_copia3

#Brightness
var=`grep -n -m 1 '\<Brightness\>' ~/Downloads/MMDVM.ini_copia3`
var1=`grep -m 1 '\<Brightness\>' ~/Downloads/MMDVM.ini_copia3`
buscar=":"
largo_linea=`expr index $var $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea=`expr substr $var 1 $largo_linea`
BRvar=`grep -n -m 1 '\<Brightness\>' ~/MMDVMHost/MMDVM.ini_copia3`
buscar=":"
BRlargo_linea=`expr index $BRvar $buscar`
BRlargo_linea=`expr $BRlargo_linea - 1`
BRnumero_linea=`expr substr $BRvar 1 $BRlargo_linea`
BRletra=c
BRlinea_sed=$BRnumero_linea$BRletra
sed -i "$BRlinea_sed $var1" ~/MMDVMHost/MMDVM.ini_copia3

#Slot1
var=`grep -n -m 1 '\<Slot1\>' ~/Downloads/MMDVM.ini_copia3`
var1=`grep -m 1 '\<Slot1\>' ~/Downloads/MMDVM.ini_copia3`
buscar=":"
largo_linea=`expr index $var $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea=`expr substr $var 1 $largo_linea`
SLvar=`grep -n -m 1 '\<Slot1\>' ~/MMDVMHost/MMDVM.ini_copia3`
buscar=":"
SLlargo_linea=`expr index $SLvar $buscar`
SLlargo_linea=`expr $SLlargo_linea - 1`
SLnumero_linea=`expr substr $SLvar 1 $SLlargo_linea`
SLletra=c
SLlinea_sed=$SLnumero_linea$SLletra
sed -i "$SLlinea_sed $var1" ~/MMDVMHost/MMDVM.ini_copia3

#DisplayLevel
var=`grep -n -m 1 '\<DisplayLevel\>' ~/Downloads/MMDVM.ini_copia3`
var1=`grep -m 1 '\<DisplayLevel\>' ~/Downloads/MMDVM.ini_copia3`
buscar=":"
largo_linea=`expr index $var $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea=`expr substr $var 1 $largo_linea`
DIvar=`grep -n -m 1 '\<DisplayLevel\>' ~/MMDVMHost/MMDVM.ini_copia3`
buscar=":"
DIlargo_linea=`expr index $DIvar $buscar`
DIlargo_linea=`expr $DIlargo_linea - 1`
DInumero_linea=`expr substr $DIvar 1 $DIlargo_linea`
DIletra=c
DIlinea_sed=$DInumero_linea$DIletra
sed -i "$DIlinea_sed $var1" ~/MMDVMHost/MMDVM.ini_copia3

#TXHang
var=`grep -n -m 1 '\<TXHang\>' ~/Downloads/MMDVM.ini_copia3`
var1=`grep -m 1 '\<TXHang\>' ~/Downloads/MMDVM.ini_copia3`
buscar=":"
largo_linea=`expr index $var $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea=`expr substr $var 1 $largo_linea`
THvar=`grep -n -m 1 '\<TXHang\>' ~/MMDVMHost/MMDVM.ini_copia3`
buscar=":"
THlargo_linea=`expr index $THvar $buscar`
THlargo_linea=`expr $THlargo_linea - 1`
THnumero_linea=`expr substr $THvar 1 $THlargo_linea`
THletra=c
THlinea_sed=$THnumero_linea$THletra
sed -i "$THlinea_sed $var1" ~/MMDVMHost/MMDVM.ini_copia3

#D-Star
var=`grep -n -m 1 "\[D-Star\]" ~/Downloads/MMDVM.ini_copia3` 
var1=`grep -m 1 "\[D-Star\]" ~/Downloads/MMDVM.ini_copia3`
buscar=":"
largo_linea=`expr index $var $buscar` 
largo_linea=`expr $largo_linea - 1` 
numero_linea=`expr substr $var 1 $largo_linea` 
numero_linea_dstar=`expr $numero_linea + 1` 
DSvar=`grep -n -m 1 "\[D-Star\]" ~/MMDVMHost/MMDVM.ini_copia3` 
DSvar1=`grep -m 1 "\[D-Star\]" ~/MMDVMHost/MMDVM.ini_copia3`
buscar=":"
DSlargo_linea=`expr index $DSvar $buscar` 
DSlargo_linea=`expr $DSlargo_linea - 1` 
DSnumero_linea=`expr substr $DSvar 1 $DSlargo_linea` 
DSnumero_linea_dstar=`expr $DSnumero_linea + 1`
DSDS=$(awk "NR==$numero_linea_dstar" ~/Downloads/MMDVM.ini_copia3) 
DSletrac=c
DSlinea_sed=$DSnumero_linea_dstar$DSletrac
sed -i "$DSlinea_sed $DSDS" ~/MMDVMHost/MMDVM.ini_copia3

#DMR
var=`grep -n -m 1 "\[DMR\]" ~/Downloads/MMDVM.ini_copia3` 
var1=`grep -m 1 "\[DMR\]" ~/Downloads/MMDVM.ini_copia3`
buscar=":"
largo_linea=`expr index $var $buscar` 
largo_linea=`expr $largo_linea - 1` 
numero_linea=`expr substr $var 1 $largo_linea` 
numero_linea_dmr=`expr $numero_linea + 1` 
DMvar=`grep -n "\[DMR\]" ~/MMDVMHost/MMDVM.ini_copia3` 
DMvar1=`grep -n -m 1 "\[DMR\]" ~/MMDVMHost/MMDVM.ini_copia3`
buscar=":"
DMlargo_linea=`expr index $DMvar $buscar` 
DMlargo_linea=`expr $DMlargo_linea - 1` 
DMnumero_linea=`expr substr $DMvar 1 $DMlargo_linea` 
DMnumero_linea_dmr=`expr $DMnumero_linea + 1` 
DMDM=$(awk "NR==$numero_linea_dmr" ~/Downloads/MMDVM.ini_copia3)
DMletrac=c
DMlinea_sed=$DMnumero_linea_dmr$DMletrac 
sed -i "$DMlinea_sed $DMDM" ~/MMDVMHost/MMDVM.ini_copia3

#P25
var=`grep -n -m 1 "\[P25\]" ~/Downloads/MMDVM.ini_copia3` 
var1=`grep -m 1 "\[P25\]" ~/Downloads/MMDVM.ini_copia3`
buscar=":"
largo_linea=`expr index $var $buscar` 
largo_linea=`expr $largo_linea - 1` 
numero_linea=`expr substr $var 1 $largo_linea` 
numero_linea_p25=`expr $numero_linea + 1` 
P2var=`grep -n -m 1 "\[P25\]" ~/MMDVMHost/MMDVM.ini_copia3` 
P2var1=`grep -n "\[P25\]" ~/MMDVMHost/MMDVM.ini_copia3`
buscar=":"
P2largo_linea=`expr index $P2var $buscar` 
P2largo_linea=`expr $P2largo_linea - 1` 
P2numero_linea=`expr substr $P2var 1 $P2largo_linea` 
P2numero_linea_p25=`expr $P2numero_linea + 1` 
P2P2=$(awk "NR==$numero_linea_p25" ~/Downloads/MMDVM.ini_copia3)
P2letrac=c
P2linea_sed=$P2numero_linea_p25$P2letrac
sed -i "$P2linea_sed $P2P2" ~/MMDVMHost/MMDVM.ini_copia3

#NXDN
var=`grep -n -m 1 "\[NXDN\]" ~/Downloads/MMDVM.ini_copia3` 
var1=`grep -m 1 "\[NXDN\]" ~/Downloads/MMDVM.ini_copia3`
buscar=":"
largo_linea=`expr index $var $buscar` 
largo_linea=`expr $largo_linea - 1` 
numero_linea=`expr substr $var 1 $largo_linea` 
numero_linea_p25=`expr $numero_linea + 1`
P2P2=$(awk "NR==$numero_linea_p25" ~/Downloads/MMDVM.ini_copia3)
P2var=`grep -n -m 1 "\[NXDN\]" ~/MMDVMHost/MMDVM.ini_copia3` 
P2var1=`grep -n "\[NXDN\]" ~/MMDVMHost/MMDVM.ini_copia3`
buscar=":"
P2largo_linea=`expr index $P2var $buscar` 
P2largo_linea=`expr $P2largo_linea - 1` 
P2numero_linea=`expr substr $P2var 1 $P2largo_linea` 
P2numero_linea_p25=`expr $P2numero_linea + 1` 
P2letrac=c
P2linea_sed=$P2numero_linea_p25$P2letrac
sed -i "$P2linea_sed $P2P2" ~/MMDVMHost/MMDVM.ini_copia3

#FUSION
var1=`grep -n -m 1 "\[System Fusion\]" ~/Downloads/MMDVM.ini_copia3`
var2=`echo "$var1" | tr -d '[[:space:]]'`
buscar=":"
largo_linea=`expr index $var2 $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea=`expr substr $var2 1 $largo_linea`
numero_linea=`expr $numero_linea + 1`
CWvar1=`grep -n -m 1 "\[System Fusion\]" ~/MMDVMHost/MMDVM.ini_copia3`
CWvar2=`echo "$CWvar1" | tr -d '[[:space:]]'`
buscar=":"
CWlargo_linea=`expr index $CWvar2 $buscar`
CWlargo_linea=`expr $CWlargo_linea - 1`
CWnumero_linea=`expr substr $CWvar2 1 $CWlargo_linea`
CWnumero_linea=`expr $CWnumero_linea + 1`
CWCW=$(awk "NR==$CWnumero_linea" ~/Downloads/MMDVM.ini_copia3)
CWletra=c
CWlinea_sed=$CWnumero_linea$CWletra
sed -i "$CWlinea_sed $CWCW" ~/MMDVMHost/MMDVM.ini_copia3

#Nextion
var=`grep -n -m 1 "\[Nextion\]" ~/Downloads/MMDVM.ini_copia3` 
var1=`grep -m 1 "\[Nextion\]" ~/Downloads/MMDVM.ini_copia3`
buscar=":"
largo_linea=`expr index $var $buscar` 
largo_linea=`expr $largo_linea - 1` 
numero_linea=`expr substr $var 1 $largo_linea` 
numero_linea_p25=`expr $numero_linea + 2` 
P2var=`grep -n -m 1 "\[Nextion\]" ~/MMDVMHost/MMDVM.ini_copia3` 
P2var1=`grep -n "\[Nextion\]" ~/MMDVMHost/MMDVM.ini_copia3`
buscar=":"
P2largo_linea=`expr index $P2var $buscar` 
P2largo_linea=`expr $P2largo_linea - 1` 
P2numero_linea=`expr substr $P2var 1 $P2largo_linea` 
P2numero_linea_p25=`expr $P2numero_linea + 2` 
P2P2=$(awk "NR==$numero_linea_p25" ~/Downloads/MMDVM.ini_copia3)
P2letrac=c
P2linea_sed=$P2numero_linea_p25$P2letrac
sed -i "$P2linea_sed $P2P2" ~/MMDVMHost/MMDVM.ini_copia3

#======================= MMDVMBM.ini   ============================

# Callsign 
var=`grep -n -m 1 '\<Callsign\>' ~/Downloads/MMDVMBM.ini` # 2:Callsign=EA3EIZ
var1=`grep -m 1 '\<Callsign\>' ~/Downloads/MMDVMBM.ini` # Callsign=EA3EIZ
buscar=":"
largo_linea=`expr index $var $buscar` #comprueba el largo incluyendo los dos puntos (:)
largo_linea=`expr $largo_linea - 1` #comprueba el largo quitando los dos puntos (:)
numero_linea=`expr substr $var 1 $largo_linea` # recoge numero linea Downloads
Hvar=`grep -n -m 1 '\<Callsign\>' ~/MMDVMHost/MMDVMBM.ini` # 2:Callsign=EA3EIZ
buscar=":"
Hlargo_linea=`expr index $Hvar $buscar` 
Hlargo_linea=`expr $Hlargo_linea - 1` 
Hnumero_linea=`expr substr $Hvar 1 $Hlargo_linea` # recoge numero linea MMDXVMHost
Hletra=c
Hlinea_sed=$Hnumero_linea$Hletra
sed -i "$Hlinea_sed $var1" ~/MMDVMHost/MMDVMBM.ini

#Id capturado de la linea 3
Id=$(awk "NR==3" ~/Downloads/MMDVMBM.ini)
sed -i "3c $Id" ~/MMDVMHost/MMDVMBM.ini

#Timeout capturado de la linea 4
timeou=$(awk "NR==4" ~/Downloads/MMDVMBM.ini)
sed -i "4c $timeou" ~/MMDVMHost/MMDVMBM.ini

#Duplex
var=`grep -n -m 1 '\<Duplex\>' ~/Downloads/MMDVMBM.ini`
var1=`grep -m 1 '\<Duplex\>' ~/Downloads/MMDVMBM.ini`
buscar=":"
largo_linea=`expr index $var $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea=`expr substr $var 1 $largo_linea`
Dvar=`grep -n -m 1 '\<Duplex\>' ~/MMDVMHost/MMDVMBM.ini`
buscar=":"
Dlargo_linea=`expr index $Dvar $buscar`
Dlargo_linea=`expr $Dlargo_linea - 1`
Dnumero_linea=`expr substr $Dvar 1 $Dlargo_linea`
Dletra=c
Dlinea_sed=$Dnumero_linea$Dletra
sed -i "$Dlinea_sed $var1" ~/MMDVMHost/MMDVMBM.ini

#RFModeHang
var=`grep -n -m 1 '\<RFModeHang\>' ~/Downloads/MMDVMBM.ini`
var1=`grep -m 1 '\<RFModeHang\>' ~/Downloads/MMDVMBM.ini`
buscar=":"
largo_linea=`expr index $var $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea=`expr substr $var 1 $largo_linea`
Rvar=`grep -n -m 1 '\<RFModeHang\>' ~/MMDVMHost/MMDVMBM.ini`
buscar=":"
Rlargo_linea=`expr index $Rvar $buscar`
Rlargo_linea=`expr $Rlargo_linea - 1`
Rnumero_linea=`expr substr $Rvar 1 $Rlargo_linea`
Rletra=c
Rlinea_sed=$Rnumero_linea$Rletra
sed -i "$Rlinea_sed $var1" ~/MMDVMHost/MMDVMBM.ini

#Display
var=`grep -n -m 1 '\<Display\>' ~/Downloads/MMDVMBM.ini`
var1=`grep -m 1 '\<Display\>' ~/Downloads/MMDVMBM.ini`
buscar=":"
largo_linea=`expr index $var $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea=`expr substr $var 1 $largo_linea`
Dvar=`grep -n -m 1 '\<Display\>' ~/MMDVMHost/MMDVMBM.ini`
buscar=":"
Dlargo_linea=`expr index $Dvar $buscar`
Dlargo_linea=`expr $Dlargo_linea - 1`
Dnumero_linea=`expr substr $Dvar 1 $Dlargo_linea`
Dletra=c
Dlinea_sed=$Dnumero_linea$Dletra
sed -i "$Dlinea_sed $var1" ~/MMDVMHost/MMDVMBM.ini

#RXFrequency
var=`grep -n -m 1 '\<RXFrequency\>' ~/Downloads/MMDVMBM.ini`
var1=`grep -m 1 '\<RXFrequency\>' ~/Downloads/MMDVMBM.ini`
buscar=":"
largo_linea=`expr index $var $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea=`expr substr $var 1 $largo_linea`
Xvar=`grep -n -m 1 '\<RXFrequency\>' ~/MMDVMHost/MMDVMBM.ini`
buscar=":"
Xlargo_linea=`expr index $Xvar $buscar`
Xlargo_linea=`expr $Xlargo_linea - 1`
Xnumero_linea=`expr substr $Xvar 1 $Xlargo_linea`
Xletra=c
Xlinea_sed=$Xnumero_linea$Xletra
sed -i "$Xlinea_sed $var1" ~/MMDVMHost/MMDVMBM.ini

#TXFrequency
var=`grep -n -m 1 '\<TXFrequency\>' ~/Downloads/MMDVMBM.ini`
var1=`grep -m 1 '\<TXFrequency\>' ~/Downloads/MMDVMBM.ini`
buscar=":"
largo_linea=`expr index $var $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea=`expr substr $var 1 $largo_linea`
Tvar=`grep -n -m 1 '\<TXFrequency\>' ~/MMDVMHost/MMDVMBM.ini`
buscar=":"
Tlargo_linea=`expr index $Tvar $buscar`
Tlargo_linea=`expr $Tlargo_linea - 1`
Tnumero_linea=`expr substr $Tvar 1 $Tlargo_linea`
Tletra=c
Tlinea_sed=$Tnumero_linea$Tletra
sed -i "$Tlinea_sed $var1" ~/MMDVMHost/MMDVMBM.ini

#Latitude
var=`grep -n -m 1 '\<Latitude\>' ~/Downloads/MMDVMBM.ini`
var1=`grep -m 1 '\<Latitude\>' ~/Downloads/MMDVMBM.ini`
buscar=":"
largo_linea=`expr index $var $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea=`expr substr $var 1 $largo_linea`
Lvar=`grep -n -m 1 '\<Latitude\>' ~/MMDVMHost/MMDVMBM.ini`
buscar=":"
Llargo_linea=`expr index $Lvar $buscar`
Llargo_linea=`expr $Llargo_linea - 1`
Lnumero_linea=`expr substr $Lvar 1 $Llargo_linea`
Lletra=c
Llinea_sed=$Lnumero_linea$Lletra
sed -i "$Llinea_sed $var1" ~/MMDVMHost/MMDVMBM.ini

#Longitude
var=`grep -n -m 1 '\<Longitude\>' ~/Downloads/MMDVMBM.ini`
var1=`grep -m 1 '\<Longitude\>' ~/Downloads/MMDVMBM.ini`
buscar=":"
largo_linea=`expr index $var $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea=`expr substr $var 1 $largo_linea`
LGvar=`grep -n -m 1 '\<Longitude\>' ~/MMDVMHost/MMDVMBM.ini`
buscar=":"
LGlargo_linea=`expr index $LGvar $buscar`
LGlargo_linea=`expr $LGlargo_linea - 1`
LGnumero_linea=`expr substr $LGvar 1 $LGlargo_linea`
LGletra=c
LGlinea_sed=$LGnumero_linea$LGletra
sed -i "$LGlinea_sed $var1" ~/MMDVMHost/MMDVMBM.ini

#Location
var=`grep -n -m 1 '\<Location\>' ~/Downloads/MMDVMBM.ini`
var1=`grep -m 1 '\<Location\>' ~/Downloads/MMDVMBM.ini`
buscar=":"
largo_linea=`expr index $var $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea=`expr substr $var 1 $largo_linea`
LOvar=`grep -n -m 1 '\<Location\>' ~/MMDVMHost/MMDVMBM.ini`
buscar=":"
LOlargo_linea=`expr index $LOvar $buscar`
LOlargo_linea=`expr $LOlargo_linea - 1`
LOnumero_linea=`expr substr $LOvar 1 $LOlargo_linea`
LOletra=c
LOlinea_sed=$LOnumero_linea$LOletra
sed -i "$LOlinea_sed $var1" ~/MMDVMHost/MMDVMBM.ini

#URL
var=`grep -n -m 1 '\<URL\>' ~/Downloads/MMDVMBM.ini`
var1=`grep -m 1 '\<URL\>' ~/Downloads/MMDVMBM.ini`
buscar=":"
largo_linea=`expr index $var $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea_url=`expr substr $var 1 $largo_linea`
Uvar=`grep -n -m 1 '\<URL\>' ~/MMDVMHost/MMDVMBM.ini`
Ubuscar=":"
Ulargo_linea=`expr index $Uvar $buscar`
Ulargo_linea=`expr $Ulargo_linea - 1`
Unumero_linea_url=`expr substr $Uvar 1 $largo_linea`
Uletra=c
Ulinea_sed=$Unumero_linea_url$Uletra
sed -i "$Ulinea_sed $var1" ~/MMDVMHost/MMDVMBM.ini

#Baliza 
var1=`grep -n -m 1 "\[CW Id\]" ~/Downloads/MMDVMBM.ini`
var2=`echo "$var1" | tr -d '[[:space:]]'`
buscar=":"
largo_linea=`expr index $var2 $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea=`expr substr $var2 1 $largo_linea`
numero_linea=`expr $numero_linea + 1`
CWvar1=`grep -n -m 1 "\[CW Id\]" ~/MMDVMHost/MMDVMBM.ini`
CWvar2=`echo "$CWvar1" | tr -d '[[:space:]]'`
buscar=":"
CWlargo_linea=`expr index $CWvar2 $buscar`
CWlargo_linea=`expr $CWlargo_linea - 1`
CWnumero_linea=`expr substr $CWvar2 1 $CWlargo_linea`
CWnumero_linea=`expr $CWnumero_linea + 1`
CWCW=$(awk "NR==$CWnumero_linea" ~/Downloads/MMDVMBM.ini)
CWletra=c
CWlinea_sed=$CWnumero_linea$CWletra
sed -i "$CWlinea_sed $CWCW" ~/MMDVMHost/MMDVMBM.ini

#RXLevel
var=`grep -n -m 1 '\<RXLevel\>' ~/Downloads/MMDVMBM.ini`
var1=`grep -m 1 '\<RXLevel\>' ~/Downloads/MMDVMBM.ini`
buscar=":"
largo_linea=`expr index $var $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea=`expr substr $var 1 $largo_linea`
RLvar=`grep -n -m 1 '\<RXLevel\>' ~/MMDVMHost/MMDVMBM.ini`
buscar=":"
RLlargo_linea=`expr index $RLvar $buscar`
RLlargo_linea=`expr $RLlargo_linea - 1`
RLnumero_linea=`expr substr $RLvar 1 $RLlargo_linea`
RLletra=c
RLlinea_sed=$RLnumero_linea$RLletra
sed -i "$RLlinea_sed $var1" ~/MMDVMHost/MMDVMBM.ini

#TXLevel
var=`grep -n -m 1 '\<TXLevel\>' ~/Downloads/MMDVMBM.ini`
var1=`grep -m 1 '\<TXLevel\>' ~/Downloads/MMDVMBM.ini`
buscar=":"
largo_linea=`expr index $var $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea=`expr substr $var 1 $largo_linea`
TLvar=`grep -n -m 1 '\<TXLevel\>' ~/MMDVMHost/MMDVMBM.ini`
buscar=":"
TLlargo_linea=`expr index $TLvar $buscar`
TLlargo_linea=`expr $TLlargo_linea - 1`
TLnumero_linea=`expr substr $TLvar 1 $TLlargo_linea`
TLletra=c
TLlinea_sed=$TLnumero_linea$TLletra
sed -i "$TLlinea_sed $var1" ~/MMDVMHost/MMDVMBM.ini

#Module
var=`grep -n -m 1 '\<Module\>' ~/Downloads/MMDVMBM.ini`
var1=`grep -m 1 '\<Module\>' ~/Downloads/MMDVMBM.ini`
buscar=":"
largo_linea=`expr index $var $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea=`expr substr $var 1 $largo_linea`
MOvar=`grep -n -m 1 '\<Module\>' ~/MMDVMHost/MMDVMBM.ini`
buscar=":"
MOlargo_linea=`expr index $MOvar $buscar`
MOlargo_linea=`expr $MOlargo_linea - 1`
MOnumero_linea=`expr substr $MOvar 1 $MOlargo_linea`
MOletra=c
MOlinea_sed=$MOnumero_linea$MOletra
sed -i "$MOlinea_sed $var1" ~/MMDVMHost/MMDVMBM.ini

#Txinvert
var=`grep -n -m 1 '\<TXInvert\>' ~/Downloads/MMDVMBM.ini`
var1=`grep -m 1 '\<TXInvert\>' ~/Downloads/MMDVMBM.ini`
buscar=":"
largo_linea=`expr index $var $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea=`expr substr $var 1 $largo_linea`
TIvar=`grep -n -m 1 '\<TXInvert\>' ~/MMDVMHost/MMDVMBM.ini`
buscar=":"
TIlargo_linea=`expr index $TIvar $buscar`
TIlargo_linea=`expr $TIlargo_linea - 1`
TInumero_linea=`expr substr $TIvar 1 $TIlargo_linea`
TIletra=c
TIlinea_sed=$TInumero_linea$TIletra
sed -i "$TIlinea_sed $var1" ~/MMDVMHost/MMDVMBM.ini

#Modem capturado de la linea txinvert -1
numero_linea_MODEM=`expr $numero_linea - 1` # Downloads
MOnumero_linea_MODEM=`expr $TInumero_linea - 1` # MMDVMHost
modem=$(awk "NR==$numero_linea_MODEM" ~/Downloads/MMDVMBM.ini)
TIletra=c
TIlinea_sed=$MOnumero_linea_MODEM$TIletra
sed -i "$TIlinea_sed $modem" ~/MMDVMHost/MMDVMBM.ini

#Address
var=`grep -n -m 1 '\<Address\>' ~/Downloads/MMDVMBM.ini`
var1=`grep -m 1 '\<Address\>' ~/Downloads/MMDVMBM.ini`
buscar=":"
largo_linea=`expr index $var $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea_Address=`expr substr $var 1 $largo_linea`
ADvar=`grep -n -m 1 '\<Address\>' ~/MMDVMHost/MMDVMBM.ini`
buscar=":"
ADlargo_linea=`expr index $ADvar $buscar`
ADlargo_linea=`expr $ADlargo_linea - 1`
ADnumero_linea_Address=`expr substr $ADvar 1 $ADlargo_linea`
ADletra=c
ADlinea_sed=$ADnumero_linea_Address$ADletra
sed -i "$ADlinea_sed $var1" ~/MMDVMHost/MMDVMBM.ini

#Port captura de la linea Address +1
numero_linea_Address=`expr $numero_linea_Address + 1` # Downloads
ADnumero_linea_Address=`expr $ADnumero_linea_Address + 1` # MMDVMHost
port=$(awk "NR==$numero_linea_Address" ~/Downloads/MMDVMBM.ini)
ADletra=c
ADlinea_sed=$ADnumero_linea_Address$ADletra
sed -i "$ADlinea_sed $port" ~/MMDVMHost/MMDVMBM.ini

#Password
var=`grep -n -m 1 '\<Password\>' ~/Downloads/MMDVMBM.ini`
var1=`grep -m 1 '\<Password\>' ~/Downloads/MMDVMBM.ini`
buscar=":"
largo_linea=`expr index $var $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea_password=`expr substr $var 1 $largo_linea`
PWvar=`grep -n -m 1 '\<Password\>' ~/MMDVMHost/MMDVMBM.ini`
buscar=":"
PWlargo_linea=`expr index $PWvar $buscar`
PWlargo_linea=`expr $PWlargo_linea - 1`
PWnumero_linea_password=`expr substr $PWvar 1 $PWlargo_linea`
PWletra=c
PWlinea_sed=$PWnumero_linea_password$PWletra
sed -i "$PWlinea_sed $var1" ~/MMDVMHost/MMDVMBM.ini

#Options linea password  +1
numero_linea_password=`expr $numero_linea_password + 1` # Downloads
PWnumero_linea_password=`expr $PWnumero_linea_password + 1` # MMDVMHost
option=$(awk "NR==$numero_linea_password" ~/Downloads/MMDVMBM.ini)
PWletra=c
PWlinea_sed=$PWnumero_linea_password$PWletra
sed -i "$PWlinea_sed $option" ~/MMDVMHost/MMDVMBM.ini

#ScreenLayout
var=`grep -n -m 1 '\<ScreenLayout\>' ~/Downloads/MMDVMBM.ini`
var1=`grep -m 1 '\<ScreenLayout\>' ~/Downloads/MMDVMBM.ini`
buscar=":"
largo_linea=`expr index $var $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea=`expr substr $var 1 $largo_linea`
SCvar=`grep -n -m 1 '\<ScreenLayout\>' ~/MMDVMHost/MMDVMBM.ini`
buscar=":"
SClargo_linea=`expr index $SCvar $buscar`
SClargo_linea=`expr $SClargo_linea - 1`
SCnumero_linea=`expr substr $SCvar 1 $SClargo_linea`
SCletra=c
SClinea_sed=$SCnumero_linea$SCletra
sed -i "$SClinea_sed $var1" ~/MMDVMHost/MMDVMBM.ini

#Brightness
var=`grep -n -m 1 '\<Brightness\>' ~/Downloads/MMDVMBM.ini`
var1=`grep -m 1 '\<Brightness\>' ~/Downloads/MMDVMBM.ini`
buscar=":"
largo_linea=`expr index $var $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea=`expr substr $var 1 $largo_linea`
BRvar=`grep -n -m 1 '\<Brightness\>' ~/MMDVMHost/MMDVMBM.ini`
buscar=":"
BRlargo_linea=`expr index $BRvar $buscar`
BRlargo_linea=`expr $BRlargo_linea - 1`
BRnumero_linea=`expr substr $BRvar 1 $BRlargo_linea`
BRletra=c
BRlinea_sed=$BRnumero_linea$BRletra
sed -i "$BRlinea_sed $var1" ~/MMDVMHost/MMDVMBM.ini

#Slot1
var=`grep -n -m 1 '\<Slot1\>' ~/Downloads/MMDVMBM.ini`
var1=`grep -m 1 '\<Slot1\>' ~/Downloads/MMDVMBM.ini`
buscar=":"
largo_linea=`expr index $var $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea=`expr substr $var 1 $largo_linea`
SLvar=`grep -n -m 1 '\<Slot1\>' ~/MMDVMHost/MMDVMBM.ini`
buscar=":"
SLlargo_linea=`expr index $SLvar $buscar`
SLlargo_linea=`expr $SLlargo_linea - 1`
SLnumero_linea=`expr substr $SLvar 1 $SLlargo_linea`
SLletra=c
SLlinea_sed=$SLnumero_linea$SLletra
sed -i "$SLlinea_sed $var1" ~/MMDVMHost/MMDVMBM.ini

#DisplayLevel
var=`grep -n -m 1 '\<DisplayLevel\>' ~/Downloads/MMDVMBM.ini`
var1=`grep -m 1 '\<DisplayLevel\>' ~/Downloads/MMDVMBM.ini`
buscar=":"
largo_linea=`expr index $var $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea=`expr substr $var 1 $largo_linea`
DIvar=`grep -n -m 1 '\<DisplayLevel\>' ~/MMDVMHost/MMDVMBM.ini`
buscar=":"
DIlargo_linea=`expr index $DIvar $buscar`
DIlargo_linea=`expr $DIlargo_linea - 1`
DInumero_linea=`expr substr $DIvar 1 $DIlargo_linea`
DIletra=c
DIlinea_sed=$DInumero_linea$DIletra
sed -i "$DIlinea_sed $var1" ~/MMDVMHost/MMDVMBM.ini

#TXHang
var=`grep -n -m 1 '\<TXHang\>' ~/Downloads/MMDVMBM.ini`
var1=`grep -m 1 '\<TXHang\>' ~/Downloads/MMDVMBM.ini`
buscar=":"
largo_linea=`expr index $var $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea=`expr substr $var 1 $largo_linea`
THvar=`grep -n -m 1 '\<TXHang\>' ~/MMDVMHost/MMDVMBM.ini`
buscar=":"
THlargo_linea=`expr index $THvar $buscar`
THlargo_linea=`expr $THlargo_linea - 1`
THnumero_linea=`expr substr $THvar 1 $THlargo_linea`
THletra=c
THlinea_sed=$THnumero_linea$THletra
sed -i "$THlinea_sed $var1" ~/MMDVMHost/MMDVMBM.ini

#D-Star
var=`grep -n -m 1 "\[D-Star\]" ~/Downloads/MMDVMBM.ini` 
var1=`grep -m 1 "\[D-Star\]" ~/Downloads/MMDVMBM.ini`
buscar=":"
largo_linea=`expr index $var $buscar` 
largo_linea=`expr $largo_linea - 1` 
numero_linea=`expr substr $var 1 $largo_linea` 
numero_linea_dstar=`expr $numero_linea + 1` 
DSvar=`grep -n -m 1 "\[D-Star\]" ~/MMDVMHost/MMDVMBM.ini` 
DSvar1=`grep -m 1 "\[D-Star\]" ~/MMDVMHost/MMDVMBM.ini`
buscar=":"
DSlargo_linea=`expr index $DSvar $buscar` 
DSlargo_linea=`expr $DSlargo_linea - 1` 
DSnumero_linea=`expr substr $DSvar 1 $DSlargo_linea` 
DSnumero_linea_dstar=`expr $DSnumero_linea + 1`
DSDS=$(awk "NR==$numero_linea_dstar" ~/Downloads/MMDVMBM.ini) 
DSletrac=c
DSlinea_sed=$DSnumero_linea_dstar$DSletrac
sed -i "$DSlinea_sed $DSDS" ~/MMDVMHost/MMDVMBM.ini

#DMR
var=`grep -n -m 1 "\[DMR\]" ~/Downloads/MMDVMBM.ini` 
var1=`grep -m 1 "\[DMR\]" ~/Downloads/MMDVMBM.ini`
buscar=":"
largo_linea=`expr index $var $buscar` 
largo_linea=`expr $largo_linea - 1` 
numero_linea=`expr substr $var 1 $largo_linea` 
numero_linea_dmr=`expr $numero_linea + 1` 
DMvar=`grep -n "\[DMR\]" ~/MMDVMHost/MMDVMBM.ini` 
DMvar1=`grep -n -m 1 "\[DMR\]" ~/MMDVMHost/MMDVMBM.ini`
buscar=":"
DMlargo_linea=`expr index $DMvar $buscar` 
DMlargo_linea=`expr $DMlargo_linea - 1` 
DMnumero_linea=`expr substr $DMvar 1 $DMlargo_linea` 
DMnumero_linea_dmr=`expr $DMnumero_linea + 1` 
DMDM=$(awk "NR==$numero_linea_dmr" ~/Downloads/MMDVMBM.ini)
DMletrac=c
DMlinea_sed=$DMnumero_linea_dmr$DMletrac 
sed -i "$DMlinea_sed $DMDM" ~/MMDVMHost/MMDVMBM.ini

#P25
var=`grep -n -m 1 "\[P25\]" ~/Downloads/MMDVMBM.ini` 
var1=`grep -m 1 "\[P25\]" ~/Downloads/MMDVMBM.ini`
buscar=":"
largo_linea=`expr index $var $buscar` 
largo_linea=`expr $largo_linea - 1` 
numero_linea=`expr substr $var 1 $largo_linea` 
numero_linea_p25=`expr $numero_linea + 1` 
P2var=`grep -n -m 1 "\[P25\]" ~/MMDVMHost/MMDVMBM.ini` 
P2var1=`grep -n "\[P25\]" ~/MMDVMHost/MMDVMBM.ini`
buscar=":"
P2largo_linea=`expr index $P2var $buscar` 
P2largo_linea=`expr $P2largo_linea - 1` 
P2numero_linea=`expr substr $P2var 1 $P2largo_linea` 
P2numero_linea_p25=`expr $P2numero_linea + 1` 
P2P2=$(awk "NR==$numero_linea_p25" ~/Downloads/MMDVMBM.ini)
P2letrac=c
P2linea_sed=$P2numero_linea_p25$P2letrac
sed -i "$P2linea_sed $P2P2" ~/MMDVMHost/MMDVMBM.ini

#NXDN
var=`grep -n -m 1 "\[NXDN\]" ~/Downloads/MMDVMBM.ini` 
var1=`grep -m 1 "\[NXDN\]" ~/Downloads/MMDVMBM.ini`
buscar=":"
largo_linea=`expr index $var $buscar` 
largo_linea=`expr $largo_linea - 1` 
numero_linea=`expr substr $var 1 $largo_linea` 
numero_linea_p25=`expr $numero_linea + 1`
P2P2=$(awk "NR==$numero_linea_p25" ~/Downloads/MMDVMBM.ini)
P2var=`grep -n -m 1 "\[NXDN\]" ~/MMDVMHost/MMDVMBM.ini` 
P2var1=`grep -n "\[NXDN\]" ~/MMDVMHost/MMDVMBM.ini`
buscar=":"
P2largo_linea=`expr index $P2var $buscar` 
P2largo_linea=`expr $P2largo_linea - 1` 
P2numero_linea=`expr substr $P2var 1 $P2largo_linea` 
P2numero_linea_p25=`expr $P2numero_linea + 1` 
P2letrac=c
P2linea_sed=$P2numero_linea_p25$P2letrac
sed -i "$P2linea_sed $P2P2" ~/MMDVMHost/MMDVMBM.ini

#FUSION
var1=`grep -n -m 1 "\[System Fusion\]" ~/Downloads/MMDVMBM.ini`
var2=`echo "$var1" | tr -d '[[:space:]]'`
buscar=":"
largo_linea=`expr index $var2 $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea=`expr substr $var2 1 $largo_linea`
numero_linea=`expr $numero_linea + 1`
CWvar1=`grep -n -m 1 "\[System Fusion\]" ~/MMDVMHost/MMDVMBM.ini`
CWvar2=`echo "$CWvar1" | tr -d '[[:space:]]'`
buscar=":"
CWlargo_linea=`expr index $CWvar2 $buscar`
CWlargo_linea=`expr $CWlargo_linea - 1`
CWnumero_linea=`expr substr $CWvar2 1 $CWlargo_linea`
CWnumero_linea=`expr $CWnumero_linea + 1`
CWCW=$(awk "NR==$CWnumero_linea" ~/Downloads/MMDVMBM.ini)
CWletra=c
CWlinea_sed=$CWnumero_linea$CWletra
sed -i "$CWlinea_sed $CWCW" ~/MMDVMHost/MMDVMBM.ini

#Nextion
var=`grep -n -m 1 "\[Nextion\]" ~/Downloads/MMDVMBM.ini` 
var1=`grep -m 1 "\[Nextion\]" ~/Downloads/MMDVMBM.ini`
buscar=":"
largo_linea=`expr index $var $buscar` 
largo_linea=`expr $largo_linea - 1` 
numero_linea=`expr substr $var 1 $largo_linea` 
numero_linea_p25=`expr $numero_linea + 2` 
P2var=`grep -n -m 1 "\[Nextion\]" ~/MMDVMHost/MMDVMBM.ini` 
P2var1=`grep -n "\[Nextion\]" ~/MMDVMHost/MMDVMBM.ini`
buscar=":"
P2largo_linea=`expr index $P2var $buscar` 
P2largo_linea=`expr $P2largo_linea - 1` 
P2numero_linea=`expr substr $P2var 1 $P2largo_linea` 
P2numero_linea_p25=`expr $P2numero_linea + 2` 
P2P2=$(awk "NR==$numero_linea_p25" ~/Downloads/MMDVMBM.ini)
P2letrac=c
P2linea_sed=$P2numero_linea_p25$P2letrac
sed -i "$P2linea_sed $P2P2" ~/MMDVMHost/MMDVMBM.ini

#======================= MMDVMBM.ini_copia   ============================

# Callsign 
var=`grep -n -m 1 '\<Callsign\>' ~/Downloads/MMDVMBM.ini_copia` # 2:Callsign=EA3EIZ
var1=`grep -m 1 '\<Callsign\>' ~/Downloads/MMDVMBM.ini_copia` # Callsign=EA3EIZ
buscar=":"
largo_linea=`expr index $var $buscar` #comprueba el largo incluyendo los dos puntos (:)
largo_linea=`expr $largo_linea - 1` #comprueba el largo quitando los dos puntos (:)
numero_linea=`expr substr $var 1 $largo_linea` # recoge numero linea Downloads
Hvar=`grep -n -m 1 '\<Callsign\>' ~/MMDVMHost/MMDVMBM.ini_copia` # 2:Callsign=EA3EIZ
buscar=":"
Hlargo_linea=`expr index $Hvar $buscar` 
Hlargo_linea=`expr $Hlargo_linea - 1` 
Hnumero_linea=`expr substr $Hvar 1 $Hlargo_linea` # recoge numero linea MMDXVMHost
Hletra=c
Hlinea_sed=$Hnumero_linea$Hletra
sed -i "$Hlinea_sed $var1" ~/MMDVMHost/MMDVMBM.ini_copia

#Id capturado de la linea 3
Id=$(awk "NR==3" ~/Downloads/MMDVMBM.ini_copia)
sed -i "3c $Id" ~/MMDVMHost/MMDVMBM.ini_copia

#Timeout capturado de la linea 4
timeou=$(awk "NR==4" ~/Downloads/MMDVMBM.ini_copia)
sed -i "4c $timeou" ~/MMDVMHost/MMDVMBM.ini_copia

#Duplex
var=`grep -n -m 1 '\<Duplex\>' ~/Downloads/MMDVMBM.ini_copia`
var1=`grep -m 1 '\<Duplex\>' ~/Downloads/MMDVMBM.ini_copia`
buscar=":"
largo_linea=`expr index $var $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea=`expr substr $var 1 $largo_linea`
Dvar=`grep -n -m 1 '\<Duplex\>' ~/MMDVMHost/MMDVMBM.ini_copia`
buscar=":"
Dlargo_linea=`expr index $Dvar $buscar`
Dlargo_linea=`expr $Dlargo_linea - 1`
Dnumero_linea=`expr substr $Dvar 1 $Dlargo_linea`
Dletra=c
Dlinea_sed=$Dnumero_linea$Dletra
sed -i "$Dlinea_sed $var1" ~/MMDVMHost/MMDVMBM.ini_copia

#RFModeHang
var=`grep -n -m 1 '\<RFModeHang\>' ~/Downloads/MMDVMBM.ini_copia`
var1=`grep -m 1 '\<RFModeHang\>' ~/Downloads/MMDVMBM.ini_copia`
buscar=":"
largo_linea=`expr index $var $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea=`expr substr $var 1 $largo_linea`
Rvar=`grep -n -m 1 '\<RFModeHang\>' ~/MMDVMHost/MMDVMBM.ini_copia`
buscar=":"
Rlargo_linea=`expr index $Rvar $buscar`
Rlargo_linea=`expr $Rlargo_linea - 1`
Rnumero_linea=`expr substr $Rvar 1 $Rlargo_linea`
Rletra=c
Rlinea_sed=$Rnumero_linea$Rletra
sed -i "$Rlinea_sed $var1" ~/MMDVMHost/MMDVMBM.ini_copia

#Display
var=`grep -n -m 1 '\<Display\>' ~/Downloads/MMDVMBM.ini_copia`
var1=`grep -m 1 '\<Display\>' ~/Downloads/MMDVMBM.ini_copia`
buscar=":"
largo_linea=`expr index $var $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea=`expr substr $var 1 $largo_linea`
Dvar=`grep -n -m 1 '\<Display\>' ~/MMDVMHost/MMDVMBM.ini_copia`
buscar=":"
Dlargo_linea=`expr index $Dvar $buscar`
Dlargo_linea=`expr $Dlargo_linea - 1`
Dnumero_linea=`expr substr $Dvar 1 $Dlargo_linea`
Dletra=c
Dlinea_sed=$Dnumero_linea$Dletra
sed -i "$Dlinea_sed $var1" ~/MMDVMHost/MMDVMBM.ini_copia

#RXFrequency
var=`grep -n -m 1 '\<RXFrequency\>' ~/Downloads/MMDVMBM.ini_copia`
var1=`grep -m 1 '\<RXFrequency\>' ~/Downloads/MMDVMBM.ini_copia`
buscar=":"
largo_linea=`expr index $var $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea=`expr substr $var 1 $largo_linea`
Xvar=`grep -n -m 1 '\<RXFrequency\>' ~/MMDVMHost/MMDVMBM.ini_copia`
buscar=":"
Xlargo_linea=`expr index $Xvar $buscar`
Xlargo_linea=`expr $Xlargo_linea - 1`
Xnumero_linea=`expr substr $Xvar 1 $Xlargo_linea`
Xletra=c
Xlinea_sed=$Xnumero_linea$Xletra
sed -i "$Xlinea_sed $var1" ~/MMDVMHost/MMDVMBM.ini_copia

#TXFrequency
var=`grep -n -m 1 '\<TXFrequency\>' ~/Downloads/MMDVMBM.ini_copia`
var1=`grep -m 1 '\<TXFrequency\>' ~/Downloads/MMDVMBM.ini_copia`
buscar=":"
largo_linea=`expr index $var $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea=`expr substr $var 1 $largo_linea`
Tvar=`grep -n -m 1 '\<TXFrequency\>' ~/MMDVMHost/MMDVMBM.ini_copia`
buscar=":"
Tlargo_linea=`expr index $Tvar $buscar`
Tlargo_linea=`expr $Tlargo_linea - 1`
Tnumero_linea=`expr substr $Tvar 1 $Tlargo_linea`
Tletra=c
Tlinea_sed=$Tnumero_linea$Tletra
sed -i "$Tlinea_sed $var1" ~/MMDVMHost/MMDVMBM.ini_copia

#Latitude
var=`grep -n -m 1 '\<Latitude\>' ~/Downloads/MMDVMBM.ini_copia`
var1=`grep -m 1 '\<Latitude\>' ~/Downloads/MMDVMBM.ini_copia`
buscar=":"
largo_linea=`expr index $var $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea=`expr substr $var 1 $largo_linea`
Lvar=`grep -n -m 1 '\<Latitude\>' ~/MMDVMHost/MMDVMBM.ini_copia`
buscar=":"
Llargo_linea=`expr index $Lvar $buscar`
Llargo_linea=`expr $Llargo_linea - 1`
Lnumero_linea=`expr substr $Lvar 1 $Llargo_linea`
Lletra=c
Llinea_sed=$Lnumero_linea$Lletra
sed -i "$Llinea_sed $var1" ~/MMDVMHost/MMDVMBM.ini_copia

#Longitude
var=`grep -n -m 1 '\<Longitude\>' ~/Downloads/MMDVMBM.ini_copia`
var1=`grep -m 1 '\<Longitude\>' ~/Downloads/MMDVMBM.ini_copia`
buscar=":"
largo_linea=`expr index $var $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea=`expr substr $var 1 $largo_linea`
LGvar=`grep -n -m 1 '\<Longitude\>' ~/MMDVMHost/MMDVMBM.ini_copia`
buscar=":"
LGlargo_linea=`expr index $LGvar $buscar`
LGlargo_linea=`expr $LGlargo_linea - 1`
LGnumero_linea=`expr substr $LGvar 1 $LGlargo_linea`
LGletra=c
LGlinea_sed=$LGnumero_linea$LGletra
sed -i "$LGlinea_sed $var1" ~/MMDVMHost/MMDVMBM.ini_copia

#Location
var=`grep -n -m 1 '\<Location\>' ~/Downloads/MMDVMBM.ini_copia`
var1=`grep -m 1 '\<Location\>' ~/Downloads/MMDVMBM.ini_copia`
buscar=":"
largo_linea=`expr index $var $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea=`expr substr $var 1 $largo_linea`
LOvar=`grep -n -m 1 '\<Location\>' ~/MMDVMHost/MMDVMBM.ini_copia`
buscar=":"
LOlargo_linea=`expr index $LOvar $buscar`
LOlargo_linea=`expr $LOlargo_linea - 1`
LOnumero_linea=`expr substr $LOvar 1 $LOlargo_linea`
LOletra=c
LOlinea_sed=$LOnumero_linea$LOletra
sed -i "$LOlinea_sed $var1" ~/MMDVMHost/MMDVMBM.ini_copia

#URL
var=`grep -n -m 1 '\<URL\>' ~/Downloads/MMDVMBM.ini_copia`
var1=`grep -m 1 '\<URL\>' ~/Downloads/MMDVMBM.ini_copia`
buscar=":"
largo_linea=`expr index $var $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea_url=`expr substr $var 1 $largo_linea`
Uvar=`grep -n -m 1 '\<URL\>' ~/MMDVMHost/MMDVMBM.ini_copia`
Ubuscar=":"
Ulargo_linea=`expr index $Uvar $buscar`
Ulargo_linea=`expr $Ulargo_linea - 1`
Unumero_linea_url=`expr substr $Uvar 1 $largo_linea`
Uletra=c
Ulinea_sed=$Unumero_linea_url$Uletra
sed -i "$Ulinea_sed $var1" ~/MMDVMHost/MMDVMBM.ini_copia

#Baliza 
var1=`grep -n -m 1 "\[CW Id\]" ~/Downloads/MMDVMBM.ini_copia`
var2=`echo "$var1" | tr -d '[[:space:]]'`
buscar=":"
largo_linea=`expr index $var2 $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea=`expr substr $var2 1 $largo_linea`
numero_linea=`expr $numero_linea + 1`
CWvar1=`grep -n -m 1 "\[CW Id\]" ~/MMDVMHost/MMDVMBM.ini_copia`
CWvar2=`echo "$CWvar1" | tr -d '[[:space:]]'`
buscar=":"
CWlargo_linea=`expr index $CWvar2 $buscar`
CWlargo_linea=`expr $CWlargo_linea - 1`
CWnumero_linea=`expr substr $CWvar2 1 $CWlargo_linea`
CWnumero_linea=`expr $CWnumero_linea + 1`
CWCW=$(awk "NR==$CWnumero_linea" ~/Downloads/MMDVMBM.ini_copia)
CWletra=c
CWlinea_sed=$CWnumero_linea$CWletra
sed -i "$CWlinea_sed $CWCW" ~/MMDVMHost/MMDVMBM.ini_copia

#RXLevel
var=`grep -n -m 1 '\<RXLevel\>' ~/Downloads/MMDVMBM.ini_copia`
var1=`grep -m 1 '\<RXLevel\>' ~/Downloads/MMDVMBM.ini_copia`
buscar=":"
largo_linea=`expr index $var $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea=`expr substr $var 1 $largo_linea`
RLvar=`grep -n -m 1 '\<RXLevel\>' ~/MMDVMHost/MMDVMBM.ini_copia`
buscar=":"
RLlargo_linea=`expr index $RLvar $buscar`
RLlargo_linea=`expr $RLlargo_linea - 1`
RLnumero_linea=`expr substr $RLvar 1 $RLlargo_linea`
RLletra=c
RLlinea_sed=$RLnumero_linea$RLletra
sed -i "$RLlinea_sed $var1" ~/MMDVMHost/MMDVMBM.ini_copia

#TXLevel
var=`grep -n -m 1 '\<TXLevel\>' ~/Downloads/MMDVMBM.ini_copia`
var1=`grep -m 1 '\<TXLevel\>' ~/Downloads/MMDVMBM.ini_copia`
buscar=":"
largo_linea=`expr index $var $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea=`expr substr $var 1 $largo_linea`
TLvar=`grep -n -m 1 '\<TXLevel\>' ~/MMDVMHost/MMDVMBM.ini_copia`
buscar=":"
TLlargo_linea=`expr index $TLvar $buscar`
TLlargo_linea=`expr $TLlargo_linea - 1`
TLnumero_linea=`expr substr $TLvar 1 $TLlargo_linea`
TLletra=c
TLlinea_sed=$TLnumero_linea$TLletra
sed -i "$TLlinea_sed $var1" ~/MMDVMHost/MMDVMBM.ini_copia

#Module
var=`grep -n -m 1 '\<Module\>' ~/Downloads/MMDVMBM.ini_copia`
var1=`grep -m 1 '\<Module\>' ~/Downloads/MMDVMBM.ini_copia`
buscar=":"
largo_linea=`expr index $var $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea=`expr substr $var 1 $largo_linea`
MOvar=`grep -n -m 1 '\<Module\>' ~/MMDVMHost/MMDVMBM.ini_copia`
buscar=":"
MOlargo_linea=`expr index $MOvar $buscar`
MOlargo_linea=`expr $MOlargo_linea - 1`
MOnumero_linea=`expr substr $MOvar 1 $MOlargo_linea`
MOletra=c
MOlinea_sed=$MOnumero_linea$MOletra
sed -i "$MOlinea_sed $var1" ~/MMDVMHost/MMDVMBM.ini_copia

#Txinvert
var=`grep -n -m 1 '\<TXInvert\>' ~/Downloads/MMDVMBM.ini_copia`
var1=`grep -m 1 '\<TXInvert\>' ~/Downloads/MMDVMBM.ini_copia`
buscar=":"
largo_linea=`expr index $var $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea=`expr substr $var 1 $largo_linea`
TIvar=`grep -n -m 1 '\<TXInvert\>' ~/MMDVMHost/MMDVMBM.ini_copia`
buscar=":"
TIlargo_linea=`expr index $TIvar $buscar`
TIlargo_linea=`expr $TIlargo_linea - 1`
TInumero_linea=`expr substr $TIvar 1 $TIlargo_linea`
TIletra=c
TIlinea_sed=$TInumero_linea$TIletra
sed -i "$TIlinea_sed $var1" ~/MMDVMHost/MMDVMBM.ini_copia

#Modem capturado de la linea txinvert -1
numero_linea_MODEM=`expr $numero_linea - 1` # Downloads
MOnumero_linea_MODEM=`expr $TInumero_linea - 1` # MMDVMHost
modem=$(awk "NR==$numero_linea_MODEM" ~/Downloads/MMDVMBM.ini_copia)
TIletra=c
TIlinea_sed=$MOnumero_linea_MODEM$TIletra
sed -i "$TIlinea_sed $modem" ~/MMDVMHost/MMDVMBM.ini_copia

#Address
var=`grep -n -m 1 '\<Address\>' ~/Downloads/MMDVMBM.ini_copia`
var1=`grep -m 1 '\<Address\>' ~/Downloads/MMDVMBM.ini_copia`
buscar=":"
largo_linea=`expr index $var $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea_Address=`expr substr $var 1 $largo_linea`
ADvar=`grep -n -m 1 '\<Address\>' ~/MMDVMHost/MMDVMBM.ini_copia`
buscar=":"
ADlargo_linea=`expr index $ADvar $buscar`
ADlargo_linea=`expr $ADlargo_linea - 1`
ADnumero_linea_Address=`expr substr $ADvar 1 $ADlargo_linea`
ADletra=c
ADlinea_sed=$ADnumero_linea_Address$ADletra
sed -i "$ADlinea_sed $var1" ~/MMDVMHost/MMDVMBM.ini_copia

#Port captura de la linea Address +1
numero_linea_Address=`expr $numero_linea_Address + 1` # Downloads
ADnumero_linea_Address=`expr $ADnumero_linea_Address + 1` # MMDVMHost
port=$(awk "NR==$numero_linea_Address" ~/Downloads/MMDVMBM.ini_copia)
ADletra=c
ADlinea_sed=$ADnumero_linea_Address$ADletra
sed -i "$ADlinea_sed $port" ~/MMDVMHost/MMDVMBM.ini_copia

#Password
var=`grep -n -m 1 '\<Password\>' ~/Downloads/MMDVMBM.ini_copia`
var1=`grep -m 1 '\<Password\>' ~/Downloads/MMDVMBM.ini_copia`
buscar=":"
largo_linea=`expr index $var $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea_password=`expr substr $var 1 $largo_linea`
PWvar=`grep -n -m 1 '\<Password\>' ~/MMDVMHost/MMDVMBM.ini_copia`
buscar=":"
PWlargo_linea=`expr index $PWvar $buscar`
PWlargo_linea=`expr $PWlargo_linea - 1`
PWnumero_linea_password=`expr substr $PWvar 1 $PWlargo_linea`
PWletra=c
PWlinea_sed=$PWnumero_linea_password$PWletra
sed -i "$PWlinea_sed $var1" ~/MMDVMHost/MMDVMBM.ini_copia

#Options linea password  +1
numero_linea_password=`expr $numero_linea_password + 1` # Downloads
PWnumero_linea_password=`expr $PWnumero_linea_password + 1` # MMDVMHost
option=$(awk "NR==$numero_linea_password" ~/Downloads/MMDVMBM.ini_copia)
PWletra=c
PWlinea_sed=$PWnumero_linea_password$PWletra
sed -i "$PWlinea_sed $option" ~/MMDVMHost/MMDVMBM.ini_copia

#ScreenLayout
var=`grep -n -m 1 '\<ScreenLayout\>' ~/Downloads/MMDVMBM.ini_copia`
var1=`grep -m 1 '\<ScreenLayout\>' ~/Downloads/MMDVMBM.ini_copia`
buscar=":"
largo_linea=`expr index $var $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea=`expr substr $var 1 $largo_linea`
SCvar=`grep -n -m 1 '\<ScreenLayout\>' ~/MMDVMHost/MMDVMBM.ini_copia`
buscar=":"
SClargo_linea=`expr index $SCvar $buscar`
SClargo_linea=`expr $SClargo_linea - 1`
SCnumero_linea=`expr substr $SCvar 1 $SClargo_linea`
SCletra=c
SClinea_sed=$SCnumero_linea$SCletra
sed -i "$SClinea_sed $var1" ~/MMDVMHost/MMDVMBM.ini_copia

#Brightness
var=`grep -n -m 1 '\<Brightness\>' ~/Downloads/MMDVMBM.ini_copia`
var1=`grep -m 1 '\<Brightness\>' ~/Downloads/MMDVMBM.ini_copia`
buscar=":"
largo_linea=`expr index $var $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea=`expr substr $var 1 $largo_linea`
BRvar=`grep -n -m 1 '\<Brightness\>' ~/MMDVMHost/MMDVMBM.ini_copia`
buscar=":"
BRlargo_linea=`expr index $BRvar $buscar`
BRlargo_linea=`expr $BRlargo_linea - 1`
BRnumero_linea=`expr substr $BRvar 1 $BRlargo_linea`
BRletra=c
BRlinea_sed=$BRnumero_linea$BRletra
sed -i "$BRlinea_sed $var1" ~/MMDVMHost/MMDVMBM.ini_copia

#Slot1
var=`grep -n -m 1 '\<Slot1\>' ~/Downloads/MMDVMBM.ini_copia`
var1=`grep -m 1 '\<Slot1\>' ~/Downloads/MMDVMBM.ini_copia`
buscar=":"
largo_linea=`expr index $var $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea=`expr substr $var 1 $largo_linea`
SLvar=`grep -n -m 1 '\<Slot1\>' ~/MMDVMHost/MMDVMBM.ini_copia`
buscar=":"
SLlargo_linea=`expr index $SLvar $buscar`
SLlargo_linea=`expr $SLlargo_linea - 1`
SLnumero_linea=`expr substr $SLvar 1 $SLlargo_linea`
SLletra=c
SLlinea_sed=$SLnumero_linea$SLletra
sed -i "$SLlinea_sed $var1" ~/MMDVMHost/MMDVMBM.ini_copia

#DisplayLevel
var=`grep -n -m 1 '\<DisplayLevel\>' ~/Downloads/MMDVMBM.ini_copia`
var1=`grep -m 1 '\<DisplayLevel\>' ~/Downloads/MMDVMBM.ini_copia`
buscar=":"
largo_linea=`expr index $var $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea=`expr substr $var 1 $largo_linea`
DIvar=`grep -n -m 1 '\<DisplayLevel\>' ~/MMDVMHost/MMDVMBM.ini_copia`
buscar=":"
DIlargo_linea=`expr index $DIvar $buscar`
DIlargo_linea=`expr $DIlargo_linea - 1`
DInumero_linea=`expr substr $DIvar 1 $DIlargo_linea`
DIletra=c
DIlinea_sed=$DInumero_linea$DIletra
sed -i "$DIlinea_sed $var1" ~/MMDVMHost/MMDVMBM.ini_copia

#TXHang
var=`grep -n -m 1 '\<TXHang\>' ~/Downloads/MMDVMBM.ini_copia`
var1=`grep -m 1 '\<TXHang\>' ~/Downloads/MMDVMBM.ini_copia`
buscar=":"
largo_linea=`expr index $var $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea=`expr substr $var 1 $largo_linea`
THvar=`grep -n -m 1 '\<TXHang\>' ~/MMDVMHost/MMDVMBM.ini_copia`
buscar=":"
THlargo_linea=`expr index $THvar $buscar`
THlargo_linea=`expr $THlargo_linea - 1`
THnumero_linea=`expr substr $THvar 1 $THlargo_linea`
THletra=c
THlinea_sed=$THnumero_linea$THletra
sed -i "$THlinea_sed $var1" ~/MMDVMHost/MMDVMBM.ini_copia

#D-Star
var=`grep -n -m 1 "\[D-Star\]" ~/Downloads/MMDVMBM.ini_copia` 
var1=`grep -m 1 "\[D-Star\]" ~/Downloads/MMDVMBM.ini_copia`
buscar=":"
largo_linea=`expr index $var $buscar` 
largo_linea=`expr $largo_linea - 1` 
numero_linea=`expr substr $var 1 $largo_linea` 
numero_linea_dstar=`expr $numero_linea + 1` 
DSvar=`grep -n -m 1 "\[D-Star\]" ~/MMDVMHost/MMDVMBM.ini_copia` 
DSvar1=`grep -m 1 "\[D-Star\]" ~/MMDVMHost/MMDVMBM.ini_copia`
buscar=":"
DSlargo_linea=`expr index $DSvar $buscar` 
DSlargo_linea=`expr $DSlargo_linea - 1` 
DSnumero_linea=`expr substr $DSvar 1 $DSlargo_linea` 
DSnumero_linea_dstar=`expr $DSnumero_linea + 1`
DSDS=$(awk "NR==$numero_linea_dstar" ~/Downloads/MMDVMBM.ini_copia) 
DSletrac=c
DSlinea_sed=$DSnumero_linea_dstar$DSletrac
sed -i "$DSlinea_sed $DSDS" ~/MMDVMHost/MMDVMBM.ini_copia

#DMR
var=`grep -n -m 1 "\[DMR\]" ~/Downloads/MMDVMBM.ini_copia` 
var1=`grep -m 1 "\[DMR\]" ~/Downloads/MMDVMBM.ini_copia`
buscar=":"
largo_linea=`expr index $var $buscar` 
largo_linea=`expr $largo_linea - 1` 
numero_linea=`expr substr $var 1 $largo_linea` 
numero_linea_dmr=`expr $numero_linea + 1` 
DMvar=`grep -n "\[DMR\]" ~/MMDVMHost/MMDVMBM.ini_copia` 
DMvar1=`grep -n -m 1 "\[DMR\]" ~/MMDVMHost/MMDVMBM.ini_copia`
buscar=":"
DMlargo_linea=`expr index $DMvar $buscar` 
DMlargo_linea=`expr $DMlargo_linea - 1` 
DMnumero_linea=`expr substr $DMvar 1 $DMlargo_linea` 
DMnumero_linea_dmr=`expr $DMnumero_linea + 1` 
DMDM=$(awk "NR==$numero_linea_dmr" ~/Downloads/MMDVMBM.ini_copia)
DMletrac=c
DMlinea_sed=$DMnumero_linea_dmr$DMletrac 
sed -i "$DMlinea_sed $DMDM" ~/MMDVMHost/MMDVMBM.ini_copia

#P25
var=`grep -n -m 1 "\[P25\]" ~/Downloads/MMDVMBM.ini_copia` 
var1=`grep -m 1 "\[P25\]" ~/Downloads/MMDVMBM.ini_copia`
buscar=":"
largo_linea=`expr index $var $buscar` 
largo_linea=`expr $largo_linea - 1` 
numero_linea=`expr substr $var 1 $largo_linea` 
numero_linea_p25=`expr $numero_linea + 1` 
P2var=`grep -n -m 1 "\[P25\]" ~/MMDVMHost/MMDVMBM.ini_copia` 
P2var1=`grep -n "\[P25\]" ~/MMDVMHost/MMDVMBM.ini_copia`
buscar=":"
P2largo_linea=`expr index $P2var $buscar` 
P2largo_linea=`expr $P2largo_linea - 1` 
P2numero_linea=`expr substr $P2var 1 $P2largo_linea` 
P2numero_linea_p25=`expr $P2numero_linea + 1` 
P2P2=$(awk "NR==$numero_linea_p25" ~/Downloads/MMDVMBM.ini_copia)
P2letrac=c
P2linea_sed=$P2numero_linea_p25$P2letrac
sed -i "$P2linea_sed $P2P2" ~/MMDVMHost/MMDVMBM.ini_copia

#NXDN
var=`grep -n -m 1 "\[NXDN\]" ~/Downloads/MMDVMBM.ini_copia` 
var1=`grep -m 1 "\[NXDN\]" ~/Downloads/MMDVMBM.ini_copia`
buscar=":"
largo_linea=`expr index $var $buscar` 
largo_linea=`expr $largo_linea - 1` 
numero_linea=`expr substr $var 1 $largo_linea` 
numero_linea_p25=`expr $numero_linea + 1`
P2P2=$(awk "NR==$numero_linea_p25" ~/Downloads/MMDVMBM.ini_copia)
P2var=`grep -n -m 1 "\[NXDN\]" ~/MMDVMHost/MMDVMBM.ini_copia` 
P2var1=`grep -n "\[NXDN\]" ~/MMDVMHost/MMDVMBM.ini_copia`
buscar=":"
P2largo_linea=`expr index $P2var $buscar` 
P2largo_linea=`expr $P2largo_linea - 1` 
P2numero_linea=`expr substr $P2var 1 $P2largo_linea` 
P2numero_linea_p25=`expr $P2numero_linea + 1` 
P2letrac=c
P2linea_sed=$P2numero_linea_p25$P2letrac
sed -i "$P2linea_sed $P2P2" ~/MMDVMHost/MMDVMBM.ini_copia

#FUSION
var1=`grep -n -m 1 "\[System Fusion\]" ~/Downloads/MMDVMBM.ini_copia`
var2=`echo "$var1" | tr -d '[[:space:]]'`
buscar=":"
largo_linea=`expr index $var2 $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea=`expr substr $var2 1 $largo_linea`
numero_linea=`expr $numero_linea + 1`
CWvar1=`grep -n -m 1 "\[System Fusion\]" ~/MMDVMHost/MMDVMBM.ini_copia`
CWvar2=`echo "$CWvar1" | tr -d '[[:space:]]'`
buscar=":"
CWlargo_linea=`expr index $CWvar2 $buscar`
CWlargo_linea=`expr $CWlargo_linea - 1`
CWnumero_linea=`expr substr $CWvar2 1 $CWlargo_linea`
CWnumero_linea=`expr $CWnumero_linea + 1`
CWCW=$(awk "NR==$CWnumero_linea" ~/Downloads/MMDVMBM.ini_copia)
CWletra=c
CWlinea_sed=$CWnumero_linea$CWletra
sed -i "$CWlinea_sed $CWCW" ~/MMDVMHost/MMDVMBM.ini_copia

#Nextion
var=`grep -n -m 1 "\[Nextion\]" ~/Downloads/MMDVMBM.ini_copia` 
var1=`grep -m 1 "\[Nextion\]" ~/Downloads/MMDVMBM.ini_copia`
buscar=":"
largo_linea=`expr index $var $buscar` 
largo_linea=`expr $largo_linea - 1` 
numero_linea=`expr substr $var 1 $largo_linea` 
numero_linea_p25=`expr $numero_linea + 2` 
P2var=`grep -n -m 1 "\[Nextion\]" ~/MMDVMHost/MMDVMBM.ini_copia` 
P2var1=`grep -n "\[Nextion\]" ~/MMDVMHost/MMDVMBM.ini_copia`
buscar=":"
P2largo_linea=`expr index $P2var $buscar` 
P2largo_linea=`expr $P2largo_linea - 1` 
P2numero_linea=`expr substr $P2var 1 $P2largo_linea` 
P2numero_linea_p25=`expr $P2numero_linea + 2` 
P2P2=$(awk "NR==$numero_linea_p25" ~/Downloads/MMDVMBM.ini_copia)
P2letrac=c
P2linea_sed=$P2numero_linea_p25$P2letrac
sed -i "$P2linea_sed $P2P2" ~/MMDVMHost/MMDVMBM.ini_copia

#======================= MMDVMBM.ini_copia2   ============================

# Callsign 
var=`grep -n -m 1 '\<Callsign\>' ~/Downloads/MMDVMBM.ini_copia2` # 2:Callsign=EA3EIZ
var1=`grep -m 1 '\<Callsign\>' ~/Downloads/MMDVMBM.ini_copia2` # Callsign=EA3EIZ
buscar=":"
largo_linea=`expr index $var $buscar` #comprueba el largo incluyendo los dos puntos (:)
largo_linea=`expr $largo_linea - 1` #comprueba el largo quitando los dos puntos (:)
numero_linea=`expr substr $var 1 $largo_linea` # recoge numero linea Downloads
Hvar=`grep -n -m 1 '\<Callsign\>' ~/MMDVMHost/MMDVMBM.ini_copia2` # 2:Callsign=EA3EIZ
buscar=":"
Hlargo_linea=`expr index $Hvar $buscar` 
Hlargo_linea=`expr $Hlargo_linea - 1` 
Hnumero_linea=`expr substr $Hvar 1 $Hlargo_linea` # recoge numero linea MMDXVMHost
Hletra=c
Hlinea_sed=$Hnumero_linea$Hletra
sed -i "$Hlinea_sed $var1" ~/MMDVMHost/MMDVMBM.ini_copia2

#Id capturado de la linea 3
Id=$(awk "NR==3" ~/Downloads/MMDVMBM.ini_copia2)
sed -i "3c $Id" ~/MMDVMHost/MMDVMBM.ini_copia2

#Timeout capturado de la linea 4
timeou=$(awk "NR==4" ~/Downloads/MMDVMBM.ini_copia2)
sed -i "4c $timeou" ~/MMDVMHost/MMDVMBM.ini_copia2

#Duplex
var=`grep -n -m 1 '\<Duplex\>' ~/Downloads/MMDVMBM.ini_copia2`
var1=`grep -m 1 '\<Duplex\>' ~/Downloads/MMDVMBM.ini_copia2`
buscar=":"
largo_linea=`expr index $var $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea=`expr substr $var 1 $largo_linea`
Dvar=`grep -n -m 1 '\<Duplex\>' ~/MMDVMHost/MMDVMBM.ini_copia2`
buscar=":"
Dlargo_linea=`expr index $Dvar $buscar`
Dlargo_linea=`expr $Dlargo_linea - 1`
Dnumero_linea=`expr substr $Dvar 1 $Dlargo_linea`
Dletra=c
Dlinea_sed=$Dnumero_linea$Dletra
sed -i "$Dlinea_sed $var1" ~/MMDVMHost/MMDVMBM.ini_copia2

#RFModeHang
var=`grep -n -m 1 '\<RFModeHang\>' ~/Downloads/MMDVMBM.ini_copia2`
var1=`grep -m 1 '\<RFModeHang\>' ~/Downloads/MMDVMBM.ini_copia2`
buscar=":"
largo_linea=`expr index $var $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea=`expr substr $var 1 $largo_linea`
Rvar=`grep -n -m 1 '\<RFModeHang\>' ~/MMDVMHost/MMDVMBM.ini_copia2`
buscar=":"
Rlargo_linea=`expr index $Rvar $buscar`
Rlargo_linea=`expr $Rlargo_linea - 1`
Rnumero_linea=`expr substr $Rvar 1 $Rlargo_linea`
Rletra=c
Rlinea_sed=$Rnumero_linea$Rletra
sed -i "$Rlinea_sed $var1" ~/MMDVMHost/MMDVMBM.ini_copia2

#Display
var=`grep -n -m 1 '\<Display\>' ~/Downloads/MMDVMBM.ini_copia2`
var1=`grep -m 1 '\<Display\>' ~/Downloads/MMDVMBM.ini_copia2`
buscar=":"
largo_linea=`expr index $var $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea=`expr substr $var 1 $largo_linea`
Dvar=`grep -n -m 1 '\<Display\>' ~/MMDVMHost/MMDVMBM.ini_copia2`
buscar=":"
Dlargo_linea=`expr index $Dvar $buscar`
Dlargo_linea=`expr $Dlargo_linea - 1`
Dnumero_linea=`expr substr $Dvar 1 $Dlargo_linea`
Dletra=c
Dlinea_sed=$Dnumero_linea$Dletra
sed -i "$Dlinea_sed $var1" ~/MMDVMHost/MMDVMBM.ini_copia2

#RXFrequency
var=`grep -n -m 1 '\<RXFrequency\>' ~/Downloads/MMDVMBM.ini_copia2`
var1=`grep -m 1 '\<RXFrequency\>' ~/Downloads/MMDVMBM.ini_copia2`
buscar=":"
largo_linea=`expr index $var $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea=`expr substr $var 1 $largo_linea`
Xvar=`grep -n -m 1 '\<RXFrequency\>' ~/MMDVMHost/MMDVMBM.ini_copia2`
buscar=":"
Xlargo_linea=`expr index $Xvar $buscar`
Xlargo_linea=`expr $Xlargo_linea - 1`
Xnumero_linea=`expr substr $Xvar 1 $Xlargo_linea`
Xletra=c
Xlinea_sed=$Xnumero_linea$Xletra
sed -i "$Xlinea_sed $var1" ~/MMDVMHost/MMDVMBM.ini_copia2

#TXFrequency
var=`grep -n -m 1 '\<TXFrequency\>' ~/Downloads/MMDVMBM.ini_copia2`
var1=`grep -m 1 '\<TXFrequency\>' ~/Downloads/MMDVMBM.ini_copia2`
buscar=":"
largo_linea=`expr index $var $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea=`expr substr $var 1 $largo_linea`
Tvar=`grep -n -m 1 '\<TXFrequency\>' ~/MMDVMHost/MMDVMBM.ini_copia2`
buscar=":"
Tlargo_linea=`expr index $Tvar $buscar`
Tlargo_linea=`expr $Tlargo_linea - 1`
Tnumero_linea=`expr substr $Tvar 1 $Tlargo_linea`
Tletra=c
Tlinea_sed=$Tnumero_linea$Tletra
sed -i "$Tlinea_sed $var1" ~/MMDVMHost/MMDVMBM.ini_copia2

#Latitude
var=`grep -n -m 1 '\<Latitude\>' ~/Downloads/MMDVMBM.ini_copia2`
var1=`grep -m 1 '\<Latitude\>' ~/Downloads/MMDVMBM.ini_copia2`
buscar=":"
largo_linea=`expr index $var $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea=`expr substr $var 1 $largo_linea`
Lvar=`grep -n -m 1 '\<Latitude\>' ~/MMDVMHost/MMDVMBM.ini_copia2`
buscar=":"
Llargo_linea=`expr index $Lvar $buscar`
Llargo_linea=`expr $Llargo_linea - 1`
Lnumero_linea=`expr substr $Lvar 1 $Llargo_linea`
Lletra=c
Llinea_sed=$Lnumero_linea$Lletra
sed -i "$Llinea_sed $var1" ~/MMDVMHost/MMDVMBM.ini_copia2

#Longitude
var=`grep -n -m 1 '\<Longitude\>' ~/Downloads/MMDVMBM.ini_copia2`
var1=`grep -m 1 '\<Longitude\>' ~/Downloads/MMDVMBM.ini_copia2`
buscar=":"
largo_linea=`expr index $var $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea=`expr substr $var 1 $largo_linea`
LGvar=`grep -n -m 1 '\<Longitude\>' ~/MMDVMHost/MMDVMBM.ini_copia2`
buscar=":"
LGlargo_linea=`expr index $LGvar $buscar`
LGlargo_linea=`expr $LGlargo_linea - 1`
LGnumero_linea=`expr substr $LGvar 1 $LGlargo_linea`
LGletra=c
LGlinea_sed=$LGnumero_linea$LGletra
sed -i "$LGlinea_sed $var1" ~/MMDVMHost/MMDVMBM.ini_copia2

#Location
var=`grep -n -m 1 '\<Location\>' ~/Downloads/MMDVMBM.ini_copia2`
var1=`grep -m 1 '\<Location\>' ~/Downloads/MMDVMBM.ini_copia2`
buscar=":"
largo_linea=`expr index $var $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea=`expr substr $var 1 $largo_linea`
LOvar=`grep -n -m 1 '\<Location\>' ~/MMDVMHost/MMDVMBM.ini_copia2`
buscar=":"
LOlargo_linea=`expr index $LOvar $buscar`
LOlargo_linea=`expr $LOlargo_linea - 1`
LOnumero_linea=`expr substr $LOvar 1 $LOlargo_linea`
LOletra=c
LOlinea_sed=$LOnumero_linea$LOletra
sed -i "$LOlinea_sed $var1" ~/MMDVMHost/MMDVMBM.ini_copia2

#URL
var=`grep -n -m 1 '\<URL\>' ~/Downloads/MMDVMBM.ini_copia2`
var1=`grep -m 1 '\<URL\>' ~/Downloads/MMDVMBM.ini_copia2`
buscar=":"
largo_linea=`expr index $var $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea_url=`expr substr $var 1 $largo_linea`
Uvar=`grep -n -m 1 '\<URL\>' ~/MMDVMHost/MMDVMBM.ini_copia2`
Ubuscar=":"
Ulargo_linea=`expr index $Uvar $buscar`
Ulargo_linea=`expr $Ulargo_linea - 1`
Unumero_linea_url=`expr substr $Uvar 1 $largo_linea`
Uletra=c
Ulinea_sed=$Unumero_linea_url$Uletra
sed -i "$Ulinea_sed $var1" ~/MMDVMHost/MMDVMBM.ini_copia2

#Baliza 
var1=`grep -n -m 1 "\[CW Id\]" ~/Downloads/MMDVMBM.ini_copia2`
var2=`echo "$var1" | tr -d '[[:space:]]'`
buscar=":"
largo_linea=`expr index $var2 $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea=`expr substr $var2 1 $largo_linea`
numero_linea=`expr $numero_linea + 1`
CWvar1=`grep -n -m 1 "\[CW Id\]" ~/MMDVMHost/MMDVMBM.ini_copia2`
CWvar2=`echo "$CWvar1" | tr -d '[[:space:]]'`
buscar=":"
CWlargo_linea=`expr index $CWvar2 $buscar`
CWlargo_linea=`expr $CWlargo_linea - 1`
CWnumero_linea=`expr substr $CWvar2 1 $CWlargo_linea`
CWnumero_linea=`expr $CWnumero_linea + 1`
CWCW=$(awk "NR==$CWnumero_linea" ~/Downloads/MMDVMBM.ini_copia2)
CWletra=c
CWlinea_sed=$CWnumero_linea$CWletra
sed -i "$CWlinea_sed $CWCW" ~/MMDVMHost/MMDVMBM.ini_copia2

#RXLevel
var=`grep -n -m 1 '\<RXLevel\>' ~/Downloads/MMDVMBM.ini_copia2`
var1=`grep -m 1 '\<RXLevel\>' ~/Downloads/MMDVMBM.ini_copia2`
buscar=":"
largo_linea=`expr index $var $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea=`expr substr $var 1 $largo_linea`
RLvar=`grep -n -m 1 '\<RXLevel\>' ~/MMDVMHost/MMDVMBM.ini_copia2`
buscar=":"
RLlargo_linea=`expr index $RLvar $buscar`
RLlargo_linea=`expr $RLlargo_linea - 1`
RLnumero_linea=`expr substr $RLvar 1 $RLlargo_linea`
RLletra=c
RLlinea_sed=$RLnumero_linea$RLletra
sed -i "$RLlinea_sed $var1" ~/MMDVMHost/MMDVMBM.ini_copia2

#TXLevel
var=`grep -n -m 1 '\<TXLevel\>' ~/Downloads/MMDVMBM.ini_copia2`
var1=`grep -m 1 '\<TXLevel\>' ~/Downloads/MMDVMBM.ini_copia2`
buscar=":"
largo_linea=`expr index $var $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea=`expr substr $var 1 $largo_linea`
TLvar=`grep -n -m 1 '\<TXLevel\>' ~/MMDVMHost/MMDVMBM.ini_copia2`
buscar=":"
TLlargo_linea=`expr index $TLvar $buscar`
TLlargo_linea=`expr $TLlargo_linea - 1`
TLnumero_linea=`expr substr $TLvar 1 $TLlargo_linea`
TLletra=c
TLlinea_sed=$TLnumero_linea$TLletra
sed -i "$TLlinea_sed $var1" ~/MMDVMHost/MMDVMBM.ini_copia2

#Module
var=`grep -n -m 1 '\<Module\>' ~/Downloads/MMDVMBM.ini_copia2`
var1=`grep -m 1 '\<Module\>' ~/Downloads/MMDVMBM.ini_copia2`
buscar=":"
largo_linea=`expr index $var $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea=`expr substr $var 1 $largo_linea`
MOvar=`grep -n -m 1 '\<Module\>' ~/MMDVMHost/MMDVMBM.ini_copia2`
buscar=":"
MOlargo_linea=`expr index $MOvar $buscar`
MOlargo_linea=`expr $MOlargo_linea - 1`
MOnumero_linea=`expr substr $MOvar 1 $MOlargo_linea`
MOletra=c
MOlinea_sed=$MOnumero_linea$MOletra
sed -i "$MOlinea_sed $var1" ~/MMDVMHost/MMDVMBM.ini_copia2

#Txinvert
var=`grep -n -m 1 '\<TXInvert\>' ~/Downloads/MMDVMBM.ini_copia2`
var1=`grep -m 1 '\<TXInvert\>' ~/Downloads/MMDVMBM.ini_copia2`
buscar=":"
largo_linea=`expr index $var $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea=`expr substr $var 1 $largo_linea`
TIvar=`grep -n -m 1 '\<TXInvert\>' ~/MMDVMHost/MMDVMBM.ini_copia2`
buscar=":"
TIlargo_linea=`expr index $TIvar $buscar`
TIlargo_linea=`expr $TIlargo_linea - 1`
TInumero_linea=`expr substr $TIvar 1 $TIlargo_linea`
TIletra=c
TIlinea_sed=$TInumero_linea$TIletra
sed -i "$TIlinea_sed $var1" ~/MMDVMHost/MMDVMBM.ini_copia2

#Modem capturado de la linea txinvert -1
numero_linea_MODEM=`expr $numero_linea - 1` # Downloads
MOnumero_linea_MODEM=`expr $TInumero_linea - 1` # MMDVMHost
modem=$(awk "NR==$numero_linea_MODEM" ~/Downloads/MMDVMBM.ini_copia2)
TIletra=c
TIlinea_sed=$MOnumero_linea_MODEM$TIletra
sed -i "$TIlinea_sed $modem" ~/MMDVMHost/MMDVMBM.ini_copia2

#Address
var=`grep -n -m 1 '\<Address\>' ~/Downloads/MMDVMBM.ini_copia2`
var1=`grep -m 1 '\<Address\>' ~/Downloads/MMDVMBM.ini_copia2`
buscar=":"
largo_linea=`expr index $var $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea_Address=`expr substr $var 1 $largo_linea`
ADvar=`grep -n -m 1 '\<Address\>' ~/MMDVMHost/MMDVMBM.ini_copia2`
buscar=":"
ADlargo_linea=`expr index $ADvar $buscar`
ADlargo_linea=`expr $ADlargo_linea - 1`
ADnumero_linea_Address=`expr substr $ADvar 1 $ADlargo_linea`
ADletra=c
ADlinea_sed=$ADnumero_linea_Address$ADletra
sed -i "$ADlinea_sed $var1" ~/MMDVMHost/MMDVMBM.ini_copia2

#Port captura de la linea Address +1
numero_linea_Address=`expr $numero_linea_Address + 1` # Downloads
ADnumero_linea_Address=`expr $ADnumero_linea_Address + 1` # MMDVMHost
port=$(awk "NR==$numero_linea_Address" ~/Downloads/MMDVMBM.ini_copia2)
ADletra=c
ADlinea_sed=$ADnumero_linea_Address$ADletra
sed -i "$ADlinea_sed $port" ~/MMDVMHost/MMDVMBM.ini_copia2

#Password
var=`grep -n -m 1 '\<Password\>' ~/Downloads/MMDVMBM.ini_copia2`
var1=`grep -m 1 '\<Password\>' ~/Downloads/MMDVMBM.ini_copia2`
buscar=":"
largo_linea=`expr index $var $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea_password=`expr substr $var 1 $largo_linea`
PWvar=`grep -n -m 1 '\<Password\>' ~/MMDVMHost/MMDVMBM.ini_copia2`
buscar=":"
PWlargo_linea=`expr index $PWvar $buscar`
PWlargo_linea=`expr $PWlargo_linea - 1`
PWnumero_linea_password=`expr substr $PWvar 1 $PWlargo_linea`
PWletra=c
PWlinea_sed=$PWnumero_linea_password$PWletra
sed -i "$PWlinea_sed $var1" ~/MMDVMHost/MMDVMBM.ini_copia2

#Options linea password  +1
numero_linea_password=`expr $numero_linea_password + 1` # Downloads
PWnumero_linea_password=`expr $PWnumero_linea_password + 1` # MMDVMHost
option=$(awk "NR==$numero_linea_password" ~/Downloads/MMDVMBM.ini_copia2)
PWletra=c
PWlinea_sed=$PWnumero_linea_password$PWletra
sed -i "$PWlinea_sed $option" ~/MMDVMHost/MMDVMBM.ini_copia2

#ScreenLayout
var=`grep -n -m 1 '\<ScreenLayout\>' ~/Downloads/MMDVMBM.ini_copia2`
var1=`grep -m 1 '\<ScreenLayout\>' ~/Downloads/MMDVMBM.ini_copia2`
buscar=":"
largo_linea=`expr index $var $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea=`expr substr $var 1 $largo_linea`
SCvar=`grep -n -m 1 '\<ScreenLayout\>' ~/MMDVMHost/MMDVMBM.ini_copia2`
buscar=":"
SClargo_linea=`expr index $SCvar $buscar`
SClargo_linea=`expr $SClargo_linea - 1`
SCnumero_linea=`expr substr $SCvar 1 $SClargo_linea`
SCletra=c
SClinea_sed=$SCnumero_linea$SCletra
sed -i "$SClinea_sed $var1" ~/MMDVMHost/MMDVMBM.ini_copia2

#Brightness
var=`grep -n -m 1 '\<Brightness\>' ~/Downloads/MMDVMBM.ini_copia2`
var1=`grep -m 1 '\<Brightness\>' ~/Downloads/MMDVMBM.ini_copia2`
buscar=":"
largo_linea=`expr index $var $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea=`expr substr $var 1 $largo_linea`
BRvar=`grep -n -m 1 '\<Brightness\>' ~/MMDVMHost/MMDVMBM.ini_copia2`
buscar=":"
BRlargo_linea=`expr index $BRvar $buscar`
BRlargo_linea=`expr $BRlargo_linea - 1`
BRnumero_linea=`expr substr $BRvar 1 $BRlargo_linea`
BRletra=c
BRlinea_sed=$BRnumero_linea$BRletra
sed -i "$BRlinea_sed $var1" ~/MMDVMHost/MMDVMBM.ini_copia2

#Slot1
var=`grep -n -m 1 '\<Slot1\>' ~/Downloads/MMDVMBM.ini_copia2`
var1=`grep -m 1 '\<Slot1\>' ~/Downloads/MMDVMBM.ini_copia2`
buscar=":"
largo_linea=`expr index $var $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea=`expr substr $var 1 $largo_linea`
SLvar=`grep -n -m 1 '\<Slot1\>' ~/MMDVMHost/MMDVMBM.ini_copia2`
buscar=":"
SLlargo_linea=`expr index $SLvar $buscar`
SLlargo_linea=`expr $SLlargo_linea - 1`
SLnumero_linea=`expr substr $SLvar 1 $SLlargo_linea`
SLletra=c
SLlinea_sed=$SLnumero_linea$SLletra
sed -i "$SLlinea_sed $var1" ~/MMDVMHost/MMDVMBM.ini_copia2

#DisplayLevel
var=`grep -n -m 1 '\<DisplayLevel\>' ~/Downloads/MMDVMBM.ini_copia2`
var1=`grep -m 1 '\<DisplayLevel\>' ~/Downloads/MMDVMBM.ini_copia2`
buscar=":"
largo_linea=`expr index $var $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea=`expr substr $var 1 $largo_linea`
DIvar=`grep -n -m 1 '\<DisplayLevel\>' ~/MMDVMHost/MMDVMBM.ini_copia2`
buscar=":"
DIlargo_linea=`expr index $DIvar $buscar`
DIlargo_linea=`expr $DIlargo_linea - 1`
DInumero_linea=`expr substr $DIvar 1 $DIlargo_linea`
DIletra=c
DIlinea_sed=$DInumero_linea$DIletra
sed -i "$DIlinea_sed $var1" ~/MMDVMHost/MMDVMBM.ini_copia2

#TXHang
var=`grep -n -m 1 '\<TXHang\>' ~/Downloads/MMDVMBM.ini_copia2`
var1=`grep -m 1 '\<TXHang\>' ~/Downloads/MMDVMBM.ini_copia2`
buscar=":"
largo_linea=`expr index $var $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea=`expr substr $var 1 $largo_linea`
THvar=`grep -n -m 1 '\<TXHang\>' ~/MMDVMHost/MMDVMBM.ini_copia2`
buscar=":"
THlargo_linea=`expr index $THvar $buscar`
THlargo_linea=`expr $THlargo_linea - 1`
THnumero_linea=`expr substr $THvar 1 $THlargo_linea`
THletra=c
THlinea_sed=$THnumero_linea$THletra
sed -i "$THlinea_sed $var1" ~/MMDVMHost/MMDVMBM.ini_copia2

#D-Star
var=`grep -n -m 1 "\[D-Star\]" ~/Downloads/MMDVMBM.ini_copia2` 
var1=`grep -m 1 "\[D-Star\]" ~/Downloads/MMDVMBM.ini_copia2`
buscar=":"
largo_linea=`expr index $var $buscar` 
largo_linea=`expr $largo_linea - 1` 
numero_linea=`expr substr $var 1 $largo_linea` 
numero_linea_dstar=`expr $numero_linea + 1` 
DSvar=`grep -n -m 1 "\[D-Star\]" ~/MMDVMHost/MMDVMBM.ini_copia2` 
DSvar1=`grep -m 1 "\[D-Star\]" ~/MMDVMHost/MMDVMBM.ini_copia2`
buscar=":"
DSlargo_linea=`expr index $DSvar $buscar` 
DSlargo_linea=`expr $DSlargo_linea - 1` 
DSnumero_linea=`expr substr $DSvar 1 $DSlargo_linea` 
DSnumero_linea_dstar=`expr $DSnumero_linea + 1`
DSDS=$(awk "NR==$numero_linea_dstar" ~/Downloads/MMDVMBM.ini_copia2) 
DSletrac=c
DSlinea_sed=$DSnumero_linea_dstar$DSletrac
sed -i "$DSlinea_sed $DSDS" ~/MMDVMHost/MMDVMBM.ini_copia2

#DMR
var=`grep -n -m 1 "\[DMR\]" ~/Downloads/MMDVMBM.ini_copia2` 
var1=`grep -m 1 "\[DMR\]" ~/Downloads/MMDVMBM.ini_copia2`
buscar=":"
largo_linea=`expr index $var $buscar` 
largo_linea=`expr $largo_linea - 1` 
numero_linea=`expr substr $var 1 $largo_linea` 
numero_linea_dmr=`expr $numero_linea + 1` 
DMvar=`grep -n "\[DMR\]" ~/MMDVMHost/MMDVMBM.ini_copia2` 
DMvar1=`grep -n -m 1 "\[DMR\]" ~/MMDVMHost/MMDVMBM.ini_copia2`
buscar=":"
DMlargo_linea=`expr index $DMvar $buscar` 
DMlargo_linea=`expr $DMlargo_linea - 1` 
DMnumero_linea=`expr substr $DMvar 1 $DMlargo_linea` 
DMnumero_linea_dmr=`expr $DMnumero_linea + 1` 
DMDM=$(awk "NR==$numero_linea_dmr" ~/Downloads/MMDVMBM.ini_copia2)
DMletrac=c
DMlinea_sed=$DMnumero_linea_dmr$DMletrac 
sed -i "$DMlinea_sed $DMDM" ~/MMDVMHost/MMDVMBM.ini_copia2

#P25
var=`grep -n -m 1 "\[P25\]" ~/Downloads/MMDVMBM.ini_copia2` 
var1=`grep -m 1 "\[P25\]" ~/Downloads/MMDVMBM.ini_copia2`
buscar=":"
largo_linea=`expr index $var $buscar` 
largo_linea=`expr $largo_linea - 1` 
numero_linea=`expr substr $var 1 $largo_linea` 
numero_linea_p25=`expr $numero_linea + 1` 
P2var=`grep -n -m 1 "\[P25\]" ~/MMDVMHost/MMDVMBM.ini_copia2` 
P2var1=`grep -n "\[P25\]" ~/MMDVMHost/MMDVMBM.ini_copia2`
buscar=":"
P2largo_linea=`expr index $P2var $buscar` 
P2largo_linea=`expr $P2largo_linea - 1` 
P2numero_linea=`expr substr $P2var 1 $P2largo_linea` 
P2numero_linea_p25=`expr $P2numero_linea + 1` 
P2P2=$(awk "NR==$numero_linea_p25" ~/Downloads/MMDVMBM.ini_copia2)
P2letrac=c
P2linea_sed=$P2numero_linea_p25$P2letrac
sed -i "$P2linea_sed $P2P2" ~/MMDVMHost/MMDVMBM.ini_copia2

#NXDN
var=`grep -n -m 1 "\[NXDN\]" ~/Downloads/MMDVMBM.ini_copia2` 
var1=`grep -m 1 "\[NXDN\]" ~/Downloads/MMDVMBM.ini_copia2`
buscar=":"
largo_linea=`expr index $var $buscar` 
largo_linea=`expr $largo_linea - 1` 
numero_linea=`expr substr $var 1 $largo_linea` 
numero_linea_p25=`expr $numero_linea + 1`
P2P2=$(awk "NR==$numero_linea_p25" ~/Downloads/MMDVMBM.ini_copia2)
P2var=`grep -n -m 1 "\[NXDN\]" ~/MMDVMHost/MMDVMBM.ini_copia2` 
P2var1=`grep -n "\[NXDN\]" ~/MMDVMHost/MMDVMBM.ini_copia2`
buscar=":"
P2largo_linea=`expr index $P2var $buscar` 
P2largo_linea=`expr $P2largo_linea - 1` 
P2numero_linea=`expr substr $P2var 1 $P2largo_linea` 
P2numero_linea_p25=`expr $P2numero_linea + 1` 
P2letrac=c
P2linea_sed=$P2numero_linea_p25$P2letrac
sed -i "$P2linea_sed $P2P2" ~/MMDVMHost/MMDVMBM.ini_copia2

#FUSION
var1=`grep -n -m 1 "\[System Fusion\]" ~/Downloads/MMDVMBM.ini_copia2`
var2=`echo "$var1" | tr -d '[[:space:]]'`
buscar=":"
largo_linea=`expr index $var2 $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea=`expr substr $var2 1 $largo_linea`
numero_linea=`expr $numero_linea + 1`
CWvar1=`grep -n -m 1 "\[System Fusion\]" ~/MMDVMHost/MMDVMBM.ini_copia2`
CWvar2=`echo "$CWvar1" | tr -d '[[:space:]]'`
buscar=":"
CWlargo_linea=`expr index $CWvar2 $buscar`
CWlargo_linea=`expr $CWlargo_linea - 1`
CWnumero_linea=`expr substr $CWvar2 1 $CWlargo_linea`
CWnumero_linea=`expr $CWnumero_linea + 1`
CWCW=$(awk "NR==$CWnumero_linea" ~/Downloads/MMDVMBM.ini_copia2)
CWletra=c
CWlinea_sed=$CWnumero_linea$CWletra
sed -i "$CWlinea_sed $CWCW" ~/MMDVMHost/MMDVMBM.ini_copia2

#Nextion
var=`grep -n -m 1 "\[Nextion\]" ~/Downloads/MMDVMBM.ini_copia2` 
var1=`grep -m 1 "\[Nextion\]" ~/Downloads/MMDVMBM.ini_copia2`
buscar=":"
largo_linea=`expr index $var $buscar` 
largo_linea=`expr $largo_linea - 1` 
numero_linea=`expr substr $var 1 $largo_linea` 
numero_linea_p25=`expr $numero_linea + 2` 
P2var=`grep -n -m 1 "\[Nextion\]" ~/MMDVMHost/MMDVMBM.ini_copia2` 
P2var1=`grep -n "\[Nextion\]" ~/MMDVMHost/MMDVMBM.ini_copia2`
buscar=":"
P2largo_linea=`expr index $P2var $buscar` 
P2largo_linea=`expr $P2largo_linea - 1` 
P2numero_linea=`expr substr $P2var 1 $P2largo_linea` 
P2numero_linea_p25=`expr $P2numero_linea + 2` 
P2P2=$(awk "NR==$numero_linea_p25" ~/Downloads/MMDVMBM.ini_copia2)
P2letrac=c
P2linea_sed=$P2numero_linea_p25$P2letrac
sed -i "$P2linea_sed $P2P2" ~/MMDVMHost/MMDVMBM.ini_copia2

#======================= MMDVMBM.ini_copia3   ============================

# Callsign 
var=`grep -n -m 1 '\<Callsign\>' ~/Downloads/MMDVMBM.ini_copia3` # 2:Callsign=EA3EIZ
var1=`grep -m 1 '\<Callsign\>' ~/Downloads/MMDVMBM.ini_copia3` # Callsign=EA3EIZ
buscar=":"
largo_linea=`expr index $var $buscar` #comprueba el largo incluyendo los dos puntos (:)
largo_linea=`expr $largo_linea - 1` #comprueba el largo quitando los dos puntos (:)
numero_linea=`expr substr $var 1 $largo_linea` # recoge numero linea Downloads
Hvar=`grep -n -m 1 '\<Callsign\>' ~/MMDVMHost/MMDVMBM.ini_copia3` # 2:Callsign=EA3EIZ
buscar=":"
Hlargo_linea=`expr index $Hvar $buscar` 
Hlargo_linea=`expr $Hlargo_linea - 1` 
Hnumero_linea=`expr substr $Hvar 1 $Hlargo_linea` # recoge numero linea MMDXVMHost
Hletra=c
Hlinea_sed=$Hnumero_linea$Hletra
sed -i "$Hlinea_sed $var1" ~/MMDVMHost/MMDVMBM.ini_copia3

#Id capturado de la linea 3
Id=$(awk "NR==3" ~/Downloads/MMDVMBM.ini_copia3)
sed -i "3c $Id" ~/MMDVMHost/MMDVMBM.ini_copia3

#Timeout capturado de la linea 4
timeou=$(awk "NR==4" ~/Downloads/MMDVMBM.ini_copia3)
sed -i "4c $timeou" ~/MMDVMHost/MMDVMBM.ini_copia3

#Duplex
var=`grep -n -m 1 '\<Duplex\>' ~/Downloads/MMDVMBM.ini_copia3`
var1=`grep -m 1 '\<Duplex\>' ~/Downloads/MMDVMBM.ini_copia3`
buscar=":"
largo_linea=`expr index $var $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea=`expr substr $var 1 $largo_linea`
Dvar=`grep -n -m 1 '\<Duplex\>' ~/MMDVMHost/MMDVMBM.ini_copia3`
buscar=":"
Dlargo_linea=`expr index $Dvar $buscar`
Dlargo_linea=`expr $Dlargo_linea - 1`
Dnumero_linea=`expr substr $Dvar 1 $Dlargo_linea`
Dletra=c
Dlinea_sed=$Dnumero_linea$Dletra
sed -i "$Dlinea_sed $var1" ~/MMDVMHost/MMDVMBM.ini_copia3

#RFModeHang
var=`grep -n -m 1 '\<RFModeHang\>' ~/Downloads/MMDVMBM.ini_copia3`
var1=`grep -m 1 '\<RFModeHang\>' ~/Downloads/MMDVMBM.ini_copia3`
buscar=":"
largo_linea=`expr index $var $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea=`expr substr $var 1 $largo_linea`
Rvar=`grep -n -m 1 '\<RFModeHang\>' ~/MMDVMHost/MMDVMBM.ini_copia3`
buscar=":"
Rlargo_linea=`expr index $Rvar $buscar`
Rlargo_linea=`expr $Rlargo_linea - 1`
Rnumero_linea=`expr substr $Rvar 1 $Rlargo_linea`
Rletra=c
Rlinea_sed=$Rnumero_linea$Rletra
sed -i "$Rlinea_sed $var1" ~/MMDVMHost/MMDVMBM.ini_copia3

#Display
var=`grep -n -m 1 '\<Display\>' ~/Downloads/MMDVMBM.ini_copia3`
var1=`grep -m 1 '\<Display\>' ~/Downloads/MMDVMBM.ini_copia3`
buscar=":"
largo_linea=`expr index $var $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea=`expr substr $var 1 $largo_linea`
Dvar=`grep -n -m 1 '\<Display\>' ~/MMDVMHost/MMDVMBM.ini_copia3`
buscar=":"
Dlargo_linea=`expr index $Dvar $buscar`
Dlargo_linea=`expr $Dlargo_linea - 1`
Dnumero_linea=`expr substr $Dvar 1 $Dlargo_linea`
Dletra=c
Dlinea_sed=$Dnumero_linea$Dletra
sed -i "$Dlinea_sed $var1" ~/MMDVMHost/MMDVMBM.ini_copia3

#RXFrequency
var=`grep -n -m 1 '\<RXFrequency\>' ~/Downloads/MMDVMBM.ini_copia3`
var1=`grep -m 1 '\<RXFrequency\>' ~/Downloads/MMDVMBM.ini_copia3`
buscar=":"
largo_linea=`expr index $var $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea=`expr substr $var 1 $largo_linea`
Xvar=`grep -n -m 1 '\<RXFrequency\>' ~/MMDVMHost/MMDVMBM.ini_copia3`
buscar=":"
Xlargo_linea=`expr index $Xvar $buscar`
Xlargo_linea=`expr $Xlargo_linea - 1`
Xnumero_linea=`expr substr $Xvar 1 $Xlargo_linea`
Xletra=c
Xlinea_sed=$Xnumero_linea$Xletra
sed -i "$Xlinea_sed $var1" ~/MMDVMHost/MMDVMBM.ini_copia3

#TXFrequency
var=`grep -n -m 1 '\<TXFrequency\>' ~/Downloads/MMDVMBM.ini_copia3`
var1=`grep -m 1 '\<TXFrequency\>' ~/Downloads/MMDVMBM.ini_copia3`
buscar=":"
largo_linea=`expr index $var $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea=`expr substr $var 1 $largo_linea`
Tvar=`grep -n -m 1 '\<TXFrequency\>' ~/MMDVMHost/MMDVMBM.ini_copia3`
buscar=":"
Tlargo_linea=`expr index $Tvar $buscar`
Tlargo_linea=`expr $Tlargo_linea - 1`
Tnumero_linea=`expr substr $Tvar 1 $Tlargo_linea`
Tletra=c
Tlinea_sed=$Tnumero_linea$Tletra
sed -i "$Tlinea_sed $var1" ~/MMDVMHost/MMDVMBM.ini_copia3

#Latitude
var=`grep -n -m 1 '\<Latitude\>' ~/Downloads/MMDVMBM.ini_copia3`
var1=`grep -m 1 '\<Latitude\>' ~/Downloads/MMDVMBM.ini_copia3`
buscar=":"
largo_linea=`expr index $var $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea=`expr substr $var 1 $largo_linea`
Lvar=`grep -n -m 1 '\<Latitude\>' ~/MMDVMHost/MMDVMBM.ini_copia3`
buscar=":"
Llargo_linea=`expr index $Lvar $buscar`
Llargo_linea=`expr $Llargo_linea - 1`
Lnumero_linea=`expr substr $Lvar 1 $Llargo_linea`
Lletra=c
Llinea_sed=$Lnumero_linea$Lletra
sed -i "$Llinea_sed $var1" ~/MMDVMHost/MMDVMBM.ini_copia3

#Longitude
var=`grep -n -m 1 '\<Longitude\>' ~/Downloads/MMDVMBM.ini_copia3`
var1=`grep -m 1 '\<Longitude\>' ~/Downloads/MMDVMBM.ini_copia3`
buscar=":"
largo_linea=`expr index $var $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea=`expr substr $var 1 $largo_linea`
LGvar=`grep -n -m 1 '\<Longitude\>' ~/MMDVMHost/MMDVMBM.ini_copia3`
buscar=":"
LGlargo_linea=`expr index $LGvar $buscar`
LGlargo_linea=`expr $LGlargo_linea - 1`
LGnumero_linea=`expr substr $LGvar 1 $LGlargo_linea`
LGletra=c
LGlinea_sed=$LGnumero_linea$LGletra
sed -i "$LGlinea_sed $var1" ~/MMDVMHost/MMDVMBM.ini_copia3

#Location
var=`grep -n -m 1 '\<Location\>' ~/Downloads/MMDVMBM.ini_copia3`
var1=`grep -m 1 '\<Location\>' ~/Downloads/MMDVMBM.ini_copia3`
buscar=":"
largo_linea=`expr index $var $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea=`expr substr $var 1 $largo_linea`
LOvar=`grep -n -m 1 '\<Location\>' ~/MMDVMHost/MMDVMBM.ini_copia3`
buscar=":"
LOlargo_linea=`expr index $LOvar $buscar`
LOlargo_linea=`expr $LOlargo_linea - 1`
LOnumero_linea=`expr substr $LOvar 1 $LOlargo_linea`
LOletra=c
LOlinea_sed=$LOnumero_linea$LOletra
sed -i "$LOlinea_sed $var1" ~/MMDVMHost/MMDVMBM.ini_copia3

#URL
var=`grep -n -m 1 '\<URL\>' ~/Downloads/MMDVMBM.ini_copia3`
var1=`grep -m 1 '\<URL\>' ~/Downloads/MMDVMBM.ini_copia3`
buscar=":"
largo_linea=`expr index $var $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea_url=`expr substr $var 1 $largo_linea`
Uvar=`grep -n -m 1 '\<URL\>' ~/MMDVMHost/MMDVMBM.ini_copia3`
Ubuscar=":"
Ulargo_linea=`expr index $Uvar $buscar`
Ulargo_linea=`expr $Ulargo_linea - 1`
Unumero_linea_url=`expr substr $Uvar 1 $largo_linea`
Uletra=c
Ulinea_sed=$Unumero_linea_url$Uletra
sed -i "$Ulinea_sed $var1" ~/MMDVMHost/MMDVMBM.ini_copia3

#Baliza 
var1=`grep -n -m 1 "\[CW Id\]" ~/Downloads/MMDVMBM.ini_copia3`
var2=`echo "$var1" | tr -d '[[:space:]]'`
buscar=":"
largo_linea=`expr index $var2 $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea=`expr substr $var2 1 $largo_linea`
numero_linea=`expr $numero_linea + 1`
CWvar1=`grep -n -m 1 "\[CW Id\]" ~/MMDVMHost/MMDVMBM.ini_copia3`
CWvar2=`echo "$CWvar1" | tr -d '[[:space:]]'`
buscar=":"
CWlargo_linea=`expr index $CWvar2 $buscar`
CWlargo_linea=`expr $CWlargo_linea - 1`
CWnumero_linea=`expr substr $CWvar2 1 $CWlargo_linea`
CWnumero_linea=`expr $CWnumero_linea + 1`
CWCW=$(awk "NR==$CWnumero_linea" ~/Downloads/MMDVMBM.ini_copia3)
CWletra=c
CWlinea_sed=$CWnumero_linea$CWletra
sed -i "$CWlinea_sed $CWCW" ~/MMDVMHost/MMDVMBM.ini_copia3

#RXLevel
var=`grep -n -m 1 '\<RXLevel\>' ~/Downloads/MMDVMBM.ini_copia3`
var1=`grep -m 1 '\<RXLevel\>' ~/Downloads/MMDVMBM.ini_copia3`
buscar=":"
largo_linea=`expr index $var $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea=`expr substr $var 1 $largo_linea`
RLvar=`grep -n -m 1 '\<RXLevel\>' ~/MMDVMHost/MMDVMBM.ini_copia3`
buscar=":"
RLlargo_linea=`expr index $RLvar $buscar`
RLlargo_linea=`expr $RLlargo_linea - 1`
RLnumero_linea=`expr substr $RLvar 1 $RLlargo_linea`
RLletra=c
RLlinea_sed=$RLnumero_linea$RLletra
sed -i "$RLlinea_sed $var1" ~/MMDVMHost/MMDVMBM.ini_copia3

#TXLevel
var=`grep -n -m 1 '\<TXLevel\>' ~/Downloads/MMDVMBM.ini_copia3`
var1=`grep -m 1 '\<TXLevel\>' ~/Downloads/MMDVMBM.ini_copia3`
buscar=":"
largo_linea=`expr index $var $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea=`expr substr $var 1 $largo_linea`
TLvar=`grep -n -m 1 '\<TXLevel\>' ~/MMDVMHost/MMDVMBM.ini_copia3`
buscar=":"
TLlargo_linea=`expr index $TLvar $buscar`
TLlargo_linea=`expr $TLlargo_linea - 1`
TLnumero_linea=`expr substr $TLvar 1 $TLlargo_linea`
TLletra=c
TLlinea_sed=$TLnumero_linea$TLletra
sed -i "$TLlinea_sed $var1" ~/MMDVMHost/MMDVMBM.ini_copia3

#Module
var=`grep -n -m 1 '\<Module\>' ~/Downloads/MMDVMBM.ini_copia3`
var1=`grep -m 1 '\<Module\>' ~/Downloads/MMDVMBM.ini_copia3`
buscar=":"
largo_linea=`expr index $var $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea=`expr substr $var 1 $largo_linea`
MOvar=`grep -n -m 1 '\<Module\>' ~/MMDVMHost/MMDVMBM.ini_copia3`
buscar=":"
MOlargo_linea=`expr index $MOvar $buscar`
MOlargo_linea=`expr $MOlargo_linea - 1`
MOnumero_linea=`expr substr $MOvar 1 $MOlargo_linea`
MOletra=c
MOlinea_sed=$MOnumero_linea$MOletra
sed -i "$MOlinea_sed $var1" ~/MMDVMHost/MMDVMBM.ini_copia3

#Txinvert
var=`grep -n -m 1 '\<TXInvert\>' ~/Downloads/MMDVMBM.ini_copia3`
var1=`grep -m 1 '\<TXInvert\>' ~/Downloads/MMDVMBM.ini_copia3`
buscar=":"
largo_linea=`expr index $var $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea=`expr substr $var 1 $largo_linea`
TIvar=`grep -n -m 1 '\<TXInvert\>' ~/MMDVMHost/MMDVMBM.ini_copia3`
buscar=":"
TIlargo_linea=`expr index $TIvar $buscar`
TIlargo_linea=`expr $TIlargo_linea - 1`
TInumero_linea=`expr substr $TIvar 1 $TIlargo_linea`
TIletra=c
TIlinea_sed=$TInumero_linea$TIletra
sed -i "$TIlinea_sed $var1" ~/MMDVMHost/MMDVMBM.ini_copia3

#Modem capturado de la linea txinvert -1
numero_linea_MODEM=`expr $numero_linea - 1` # Downloads
MOnumero_linea_MODEM=`expr $TInumero_linea - 1` # MMDVMHost
modem=$(awk "NR==$numero_linea_MODEM" ~/Downloads/MMDVMBM.ini_copia3)
TIletra=c
TIlinea_sed=$MOnumero_linea_MODEM$TIletra
sed -i "$TIlinea_sed $modem" ~/MMDVMHost/MMDVMBM.ini_copia3

#Address
var=`grep -n -m 1 '\<Address\>' ~/Downloads/MMDVMBM.ini_copia3`
var1=`grep -m 1 '\<Address\>' ~/Downloads/MMDVMBM.ini_copia3`
buscar=":"
largo_linea=`expr index $var $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea_Address=`expr substr $var 1 $largo_linea`
ADvar=`grep -n -m 1 '\<Address\>' ~/MMDVMHost/MMDVMBM.ini_copia3`
buscar=":"
ADlargo_linea=`expr index $ADvar $buscar`
ADlargo_linea=`expr $ADlargo_linea - 1`
ADnumero_linea_Address=`expr substr $ADvar 1 $ADlargo_linea`
ADletra=c
ADlinea_sed=$ADnumero_linea_Address$ADletra
sed -i "$ADlinea_sed $var1" ~/MMDVMHost/MMDVMBM.ini_copia3

#Port captura de la linea Address +1
numero_linea_Address=`expr $numero_linea_Address + 1` # Downloads
ADnumero_linea_Address=`expr $ADnumero_linea_Address + 1` # MMDVMHost
port=$(awk "NR==$numero_linea_Address" ~/Downloads/MMDVMBM.ini_copia3)
ADletra=c
ADlinea_sed=$ADnumero_linea_Address$ADletra
sed -i "$ADlinea_sed $port" ~/MMDVMHost/MMDVMBM.ini_copia3

#Password
var=`grep -n -m 1 '\<Password\>' ~/Downloads/MMDVMBM.ini_copia3`
var1=`grep -m 1 '\<Password\>' ~/Downloads/MMDVMBM.ini_copia3`
buscar=":"
largo_linea=`expr index $var $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea_password=`expr substr $var 1 $largo_linea`
PWvar=`grep -n -m 1 '\<Password\>' ~/MMDVMHost/MMDVMBM.ini_copia3`
buscar=":"
PWlargo_linea=`expr index $PWvar $buscar`
PWlargo_linea=`expr $PWlargo_linea - 1`
PWnumero_linea_password=`expr substr $PWvar 1 $PWlargo_linea`
PWletra=c
PWlinea_sed=$PWnumero_linea_password$PWletra
sed -i "$PWlinea_sed $var1" ~/MMDVMHost/MMDVMBM.ini_copia3

#Options linea password  +1
numero_linea_password=`expr $numero_linea_password + 1` # Downloads
PWnumero_linea_password=`expr $PWnumero_linea_password + 1` # MMDVMHost
option=$(awk "NR==$numero_linea_password" ~/Downloads/MMDVMBM.ini_copia3)
PWletra=c
PWlinea_sed=$PWnumero_linea_password$PWletra
sed -i "$PWlinea_sed $option" ~/MMDVMHost/MMDVMBM.ini_copia3

#ScreenLayout
var=`grep -n -m 1 '\<ScreenLayout\>' ~/Downloads/MMDVMBM.ini_copia3`
var1=`grep -m 1 '\<ScreenLayout\>' ~/Downloads/MMDVMBM.ini_copia3`
buscar=":"
largo_linea=`expr index $var $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea=`expr substr $var 1 $largo_linea`
SCvar=`grep -n -m 1 '\<ScreenLayout\>' ~/MMDVMHost/MMDVMBM.ini_copia3`
buscar=":"
SClargo_linea=`expr index $SCvar $buscar`
SClargo_linea=`expr $SClargo_linea - 1`
SCnumero_linea=`expr substr $SCvar 1 $SClargo_linea`
SCletra=c
SClinea_sed=$SCnumero_linea$SCletra
sed -i "$SClinea_sed $var1" ~/MMDVMHost/MMDVMBM.ini_copia3

#Brightness
var=`grep -n -m 1 '\<Brightness\>' ~/Downloads/MMDVMBM.ini_copia3`
var1=`grep -m 1 '\<Brightness\>' ~/Downloads/MMDVMBM.ini_copia3`
buscar=":"
largo_linea=`expr index $var $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea=`expr substr $var 1 $largo_linea`
BRvar=`grep -n -m 1 '\<Brightness\>' ~/MMDVMHost/MMDVMBM.ini_copia3`
buscar=":"
BRlargo_linea=`expr index $BRvar $buscar`
BRlargo_linea=`expr $BRlargo_linea - 1`
BRnumero_linea=`expr substr $BRvar 1 $BRlargo_linea`
BRletra=c
BRlinea_sed=$BRnumero_linea$BRletra
sed -i "$BRlinea_sed $var1" ~/MMDVMHost/MMDVMBM.ini_copia3

#Slot1
var=`grep -n -m 1 '\<Slot1\>' ~/Downloads/MMDVMBM.ini_copia3`
var1=`grep -m 1 '\<Slot1\>' ~/Downloads/MMDVMBM.ini_copia3`
buscar=":"
largo_linea=`expr index $var $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea=`expr substr $var 1 $largo_linea`
SLvar=`grep -n -m 1 '\<Slot1\>' ~/MMDVMHost/MMDVMBM.ini_copia3`
buscar=":"
SLlargo_linea=`expr index $SLvar $buscar`
SLlargo_linea=`expr $SLlargo_linea - 1`
SLnumero_linea=`expr substr $SLvar 1 $SLlargo_linea`
SLletra=c
SLlinea_sed=$SLnumero_linea$SLletra
sed -i "$SLlinea_sed $var1" ~/MMDVMHost/MMDVMBM.ini_copia3

#DisplayLevel
var=`grep -n -m 1 '\<DisplayLevel\>' ~/Downloads/MMDVMBM.ini_copia3`
var1=`grep -m 1 '\<DisplayLevel\>' ~/Downloads/MMDVMBM.ini_copia3`
buscar=":"
largo_linea=`expr index $var $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea=`expr substr $var 1 $largo_linea`
DIvar=`grep -n -m 1 '\<DisplayLevel\>' ~/MMDVMHost/MMDVMBM.ini_copia3`
buscar=":"
DIlargo_linea=`expr index $DIvar $buscar`
DIlargo_linea=`expr $DIlargo_linea - 1`
DInumero_linea=`expr substr $DIvar 1 $DIlargo_linea`
DIletra=c
DIlinea_sed=$DInumero_linea$DIletra
sed -i "$DIlinea_sed $var1" ~/MMDVMHost/MMDVMBM.ini_copia3

#TXHang
var=`grep -n -m 1 '\<TXHang\>' ~/Downloads/MMDVMBM.ini_copia3`
var1=`grep -m 1 '\<TXHang\>' ~/Downloads/MMDVMBM.ini_copia3`
buscar=":"
largo_linea=`expr index $var $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea=`expr substr $var 1 $largo_linea`
THvar=`grep -n -m 1 '\<TXHang\>' ~/MMDVMHost/MMDVMBM.ini_copia3`
buscar=":"
THlargo_linea=`expr index $THvar $buscar`
THlargo_linea=`expr $THlargo_linea - 1`
THnumero_linea=`expr substr $THvar 1 $THlargo_linea`
THletra=c
THlinea_sed=$THnumero_linea$THletra
sed -i "$THlinea_sed $var1" ~/MMDVMHost/MMDVMBM.ini_copia3

#D-Star
var=`grep -n -m 1 "\[D-Star\]" ~/Downloads/MMDVMBM.ini_copia3` 
var1=`grep -m 1 "\[D-Star\]" ~/Downloads/MMDVMBM.ini_copia3`
buscar=":"
largo_linea=`expr index $var $buscar` 
largo_linea=`expr $largo_linea - 1` 
numero_linea=`expr substr $var 1 $largo_linea` 
numero_linea_dstar=`expr $numero_linea + 1` 
DSvar=`grep -n -m 1 "\[D-Star\]" ~/MMDVMHost/MMDVMBM.ini_copia3` 
DSvar1=`grep -m 1 "\[D-Star\]" ~/MMDVMHost/MMDVMBM.ini_copia3`
buscar=":"
DSlargo_linea=`expr index $DSvar $buscar` 
DSlargo_linea=`expr $DSlargo_linea - 1` 
DSnumero_linea=`expr substr $DSvar 1 $DSlargo_linea` 
DSnumero_linea_dstar=`expr $DSnumero_linea + 1`
DSDS=$(awk "NR==$numero_linea_dstar" ~/Downloads/MMDVMBM.ini_copia3) 
DSletrac=c
DSlinea_sed=$DSnumero_linea_dstar$DSletrac
sed -i "$DSlinea_sed $DSDS" ~/MMDVMHost/MMDVMBM.ini_copia3

#DMR
var=`grep -n -m 1 "\[DMR\]" ~/Downloads/MMDVMBM.ini_copia3` 
var1=`grep -m 1 "\[DMR\]" ~/Downloads/MMDVMBM.ini_copia3`
buscar=":"
largo_linea=`expr index $var $buscar` 
largo_linea=`expr $largo_linea - 1` 
numero_linea=`expr substr $var 1 $largo_linea` 
numero_linea_dmr=`expr $numero_linea + 1` 
DMvar=`grep -n "\[DMR\]" ~/MMDVMHost/MMDVMBM.ini_copia3` 
DMvar1=`grep -n -m 1 "\[DMR\]" ~/MMDVMHost/MMDVMBM.ini_copia3`
buscar=":"
DMlargo_linea=`expr index $DMvar $buscar` 
DMlargo_linea=`expr $DMlargo_linea - 1` 
DMnumero_linea=`expr substr $DMvar 1 $DMlargo_linea` 
DMnumero_linea_dmr=`expr $DMnumero_linea + 1` 
DMDM=$(awk "NR==$numero_linea_dmr" ~/Downloads/MMDVMBM.ini_copia3)
DMletrac=c
DMlinea_sed=$DMnumero_linea_dmr$DMletrac 
sed -i "$DMlinea_sed $DMDM" ~/MMDVMHost/MMDVMBM.ini_copia3

#P25
var=`grep -n -m 1 "\[P25\]" ~/Downloads/MMDVMBM.ini_copia3` 
var1=`grep -m 1 "\[P25\]" ~/Downloads/MMDVMBM.ini_copia3`
buscar=":"
largo_linea=`expr index $var $buscar` 
largo_linea=`expr $largo_linea - 1` 
numero_linea=`expr substr $var 1 $largo_linea` 
numero_linea_p25=`expr $numero_linea + 1` 
P2var=`grep -n -m 1 "\[P25\]" ~/MMDVMHost/MMDVMBM.ini_copia3` 
P2var1=`grep -n "\[P25\]" ~/MMDVMHost/MMDVMBM.ini_copia3`
buscar=":"
P2largo_linea=`expr index $P2var $buscar` 
P2largo_linea=`expr $P2largo_linea - 1` 
P2numero_linea=`expr substr $P2var 1 $P2largo_linea` 
P2numero_linea_p25=`expr $P2numero_linea + 1` 
P2P2=$(awk "NR==$numero_linea_p25" ~/Downloads/MMDVMBM.ini_copia3)
P2letrac=c
P2linea_sed=$P2numero_linea_p25$P2letrac
sed -i "$P2linea_sed $P2P2" ~/MMDVMHost/MMDVMBM.ini_copia3

#NXDN
var=`grep -n -m 1 "\[NXDN\]" ~/Downloads/MMDVMBM.ini_copia3` 
var1=`grep -m 1 "\[NXDN\]" ~/Downloads/MMDVMBM.ini_copia3`
buscar=":"
largo_linea=`expr index $var $buscar` 
largo_linea=`expr $largo_linea - 1` 
numero_linea=`expr substr $var 1 $largo_linea` 
numero_linea_p25=`expr $numero_linea + 1`
P2P2=$(awk "NR==$numero_linea_p25" ~/Downloads/MMDVMBM.ini_copia3)
P2var=`grep -n -m 1 "\[NXDN\]" ~/MMDVMHost/MMDVMBM.ini_copia3` 
P2var1=`grep -n "\[NXDN\]" ~/MMDVMHost/MMDVMBM.ini_copia3`
buscar=":"
P2largo_linea=`expr index $P2var $buscar` 
P2largo_linea=`expr $P2largo_linea - 1` 
P2numero_linea=`expr substr $P2var 1 $P2largo_linea` 
P2numero_linea_p25=`expr $P2numero_linea + 1` 
P2letrac=c
P2linea_sed=$P2numero_linea_p25$P2letrac
sed -i "$P2linea_sed $P2P2" ~/MMDVMHost/MMDVMBM.ini_copia3

#FUSION
var1=`grep -n -m 1 "\[System Fusion\]" ~/Downloads/MMDVMBM.ini_copia3`
var2=`echo "$var1" | tr -d '[[:space:]]'`
buscar=":"
largo_linea=`expr index $var2 $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea=`expr substr $var2 1 $largo_linea`
numero_linea=`expr $numero_linea + 1`
CWvar1=`grep -n -m 1 "\[System Fusion\]" ~/MMDVMHost/MMDVMBM.ini_copia3`
CWvar2=`echo "$CWvar1" | tr -d '[[:space:]]'`
buscar=":"
CWlargo_linea=`expr index $CWvar2 $buscar`
CWlargo_linea=`expr $CWlargo_linea - 1`
CWnumero_linea=`expr substr $CWvar2 1 $CWlargo_linea`
CWnumero_linea=`expr $CWnumero_linea + 1`
CWCW=$(awk "NR==$CWnumero_linea" ~/Downloads/MMDVMBM.ini_copia3)
CWletra=c
CWlinea_sed=$CWnumero_linea$CWletra
sed -i "$CWlinea_sed $CWCW" ~/MMDVMHost/MMDVMBM.ini_copia3

#Nextion
var=`grep -n -m 1 "\[Nextion\]" ~/Downloads/MMDVMBM.ini_copia3` 
var1=`grep -m 1 "\[Nextion\]" ~/Downloads/MMDVMBM.ini_copia3`
buscar=":"
largo_linea=`expr index $var $buscar` 
largo_linea=`expr $largo_linea - 1` 
numero_linea=`expr substr $var 1 $largo_linea` 
numero_linea_p25=`expr $numero_linea + 2` 
P2var=`grep -n -m 1 "\[Nextion\]" ~/MMDVMHost/MMDVMBM.ini_copia3` 
P2var1=`grep -n "\[Nextion\]" ~/MMDVMHost/MMDVMBM.ini_copia3`
buscar=":"
P2largo_linea=`expr index $P2var $buscar` 
P2largo_linea=`expr $P2largo_linea - 1` 
P2numero_linea=`expr substr $P2var 1 $P2largo_linea` 
P2numero_linea_p25=`expr $P2numero_linea + 2` 
P2P2=$(awk "NR==$numero_linea_p25" ~/Downloads/MMDVMBM.ini_copia3)
P2letrac=c
P2linea_sed=$P2numero_linea_p25$P2letrac
sed -i "$P2linea_sed $P2P2" ~/MMDVMHost/MMDVMBM.ini_copia3

#======================= MMDVMPLUS.ini   ============================

# Callsign 
var=`grep -n -m 1 '\<Callsign\>' ~/Downloads/MMDVMPLUS.ini` # 2:Callsign=EA3EIZ
var1=`grep -m 1 '\<Callsign\>' ~/Downloads/MMDVMPLUS.ini` # Callsign=EA3EIZ
buscar=":"
largo_linea=`expr index $var $buscar` #comprueba el largo incluyendo los dos puntos (:)
largo_linea=`expr $largo_linea - 1` #comprueba el largo quitando los dos puntos (:)
numero_linea=`expr substr $var 1 $largo_linea` # recoge numero linea Downloads
Hvar=`grep -n -m 1 '\<Callsign\>' ~/MMDVMHost/MMDVMPLUS.ini` # 2:Callsign=EA3EIZ
buscar=":"
Hlargo_linea=`expr index $Hvar $buscar` 
Hlargo_linea=`expr $Hlargo_linea - 1` 
Hnumero_linea=`expr substr $Hvar 1 $Hlargo_linea` # recoge numero linea MMDXVMHost
Hletra=c
Hlinea_sed=$Hnumero_linea$Hletra
sed -i "$Hlinea_sed $var1" ~/MMDVMHost/MMDVMPLUS.ini

#Id capturado de la linea 3
Id=$(awk "NR==3" ~/Downloads/MMDVMPLUS.ini)
sed -i "3c $Id" ~/MMDVMHost/MMDVMPLUS.ini

#Timeout capturado de la linea 4
timeou=$(awk "NR==4" ~/Downloads/MMDVMPLUS.ini)
sed -i "4c $timeou" ~/MMDVMHost/MMDVMPLUS.ini

#Duplex
var=`grep -n -m 1 '\<Duplex\>' ~/Downloads/MMDVMPLUS.ini`
var1=`grep -m 1 '\<Duplex\>' ~/Downloads/MMDVMPLUS.ini`
buscar=":"
largo_linea=`expr index $var $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea=`expr substr $var 1 $largo_linea`
Dvar=`grep -n -m 1 '\<Duplex\>' ~/MMDVMHost/MMDVMPLUS.ini`
buscar=":"
Dlargo_linea=`expr index $Dvar $buscar`
Dlargo_linea=`expr $Dlargo_linea - 1`
Dnumero_linea=`expr substr $Dvar 1 $Dlargo_linea`
Dletra=c
Dlinea_sed=$Dnumero_linea$Dletra
sed -i "$Dlinea_sed $var1" ~/MMDVMHost/MMDVMPLUS.ini

#RFModeHang
var=`grep -n -m 1 '\<RFModeHang\>' ~/Downloads/MMDVMPLUS.ini`
var1=`grep -m 1 '\<RFModeHang\>' ~/Downloads/MMDVMPLUS.ini`
buscar=":"
largo_linea=`expr index $var $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea=`expr substr $var 1 $largo_linea`
Rvar=`grep -n -m 1 '\<RFModeHang\>' ~/MMDVMHost/MMDVMPLUS.ini`
buscar=":"
Rlargo_linea=`expr index $Rvar $buscar`
Rlargo_linea=`expr $Rlargo_linea - 1`
Rnumero_linea=`expr substr $Rvar 1 $Rlargo_linea`
Rletra=c
Rlinea_sed=$Rnumero_linea$Rletra
sed -i "$Rlinea_sed $var1" ~/MMDVMHost/MMDVMPLUS.ini

#Display
var=`grep -n -m 1 '\<Display\>' ~/Downloads/MMDVMPLUS.ini`
var1=`grep -m 1 '\<Display\>' ~/Downloads/MMDVMPLUS.ini`
buscar=":"
largo_linea=`expr index $var $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea=`expr substr $var 1 $largo_linea`
Dvar=`grep -n -m 1 '\<Display\>' ~/MMDVMHost/MMDVMPLUS.ini`
buscar=":"
Dlargo_linea=`expr index $Dvar $buscar`
Dlargo_linea=`expr $Dlargo_linea - 1`
Dnumero_linea=`expr substr $Dvar 1 $Dlargo_linea`
Dletra=c
Dlinea_sed=$Dnumero_linea$Dletra
sed -i "$Dlinea_sed $var1" ~/MMDVMHost/MMDVMPLUS.ini

#RXFrequency
var=`grep -n -m 1 '\<RXFrequency\>' ~/Downloads/MMDVMPLUS.ini`
var1=`grep -m 1 '\<RXFrequency\>' ~/Downloads/MMDVMPLUS.ini`
buscar=":"
largo_linea=`expr index $var $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea=`expr substr $var 1 $largo_linea`
Xvar=`grep -n -m 1 '\<RXFrequency\>' ~/MMDVMHost/MMDVMPLUS.ini`
buscar=":"
Xlargo_linea=`expr index $Xvar $buscar`
Xlargo_linea=`expr $Xlargo_linea - 1`
Xnumero_linea=`expr substr $Xvar 1 $Xlargo_linea`
Xletra=c
Xlinea_sed=$Xnumero_linea$Xletra
sed -i "$Xlinea_sed $var1" ~/MMDVMHost/MMDVMPLUS.ini

#TXFrequency
var=`grep -n -m 1 '\<TXFrequency\>' ~/Downloads/MMDVMPLUS.ini`
var1=`grep -m 1 '\<TXFrequency\>' ~/Downloads/MMDVMPLUS.ini`
buscar=":"
largo_linea=`expr index $var $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea=`expr substr $var 1 $largo_linea`
Tvar=`grep -n -m 1 '\<TXFrequency\>' ~/MMDVMHost/MMDVMPLUS.ini`
buscar=":"
Tlargo_linea=`expr index $Tvar $buscar`
Tlargo_linea=`expr $Tlargo_linea - 1`
Tnumero_linea=`expr substr $Tvar 1 $Tlargo_linea`
Tletra=c
Tlinea_sed=$Tnumero_linea$Tletra
sed -i "$Tlinea_sed $var1" ~/MMDVMHost/MMDVMPLUS.ini

#Latitude
var=`grep -n -m 1 '\<Latitude\>' ~/Downloads/MMDVMPLUS.ini`
var1=`grep -m 1 '\<Latitude\>' ~/Downloads/MMDVMPLUS.ini`
buscar=":"
largo_linea=`expr index $var $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea=`expr substr $var 1 $largo_linea`
Lvar=`grep -n -m 1 '\<Latitude\>' ~/MMDVMHost/MMDVMPLUS.ini`
buscar=":"
Llargo_linea=`expr index $Lvar $buscar`
Llargo_linea=`expr $Llargo_linea - 1`
Lnumero_linea=`expr substr $Lvar 1 $Llargo_linea`
Lletra=c
Llinea_sed=$Lnumero_linea$Lletra
sed -i "$Llinea_sed $var1" ~/MMDVMHost/MMDVMPLUS.ini

#Longitude
var=`grep -n -m 1 '\<Longitude\>' ~/Downloads/MMDVMPLUS.ini`
var1=`grep -m 1 '\<Longitude\>' ~/Downloads/MMDVMPLUS.ini`
buscar=":"
largo_linea=`expr index $var $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea=`expr substr $var 1 $largo_linea`
LGvar=`grep -n -m 1 '\<Longitude\>' ~/MMDVMHost/MMDVMPLUS.ini`
buscar=":"
LGlargo_linea=`expr index $LGvar $buscar`
LGlargo_linea=`expr $LGlargo_linea - 1`
LGnumero_linea=`expr substr $LGvar 1 $LGlargo_linea`
LGletra=c
LGlinea_sed=$LGnumero_linea$LGletra
sed -i "$LGlinea_sed $var1" ~/MMDVMHost/MMDVMPLUS.ini

#Location
var=`grep -n -m 1 '\<Location\>' ~/Downloads/MMDVMPLUS.ini`
var1=`grep -m 1 '\<Location\>' ~/Downloads/MMDVMPLUS.ini`
buscar=":"
largo_linea=`expr index $var $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea=`expr substr $var 1 $largo_linea`
LOvar=`grep -n -m 1 '\<Location\>' ~/MMDVMHost/MMDVMPLUS.ini`
buscar=":"
LOlargo_linea=`expr index $LOvar $buscar`
LOlargo_linea=`expr $LOlargo_linea - 1`
LOnumero_linea=`expr substr $LOvar 1 $LOlargo_linea`
LOletra=c
LOlinea_sed=$LOnumero_linea$LOletra
sed -i "$LOlinea_sed $var1" ~/MMDVMHost/MMDVMPLUS.ini

#URL
var=`grep -n -m 1 '\<URL\>' ~/Downloads/MMDVMPLUS.ini`
var1=`grep -m 1 '\<URL\>' ~/Downloads/MMDVMPLUS.ini`
buscar=":"
largo_linea=`expr index $var $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea_url=`expr substr $var 1 $largo_linea`
Uvar=`grep -n -m 1 '\<URL\>' ~/MMDVMHost/MMDVMPLUS.ini`
Ubuscar=":"
Ulargo_linea=`expr index $Uvar $buscar`
Ulargo_linea=`expr $Ulargo_linea - 1`
Unumero_linea_url=`expr substr $Uvar 1 $largo_linea`
Uletra=c
Ulinea_sed=$Unumero_linea_url$Uletra
sed -i "$Ulinea_sed $var1" ~/MMDVMHost/MMDVMPLUS.ini

#Baliza 
var1=`grep -n -m 1 "\[CW Id\]" ~/Downloads/MMDVMPLUS.ini`
var2=`echo "$var1" | tr -d '[[:space:]]'`
buscar=":"
largo_linea=`expr index $var2 $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea=`expr substr $var2 1 $largo_linea`
numero_linea=`expr $numero_linea + 1`
CWvar1=`grep -n -m 1 "\[CW Id\]" ~/MMDVMHost/MMDVMPLUS.ini`
CWvar2=`echo "$CWvar1" | tr -d '[[:space:]]'`
buscar=":"
CWlargo_linea=`expr index $CWvar2 $buscar`
CWlargo_linea=`expr $CWlargo_linea - 1`
CWnumero_linea=`expr substr $CWvar2 1 $CWlargo_linea`
CWnumero_linea=`expr $CWnumero_linea + 1`
CWCW=$(awk "NR==$CWnumero_linea" ~/Downloads/MMDVMPLUS.ini)
CWletra=c
CWlinea_sed=$CWnumero_linea$CWletra
sed -i "$CWlinea_sed $CWCW" ~/MMDVMHost/MMDVMPLUS.ini

#RXLevel
var=`grep -n -m 1 '\<RXLevel\>' ~/Downloads/MMDVMPLUS.ini`
var1=`grep -m 1 '\<RXLevel\>' ~/Downloads/MMDVMPLUS.ini`
buscar=":"
largo_linea=`expr index $var $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea=`expr substr $var 1 $largo_linea`
RLvar=`grep -n -m 1 '\<RXLevel\>' ~/MMDVMHost/MMDVMPLUS.ini`
buscar=":"
RLlargo_linea=`expr index $RLvar $buscar`
RLlargo_linea=`expr $RLlargo_linea - 1`
RLnumero_linea=`expr substr $RLvar 1 $RLlargo_linea`
RLletra=c
RLlinea_sed=$RLnumero_linea$RLletra
sed -i "$RLlinea_sed $var1" ~/MMDVMHost/MMDVMPLUS.ini

#TXLevel
var=`grep -n -m 1 '\<TXLevel\>' ~/Downloads/MMDVMPLUS.ini`
var1=`grep -m 1 '\<TXLevel\>' ~/Downloads/MMDVMPLUS.ini`
buscar=":"
largo_linea=`expr index $var $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea=`expr substr $var 1 $largo_linea`
TLvar=`grep -n -m 1 '\<TXLevel\>' ~/MMDVMHost/MMDVMPLUS.ini`
buscar=":"
TLlargo_linea=`expr index $TLvar $buscar`
TLlargo_linea=`expr $TLlargo_linea - 1`
TLnumero_linea=`expr substr $TLvar 1 $TLlargo_linea`
TLletra=c
TLlinea_sed=$TLnumero_linea$TLletra
sed -i "$TLlinea_sed $var1" ~/MMDVMHost/MMDVMPLUS.ini

#Module
var=`grep -n -m 1 '\<Module\>' ~/Downloads/MMDVMPLUS.ini`
var1=`grep -m 1 '\<Module\>' ~/Downloads/MMDVMPLUS.ini`
buscar=":"
largo_linea=`expr index $var $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea=`expr substr $var 1 $largo_linea`
MOvar=`grep -n -m 1 '\<Module\>' ~/MMDVMHost/MMDVMPLUS.ini`
buscar=":"
MOlargo_linea=`expr index $MOvar $buscar`
MOlargo_linea=`expr $MOlargo_linea - 1`
MOnumero_linea=`expr substr $MOvar 1 $MOlargo_linea`
MOletra=c
MOlinea_sed=$MOnumero_linea$MOletra
sed -i "$MOlinea_sed $var1" ~/MMDVMHost/MMDVMPLUS.ini

#Txinvert
var=`grep -n -m 1 '\<TXInvert\>' ~/Downloads/MMDVMPLUS.ini`
var1=`grep -m 1 '\<TXInvert\>' ~/Downloads/MMDVMPLUS.ini`
buscar=":"
largo_linea=`expr index $var $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea=`expr substr $var 1 $largo_linea`
TIvar=`grep -n -m 1 '\<TXInvert\>' ~/MMDVMHost/MMDVMPLUS.ini`
buscar=":"
TIlargo_linea=`expr index $TIvar $buscar`
TIlargo_linea=`expr $TIlargo_linea - 1`
TInumero_linea=`expr substr $TIvar 1 $TIlargo_linea`
TIletra=c
TIlinea_sed=$TInumero_linea$TIletra
sed -i "$TIlinea_sed $var1" ~/MMDVMHost/MMDVMPLUS.ini

#Modem capturado de la linea txinvert -1
numero_linea_MODEM=`expr $numero_linea - 1` # Downloads
MOnumero_linea_MODEM=`expr $TInumero_linea - 1` # MMDVMHost
modem=$(awk "NR==$numero_linea_MODEM" ~/Downloads/MMDVMPLUS.ini)
TIletra=c
TIlinea_sed=$MOnumero_linea_MODEM$TIletra
sed -i "$TIlinea_sed $modem" ~/MMDVMHost/MMDVMPLUS.ini

#Address
var=`grep -n -m 1 '\<Address\>' ~/Downloads/MMDVMPLUS.ini`
var1=`grep -m 1 '\<Address\>' ~/Downloads/MMDVMPLUS.ini`
buscar=":"
largo_linea=`expr index $var $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea_Address=`expr substr $var 1 $largo_linea`
ADvar=`grep -n -m 1 '\<Address\>' ~/MMDVMHost/MMDVMPLUS.ini`
buscar=":"
ADlargo_linea=`expr index $ADvar $buscar`
ADlargo_linea=`expr $ADlargo_linea - 1`
ADnumero_linea_Address=`expr substr $ADvar 1 $ADlargo_linea`
ADletra=c
ADlinea_sed=$ADnumero_linea_Address$ADletra
sed -i "$ADlinea_sed $var1" ~/MMDVMHost/MMDVMPLUS.ini

#Port captura de la linea Address +1
numero_linea_Address=`expr $numero_linea_Address + 1` # Downloads
ADnumero_linea_Address=`expr $ADnumero_linea_Address + 1` # MMDVMHost
port=$(awk "NR==$numero_linea_Address" ~/Downloads/MMDVMPLUS.ini)
ADletra=c
ADlinea_sed=$ADnumero_linea_Address$ADletra
sed -i "$ADlinea_sed $port" ~/MMDVMHost/MMDVMPLUS.ini

#Password
var=`grep -n -m 1 '\<Password\>' ~/Downloads/MMDVMPLUS.ini`
var1=`grep -m 1 '\<Password\>' ~/Downloads/MMDVMPLUS.ini`
buscar=":"
largo_linea=`expr index $var $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea_password=`expr substr $var 1 $largo_linea`
PWvar=`grep -n -m 1 '\<Password\>' ~/MMDVMHost/MMDVMPLUS.ini`
buscar=":"
PWlargo_linea=`expr index $PWvar $buscar`
PWlargo_linea=`expr $PWlargo_linea - 1`
PWnumero_linea_password=`expr substr $PWvar 1 $PWlargo_linea`
PWletra=c
PWlinea_sed=$PWnumero_linea_password$PWletra
sed -i "$PWlinea_sed $var1" ~/MMDVMHost/MMDVMPLUS.ini

#Options linea password  +1
numero_linea_password=`expr $numero_linea_password + 1` # Downloads
PWnumero_linea_password=`expr $PWnumero_linea_password + 1` # MMDVMHost
option=$(awk "NR==$numero_linea_password" ~/Downloads/MMDVMPLUS.ini)
PWletra=c
PWlinea_sed=$PWnumero_linea_password$PWletra
sed -i "$PWlinea_sed $option" ~/MMDVMHost/MMDVMPLUS.ini

#ScreenLayout
var=`grep -n -m 1 '\<ScreenLayout\>' ~/Downloads/MMDVMPLUS.ini`
var1=`grep -m 1 '\<ScreenLayout\>' ~/Downloads/MMDVMPLUS.ini`
buscar=":"
largo_linea=`expr index $var $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea=`expr substr $var 1 $largo_linea`
SCvar=`grep -n -m 1 '\<ScreenLayout\>' ~/MMDVMHost/MMDVMPLUS.ini`
buscar=":"
SClargo_linea=`expr index $SCvar $buscar`
SClargo_linea=`expr $SClargo_linea - 1`
SCnumero_linea=`expr substr $SCvar 1 $SClargo_linea`
SCletra=c
SClinea_sed=$SCnumero_linea$SCletra
sed -i "$SClinea_sed $var1" ~/MMDVMHost/MMDVMPLUS.ini

#Brightness
var=`grep -n -m 1 '\<Brightness\>' ~/Downloads/MMDVMPLUS.ini`
var1=`grep -m 1 '\<Brightness\>' ~/Downloads/MMDVMPLUS.ini`
buscar=":"
largo_linea=`expr index $var $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea=`expr substr $var 1 $largo_linea`
BRvar=`grep -n -m 1 '\<Brightness\>' ~/MMDVMHost/MMDVMPLUS.ini`
buscar=":"
BRlargo_linea=`expr index $BRvar $buscar`
BRlargo_linea=`expr $BRlargo_linea - 1`
BRnumero_linea=`expr substr $BRvar 1 $BRlargo_linea`
BRletra=c
BRlinea_sed=$BRnumero_linea$BRletra
sed -i "$BRlinea_sed $var1" ~/MMDVMHost/MMDVMPLUS.ini

#Slot1
var=`grep -n -m 1 '\<Slot1\>' ~/Downloads/MMDVMPLUS.ini`
var1=`grep -m 1 '\<Slot1\>' ~/Downloads/MMDVMPLUS.ini`
buscar=":"
largo_linea=`expr index $var $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea=`expr substr $var 1 $largo_linea`
SLvar=`grep -n -m 1 '\<Slot1\>' ~/MMDVMHost/MMDVMPLUS.ini`
buscar=":"
SLlargo_linea=`expr index $SLvar $buscar`
SLlargo_linea=`expr $SLlargo_linea - 1`
SLnumero_linea=`expr substr $SLvar 1 $SLlargo_linea`
SLletra=c
SLlinea_sed=$SLnumero_linea$SLletra
sed -i "$SLlinea_sed $var1" ~/MMDVMHost/MMDVMPLUS.ini

#DisplayLevel
var=`grep -n -m 1 '\<DisplayLevel\>' ~/Downloads/MMDVMPLUS.ini`
var1=`grep -m 1 '\<DisplayLevel\>' ~/Downloads/MMDVMPLUS.ini`
buscar=":"
largo_linea=`expr index $var $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea=`expr substr $var 1 $largo_linea`
DIvar=`grep -n -m 1 '\<DisplayLevel\>' ~/MMDVMHost/MMDVMPLUS.ini`
buscar=":"
DIlargo_linea=`expr index $DIvar $buscar`
DIlargo_linea=`expr $DIlargo_linea - 1`
DInumero_linea=`expr substr $DIvar 1 $DIlargo_linea`
DIletra=c
DIlinea_sed=$DInumero_linea$DIletra
sed -i "$DIlinea_sed $var1" ~/MMDVMHost/MMDVMPLUS.ini

#TXHang
var=`grep -n -m 1 '\<TXHang\>' ~/Downloads/MMDVMPLUS.ini`
var1=`grep -m 1 '\<TXHang\>' ~/Downloads/MMDVMPLUS.ini`
buscar=":"
largo_linea=`expr index $var $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea=`expr substr $var 1 $largo_linea`
THvar=`grep -n -m 1 '\<TXHang\>' ~/MMDVMHost/MMDVMPLUS.ini`
buscar=":"
THlargo_linea=`expr index $THvar $buscar`
THlargo_linea=`expr $THlargo_linea - 1`
THnumero_linea=`expr substr $THvar 1 $THlargo_linea`
THletra=c
THlinea_sed=$THnumero_linea$THletra
sed -i "$THlinea_sed $var1" ~/MMDVMHost/MMDVMPLUS.ini

#D-Star
var=`grep -n -m 1 "\[D-Star\]" ~/Downloads/MMDVMPLUS.ini` 
var1=`grep -m 1 "\[D-Star\]" ~/Downloads/MMDVMPLUS.ini`
buscar=":"
largo_linea=`expr index $var $buscar` 
largo_linea=`expr $largo_linea - 1` 
numero_linea=`expr substr $var 1 $largo_linea` 
numero_linea_dstar=`expr $numero_linea + 1` 
DSvar=`grep -n -m 1 "\[D-Star\]" ~/MMDVMHost/MMDVMPLUS.ini` 
DSvar1=`grep -m 1 "\[D-Star\]" ~/MMDVMHost/MMDVMPLUS.ini`
buscar=":"
DSlargo_linea=`expr index $DSvar $buscar` 
DSlargo_linea=`expr $DSlargo_linea - 1` 
DSnumero_linea=`expr substr $DSvar 1 $DSlargo_linea` 
DSnumero_linea_dstar=`expr $DSnumero_linea + 1`
DSDS=$(awk "NR==$numero_linea_dstar" ~/Downloads/MMDVMPLUS.ini) 
DSletrac=c
DSlinea_sed=$DSnumero_linea_dstar$DSletrac
sed -i "$DSlinea_sed $DSDS" ~/MMDVMHost/MMDVMPLUS.ini

#DMR
var=`grep -n -m 1 "\[DMR\]" ~/Downloads/MMDVMPLUS.ini` 
var1=`grep -m 1 "\[DMR\]" ~/Downloads/MMDVMPLUS.ini`
buscar=":"
largo_linea=`expr index $var $buscar` 
largo_linea=`expr $largo_linea - 1` 
numero_linea=`expr substr $var 1 $largo_linea` 
numero_linea_dmr=`expr $numero_linea + 1` 
DMvar=`grep -n "\[DMR\]" ~/MMDVMHost/MMDVMPLUS.ini` 
DMvar1=`grep -n -m 1 "\[DMR\]" ~/MMDVMHost/MMDVMPLUS.ini`
buscar=":"
DMlargo_linea=`expr index $DMvar $buscar` 
DMlargo_linea=`expr $DMlargo_linea - 1` 
DMnumero_linea=`expr substr $DMvar 1 $DMlargo_linea` 
DMnumero_linea_dmr=`expr $DMnumero_linea + 1` 
DMDM=$(awk "NR==$numero_linea_dmr" ~/Downloads/MMDVMPLUS.ini)
DMletrac=c
DMlinea_sed=$DMnumero_linea_dmr$DMletrac 
sed -i "$DMlinea_sed $DMDM" ~/MMDVMHost/MMDVMPLUS.ini

#P25
var=`grep -n -m 1 "\[P25\]" ~/Downloads/MMDVMPLUS.ini` 
var1=`grep -m 1 "\[P25\]" ~/Downloads/MMDVMPLUS.ini`
buscar=":"
largo_linea=`expr index $var $buscar` 
largo_linea=`expr $largo_linea - 1` 
numero_linea=`expr substr $var 1 $largo_linea` 
numero_linea_p25=`expr $numero_linea + 1` 
P2var=`grep -n -m 1 "\[P25\]" ~/MMDVMHost/MMDVMPLUS.ini` 
P2var1=`grep -n "\[P25\]" ~/MMDVMHost/MMDVMPLUS.ini`
buscar=":"
P2largo_linea=`expr index $P2var $buscar` 
P2largo_linea=`expr $P2largo_linea - 1` 
P2numero_linea=`expr substr $P2var 1 $P2largo_linea` 
P2numero_linea_p25=`expr $P2numero_linea + 1` 
P2P2=$(awk "NR==$numero_linea_p25" ~/Downloads/MMDVMPLUS.ini)
P2letrac=c
P2linea_sed=$P2numero_linea_p25$P2letrac
sed -i "$P2linea_sed $P2P2" ~/MMDVMHost/MMDVMPLUS.ini

#NXDN
var=`grep -n -m 1 "\[NXDN\]" ~/Downloads/MMDVMPLUS.ini` 
var1=`grep -m 1 "\[NXDN\]" ~/Downloads/MMDVMPLUS.ini`
buscar=":"
largo_linea=`expr index $var $buscar` 
largo_linea=`expr $largo_linea - 1` 
numero_linea=`expr substr $var 1 $largo_linea` 
numero_linea_p25=`expr $numero_linea + 1`
P2P2=$(awk "NR==$numero_linea_p25" ~/Downloads/MMDVMPLUS.ini)
P2var=`grep -n -m 1 "\[NXDN\]" ~/MMDVMHost/MMDVMPLUS.ini` 
P2var1=`grep -n "\[NXDN\]" ~/MMDVMHost/MMDVMPLUS.ini`
buscar=":"
P2largo_linea=`expr index $P2var $buscar` 
P2largo_linea=`expr $P2largo_linea - 1` 
P2numero_linea=`expr substr $P2var 1 $P2largo_linea` 
P2numero_linea_p25=`expr $P2numero_linea + 1` 
P2letrac=c
P2linea_sed=$P2numero_linea_p25$P2letrac
sed -i "$P2linea_sed $P2P2" ~/MMDVMHost/MMDVMPLUS.ini

#FUSION
var1=`grep -n -m 1 "\[System Fusion\]" ~/Downloads/MMDVMPLUS.ini`
var2=`echo "$var1" | tr -d '[[:space:]]'`
buscar=":"
largo_linea=`expr index $var2 $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea=`expr substr $var2 1 $largo_linea`
numero_linea=`expr $numero_linea + 1`
CWvar1=`grep -n -m 1 "\[System Fusion\]" ~/MMDVMHost/MMDVMPLUS.ini`
CWvar2=`echo "$CWvar1" | tr -d '[[:space:]]'`
buscar=":"
CWlargo_linea=`expr index $CWvar2 $buscar`
CWlargo_linea=`expr $CWlargo_linea - 1`
CWnumero_linea=`expr substr $CWvar2 1 $CWlargo_linea`
CWnumero_linea=`expr $CWnumero_linea + 1`
CWCW=$(awk "NR==$CWnumero_linea" ~/Downloads/MMDVMPLUS.ini)
CWletra=c
CWlinea_sed=$CWnumero_linea$CWletra
sed -i "$CWlinea_sed $CWCW" ~/MMDVMHost/MMDVMPLUS.ini

#Nextion
var=`grep -n -m 1 "\[Nextion\]" ~/Downloads/MMDVMPLUS.ini` 
var1=`grep -m 1 "\[Nextion\]" ~/Downloads/MMDVMPLUS.ini`
buscar=":"
largo_linea=`expr index $var $buscar` 
largo_linea=`expr $largo_linea - 1` 
numero_linea=`expr substr $var 1 $largo_linea` 
numero_linea_p25=`expr $numero_linea + 2` 
P2var=`grep -n -m 1 "\[Nextion\]" ~/MMDVMHost/MMDVMPLUS.ini` 
P2var1=`grep -n "\[Nextion\]" ~/MMDVMHost/MMDVMPLUS.ini`
buscar=":"
P2largo_linea=`expr index $P2var $buscar` 
P2largo_linea=`expr $P2largo_linea - 1` 
P2numero_linea=`expr substr $P2var 1 $P2largo_linea` 
P2numero_linea_p25=`expr $P2numero_linea + 2` 
P2P2=$(awk "NR==$numero_linea_p25" ~/Downloads/MMDVMPLUS.ini)
P2letrac=c
P2linea_sed=$P2numero_linea_p25$P2letrac
sed -i "$P2linea_sed $P2P2" ~/MMDVMHost/MMDVMPLUS.ini

#======================= MMDVMPLUS.ini_copia   ============================

# Callsign 
var=`grep -n -m 1 '\<Callsign\>' ~/Downloads/MMDVMPLUS.ini_copia` # 2:Callsign=EA3EIZ
var1=`grep -m 1 '\<Callsign\>' ~/Downloads/MMDVMPLUS.ini_copia` # Callsign=EA3EIZ
buscar=":"
largo_linea=`expr index $var $buscar` #comprueba el largo incluyendo los dos puntos (:)
largo_linea=`expr $largo_linea - 1` #comprueba el largo quitando los dos puntos (:)
numero_linea=`expr substr $var 1 $largo_linea` # recoge numero linea Downloads
Hvar=`grep -n -m 1 '\<Callsign\>' ~/MMDVMHost/MMDVMPLUS.ini_copia` # 2:Callsign=EA3EIZ
buscar=":"
Hlargo_linea=`expr index $Hvar $buscar` 
Hlargo_linea=`expr $Hlargo_linea - 1` 
Hnumero_linea=`expr substr $Hvar 1 $Hlargo_linea` # recoge numero linea MMDXVMHost
Hletra=c
Hlinea_sed=$Hnumero_linea$Hletra
sed -i "$Hlinea_sed $var1" ~/MMDVMHost/MMDVMPLUS.ini_copia

#Id capturado de la linea 3
Id=$(awk "NR==3" ~/Downloads/MMDVMPLUS.ini_copia)
sed -i "3c $Id" ~/MMDVMHost/MMDVMPLUS.ini_copia

#Timeout capturado de la linea 4
timeou=$(awk "NR==4" ~/Downloads/MMDVMPLUS.ini_copia)
sed -i "4c $timeou" ~/MMDVMHost/MMDVMPLUS.ini_copia

#Duplex
var=`grep -n -m 1 '\<Duplex\>' ~/Downloads/MMDVMPLUS.ini_copia`
var1=`grep -m 1 '\<Duplex\>' ~/Downloads/MMDVMPLUS.ini_copia`
buscar=":"
largo_linea=`expr index $var $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea=`expr substr $var 1 $largo_linea`
Dvar=`grep -n -m 1 '\<Duplex\>' ~/MMDVMHost/MMDVMPLUS.ini_copia`
buscar=":"
Dlargo_linea=`expr index $Dvar $buscar`
Dlargo_linea=`expr $Dlargo_linea - 1`
Dnumero_linea=`expr substr $Dvar 1 $Dlargo_linea`
Dletra=c
Dlinea_sed=$Dnumero_linea$Dletra
sed -i "$Dlinea_sed $var1" ~/MMDVMHost/MMDVMPLUS.ini_copia

#RFModeHang
var=`grep -n -m 1 '\<RFModeHang\>' ~/Downloads/MMDVMPLUS.ini_copia`
var1=`grep -m 1 '\<RFModeHang\>' ~/Downloads/MMDVMPLUS.ini_copia`
buscar=":"
largo_linea=`expr index $var $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea=`expr substr $var 1 $largo_linea`
Rvar=`grep -n -m 1 '\<RFModeHang\>' ~/MMDVMHost/MMDVMPLUS.ini_copia`
buscar=":"
Rlargo_linea=`expr index $Rvar $buscar`
Rlargo_linea=`expr $Rlargo_linea - 1`
Rnumero_linea=`expr substr $Rvar 1 $Rlargo_linea`
Rletra=c
Rlinea_sed=$Rnumero_linea$Rletra
sed -i "$Rlinea_sed $var1" ~/MMDVMHost/MMDVMPLUS.ini_copia

#Display
var=`grep -n -m 1 '\<Display\>' ~/Downloads/MMDVMPLUS.ini_copia`
var1=`grep -m 1 '\<Display\>' ~/Downloads/MMDVMPLUS.ini_copia`
buscar=":"
largo_linea=`expr index $var $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea=`expr substr $var 1 $largo_linea`
Dvar=`grep -n -m 1 '\<Display\>' ~/MMDVMHost/MMDVMPLUS.ini_copia`
buscar=":"
Dlargo_linea=`expr index $Dvar $buscar`
Dlargo_linea=`expr $Dlargo_linea - 1`
Dnumero_linea=`expr substr $Dvar 1 $Dlargo_linea`
Dletra=c
Dlinea_sed=$Dnumero_linea$Dletra
sed -i "$Dlinea_sed $var1" ~/MMDVMHost/MMDVMPLUS.ini_copia

#RXFrequency
var=`grep -n -m 1 '\<RXFrequency\>' ~/Downloads/MMDVMPLUS.ini_copia`
var1=`grep -m 1 '\<RXFrequency\>' ~/Downloads/MMDVMPLUS.ini_copia`
buscar=":"
largo_linea=`expr index $var $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea=`expr substr $var 1 $largo_linea`
Xvar=`grep -n -m 1 '\<RXFrequency\>' ~/MMDVMHost/MMDVMPLUS.ini_copia`
buscar=":"
Xlargo_linea=`expr index $Xvar $buscar`
Xlargo_linea=`expr $Xlargo_linea - 1`
Xnumero_linea=`expr substr $Xvar 1 $Xlargo_linea`
Xletra=c
Xlinea_sed=$Xnumero_linea$Xletra
sed -i "$Xlinea_sed $var1" ~/MMDVMHost/MMDVMPLUS.ini_copia

#TXFrequency
var=`grep -n -m 1 '\<TXFrequency\>' ~/Downloads/MMDVMPLUS.ini_copia`
var1=`grep -m 1 '\<TXFrequency\>' ~/Downloads/MMDVMPLUS.ini_copia`
buscar=":"
largo_linea=`expr index $var $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea=`expr substr $var 1 $largo_linea`
Tvar=`grep -n -m 1 '\<TXFrequency\>' ~/MMDVMHost/MMDVMPLUS.ini_copia`
buscar=":"
Tlargo_linea=`expr index $Tvar $buscar`
Tlargo_linea=`expr $Tlargo_linea - 1`
Tnumero_linea=`expr substr $Tvar 1 $Tlargo_linea`
Tletra=c
Tlinea_sed=$Tnumero_linea$Tletra
sed -i "$Tlinea_sed $var1" ~/MMDVMHost/MMDVMPLUS.ini_copia

#Latitude
var=`grep -n -m 1 '\<Latitude\>' ~/Downloads/MMDVMPLUS.ini_copia`
var1=`grep -m 1 '\<Latitude\>' ~/Downloads/MMDVMPLUS.ini_copia`
buscar=":"
largo_linea=`expr index $var $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea=`expr substr $var 1 $largo_linea`
Lvar=`grep -n -m 1 '\<Latitude\>' ~/MMDVMHost/MMDVMPLUS.ini_copia`
buscar=":"
Llargo_linea=`expr index $Lvar $buscar`
Llargo_linea=`expr $Llargo_linea - 1`
Lnumero_linea=`expr substr $Lvar 1 $Llargo_linea`
Lletra=c
Llinea_sed=$Lnumero_linea$Lletra
sed -i "$Llinea_sed $var1" ~/MMDVMHost/MMDVMPLUS.ini_copia

#Longitude
var=`grep -n -m 1 '\<Longitude\>' ~/Downloads/MMDVMPLUS.ini_copia`
var1=`grep -m 1 '\<Longitude\>' ~/Downloads/MMDVMPLUS.ini_copia`
buscar=":"
largo_linea=`expr index $var $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea=`expr substr $var 1 $largo_linea`
LGvar=`grep -n -m 1 '\<Longitude\>' ~/MMDVMHost/MMDVMPLUS.ini_copia`
buscar=":"
LGlargo_linea=`expr index $LGvar $buscar`
LGlargo_linea=`expr $LGlargo_linea - 1`
LGnumero_linea=`expr substr $LGvar 1 $LGlargo_linea`
LGletra=c
LGlinea_sed=$LGnumero_linea$LGletra
sed -i "$LGlinea_sed $var1" ~/MMDVMHost/MMDVMPLUS.ini_copia

#Location
var=`grep -n -m 1 '\<Location\>' ~/Downloads/MMDVMPLUS.ini_copia`
var1=`grep -m 1 '\<Location\>' ~/Downloads/MMDVMPLUS.ini_copia`
buscar=":"
largo_linea=`expr index $var $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea=`expr substr $var 1 $largo_linea`
LOvar=`grep -n -m 1 '\<Location\>' ~/MMDVMHost/MMDVMPLUS.ini_copia`
buscar=":"
LOlargo_linea=`expr index $LOvar $buscar`
LOlargo_linea=`expr $LOlargo_linea - 1`
LOnumero_linea=`expr substr $LOvar 1 $LOlargo_linea`
LOletra=c
LOlinea_sed=$LOnumero_linea$LOletra
sed -i "$LOlinea_sed $var1" ~/MMDVMHost/MMDVMPLUS.ini_copia

#URL
var=`grep -n -m 1 '\<URL\>' ~/Downloads/MMDVMPLUS.ini_copia`
var1=`grep -m 1 '\<URL\>' ~/Downloads/MMDVMPLUS.ini_copia`
buscar=":"
largo_linea=`expr index $var $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea_url=`expr substr $var 1 $largo_linea`
Uvar=`grep -n -m 1 '\<URL\>' ~/MMDVMHost/MMDVMPLUS.ini_copia`
Ubuscar=":"
Ulargo_linea=`expr index $Uvar $buscar`
Ulargo_linea=`expr $Ulargo_linea - 1`
Unumero_linea_url=`expr substr $Uvar 1 $largo_linea`
Uletra=c
Ulinea_sed=$Unumero_linea_url$Uletra
sed -i "$Ulinea_sed $var1" ~/MMDVMHost/MMDVMPLUS.ini_copia

#Baliza 
var1=`grep -n -m 1 "\[CW Id\]" ~/Downloads/MMDVMPLUS.ini_copia`
var2=`echo "$var1" | tr -d '[[:space:]]'`
buscar=":"
largo_linea=`expr index $var2 $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea=`expr substr $var2 1 $largo_linea`
numero_linea=`expr $numero_linea + 1`
CWvar1=`grep -n -m 1 "\[CW Id\]" ~/MMDVMHost/MMDVMPLUS.ini_copia`
CWvar2=`echo "$CWvar1" | tr -d '[[:space:]]'`
buscar=":"
CWlargo_linea=`expr index $CWvar2 $buscar`
CWlargo_linea=`expr $CWlargo_linea - 1`
CWnumero_linea=`expr substr $CWvar2 1 $CWlargo_linea`
CWnumero_linea=`expr $CWnumero_linea + 1`
CWCW=$(awk "NR==$CWnumero_linea" ~/Downloads/MMDVMPLUS.ini_copia)
CWletra=c
CWlinea_sed=$CWnumero_linea$CWletra
sed -i "$CWlinea_sed $CWCW" ~/MMDVMHost/MMDVMPLUS.ini_copia

#RXLevel
var=`grep -n -m 1 '\<RXLevel\>' ~/Downloads/MMDVMPLUS.ini_copia`
var1=`grep -m 1 '\<RXLevel\>' ~/Downloads/MMDVMPLUS.ini_copia`
buscar=":"
largo_linea=`expr index $var $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea=`expr substr $var 1 $largo_linea`
RLvar=`grep -n -m 1 '\<RXLevel\>' ~/MMDVMHost/MMDVMPLUS.ini_copia`
buscar=":"
RLlargo_linea=`expr index $RLvar $buscar`
RLlargo_linea=`expr $RLlargo_linea - 1`
RLnumero_linea=`expr substr $RLvar 1 $RLlargo_linea`
RLletra=c
RLlinea_sed=$RLnumero_linea$RLletra
sed -i "$RLlinea_sed $var1" ~/MMDVMHost/MMDVMPLUS.ini_copia

#TXLevel
var=`grep -n -m 1 '\<TXLevel\>' ~/Downloads/MMDVMPLUS.ini_copia`
var1=`grep -m 1 '\<TXLevel\>' ~/Downloads/MMDVMPLUS.ini_copia`
buscar=":"
largo_linea=`expr index $var $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea=`expr substr $var 1 $largo_linea`
TLvar=`grep -n -m 1 '\<TXLevel\>' ~/MMDVMHost/MMDVMPLUS.ini_copia`
buscar=":"
TLlargo_linea=`expr index $TLvar $buscar`
TLlargo_linea=`expr $TLlargo_linea - 1`
TLnumero_linea=`expr substr $TLvar 1 $TLlargo_linea`
TLletra=c
TLlinea_sed=$TLnumero_linea$TLletra
sed -i "$TLlinea_sed $var1" ~/MMDVMHost/MMDVMPLUS.ini_copia

#Module
var=`grep -n -m 1 '\<Module\>' ~/Downloads/MMDVMPLUS.ini_copia`
var1=`grep -m 1 '\<Module\>' ~/Downloads/MMDVMPLUS.ini_copia`
buscar=":"
largo_linea=`expr index $var $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea=`expr substr $var 1 $largo_linea`
MOvar=`grep -n -m 1 '\<Module\>' ~/MMDVMHost/MMDVMPLUS.ini_copia`
buscar=":"
MOlargo_linea=`expr index $MOvar $buscar`
MOlargo_linea=`expr $MOlargo_linea - 1`
MOnumero_linea=`expr substr $MOvar 1 $MOlargo_linea`
MOletra=c
MOlinea_sed=$MOnumero_linea$MOletra
sed -i "$MOlinea_sed $var1" ~/MMDVMHost/MMDVMPLUS.ini_copia

#Txinvert
var=`grep -n -m 1 '\<TXInvert\>' ~/Downloads/MMDVMPLUS.ini_copia`
var1=`grep -m 1 '\<TXInvert\>' ~/Downloads/MMDVMPLUS.ini_copia`
buscar=":"
largo_linea=`expr index $var $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea=`expr substr $var 1 $largo_linea`
TIvar=`grep -n -m 1 '\<TXInvert\>' ~/MMDVMHost/MMDVMPLUS.ini_copia`
buscar=":"
TIlargo_linea=`expr index $TIvar $buscar`
TIlargo_linea=`expr $TIlargo_linea - 1`
TInumero_linea=`expr substr $TIvar 1 $TIlargo_linea`
TIletra=c
TIlinea_sed=$TInumero_linea$TIletra
sed -i "$TIlinea_sed $var1" ~/MMDVMHost/MMDVMPLUS.ini_copia

#Modem capturado de la linea txinvert -1
numero_linea_MODEM=`expr $numero_linea - 1` # Downloads
MOnumero_linea_MODEM=`expr $TInumero_linea - 1` # MMDVMHost
modem=$(awk "NR==$numero_linea_MODEM" ~/Downloads/MMDVMPLUS.ini_copia)
TIletra=c
TIlinea_sed=$MOnumero_linea_MODEM$TIletra
sed -i "$TIlinea_sed $modem" ~/MMDVMHost/MMDVMPLUS.ini_copia

#Address
var=`grep -n -m 1 '\<Address\>' ~/Downloads/MMDVMPLUS.ini_copia`
var1=`grep -m 1 '\<Address\>' ~/Downloads/MMDVMPLUS.ini_copia`
buscar=":"
largo_linea=`expr index $var $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea_Address=`expr substr $var 1 $largo_linea`
ADvar=`grep -n -m 1 '\<Address\>' ~/MMDVMHost/MMDVMPLUS.ini_copia`
buscar=":"
ADlargo_linea=`expr index $ADvar $buscar`
ADlargo_linea=`expr $ADlargo_linea - 1`
ADnumero_linea_Address=`expr substr $ADvar 1 $ADlargo_linea`
ADletra=c
ADlinea_sed=$ADnumero_linea_Address$ADletra
sed -i "$ADlinea_sed $var1" ~/MMDVMHost/MMDVMPLUS.ini_copia

#Port captura de la linea Address +1
numero_linea_Address=`expr $numero_linea_Address + 1` # Downloads
ADnumero_linea_Address=`expr $ADnumero_linea_Address + 1` # MMDVMHost
port=$(awk "NR==$numero_linea_Address" ~/Downloads/MMDVMPLUS.ini_copia)
ADletra=c
ADlinea_sed=$ADnumero_linea_Address$ADletra
sed -i "$ADlinea_sed $port" ~/MMDVMHost/MMDVMPLUS.ini_copia

#Password
var=`grep -n -m 1 '\<Password\>' ~/Downloads/MMDVMPLUS.ini_copia`
var1=`grep -m 1 '\<Password\>' ~/Downloads/MMDVMPLUS.ini_copia`
buscar=":"
largo_linea=`expr index $var $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea_password=`expr substr $var 1 $largo_linea`
PWvar=`grep -n -m 1 '\<Password\>' ~/MMDVMHost/MMDVMPLUS.ini_copia`
buscar=":"
PWlargo_linea=`expr index $PWvar $buscar`
PWlargo_linea=`expr $PWlargo_linea - 1`
PWnumero_linea_password=`expr substr $PWvar 1 $PWlargo_linea`
PWletra=c
PWlinea_sed=$PWnumero_linea_password$PWletra
sed -i "$PWlinea_sed $var1" ~/MMDVMHost/MMDVMPLUS.ini_copia

#Options linea password  +1
numero_linea_password=`expr $numero_linea_password + 1` # Downloads
PWnumero_linea_password=`expr $PWnumero_linea_password + 1` # MMDVMHost
option=$(awk "NR==$numero_linea_password" ~/Downloads/MMDVMPLUS.ini_copia)
PWletra=c
PWlinea_sed=$PWnumero_linea_password$PWletra
sed -i "$PWlinea_sed $option" ~/MMDVMHost/MMDVMPLUS.ini_copia

#ScreenLayout
var=`grep -n -m 1 '\<ScreenLayout\>' ~/Downloads/MMDVMPLUS.ini_copia`
var1=`grep -m 1 '\<ScreenLayout\>' ~/Downloads/MMDVMPLUS.ini_copia`
buscar=":"
largo_linea=`expr index $var $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea=`expr substr $var 1 $largo_linea`
SCvar=`grep -n -m 1 '\<ScreenLayout\>' ~/MMDVMHost/MMDVMPLUS.ini_copia`
buscar=":"
SClargo_linea=`expr index $SCvar $buscar`
SClargo_linea=`expr $SClargo_linea - 1`
SCnumero_linea=`expr substr $SCvar 1 $SClargo_linea`
SCletra=c
SClinea_sed=$SCnumero_linea$SCletra
sed -i "$SClinea_sed $var1" ~/MMDVMHost/MMDVMPLUS.ini_copia

#Brightness
var=`grep -n -m 1 '\<Brightness\>' ~/Downloads/MMDVMPLUS.ini_copia`
var1=`grep -m 1 '\<Brightness\>' ~/Downloads/MMDVMPLUS.ini_copia`
buscar=":"
largo_linea=`expr index $var $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea=`expr substr $var 1 $largo_linea`
BRvar=`grep -n -m 1 '\<Brightness\>' ~/MMDVMHost/MMDVMPLUS.ini_copia`
buscar=":"
BRlargo_linea=`expr index $BRvar $buscar`
BRlargo_linea=`expr $BRlargo_linea - 1`
BRnumero_linea=`expr substr $BRvar 1 $BRlargo_linea`
BRletra=c
BRlinea_sed=$BRnumero_linea$BRletra
sed -i "$BRlinea_sed $var1" ~/MMDVMHost/MMDVMPLUS.ini_copia

#Slot1
var=`grep -n -m 1 '\<Slot1\>' ~/Downloads/MMDVMPLUS.ini_copia`
var1=`grep -m 1 '\<Slot1\>' ~/Downloads/MMDVMPLUS.ini_copia`
buscar=":"
largo_linea=`expr index $var $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea=`expr substr $var 1 $largo_linea`
SLvar=`grep -n -m 1 '\<Slot1\>' ~/MMDVMHost/MMDVMPLUS.ini_copia`
buscar=":"
SLlargo_linea=`expr index $SLvar $buscar`
SLlargo_linea=`expr $SLlargo_linea - 1`
SLnumero_linea=`expr substr $SLvar 1 $SLlargo_linea`
SLletra=c
SLlinea_sed=$SLnumero_linea$SLletra
sed -i "$SLlinea_sed $var1" ~/MMDVMHost/MMDVMPLUS.ini_copia

#DisplayLevel
var=`grep -n -m 1 '\<DisplayLevel\>' ~/Downloads/MMDVMPLUS.ini_copia`
var1=`grep -m 1 '\<DisplayLevel\>' ~/Downloads/MMDVMPLUS.ini_copia`
buscar=":"
largo_linea=`expr index $var $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea=`expr substr $var 1 $largo_linea`
DIvar=`grep -n -m 1 '\<DisplayLevel\>' ~/MMDVMHost/MMDVMPLUS.ini_copia`
buscar=":"
DIlargo_linea=`expr index $DIvar $buscar`
DIlargo_linea=`expr $DIlargo_linea - 1`
DInumero_linea=`expr substr $DIvar 1 $DIlargo_linea`
DIletra=c
DIlinea_sed=$DInumero_linea$DIletra
sed -i "$DIlinea_sed $var1" ~/MMDVMHost/MMDVMPLUS.ini_copia

#TXHang
var=`grep -n -m 1 '\<TXHang\>' ~/Downloads/MMDVMPLUS.ini_copia`
var1=`grep -m 1 '\<TXHang\>' ~/Downloads/MMDVMPLUS.ini_copia`
buscar=":"
largo_linea=`expr index $var $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea=`expr substr $var 1 $largo_linea`
THvar=`grep -n -m 1 '\<TXHang\>' ~/MMDVMHost/MMDVMPLUS.ini_copia`
buscar=":"
THlargo_linea=`expr index $THvar $buscar`
THlargo_linea=`expr $THlargo_linea - 1`
THnumero_linea=`expr substr $THvar 1 $THlargo_linea`
THletra=c
THlinea_sed=$THnumero_linea$THletra
sed -i "$THlinea_sed $var1" ~/MMDVMHost/MMDVMPLUS.ini_copia

#D-Star
var=`grep -n -m 1 "\[D-Star\]" ~/Downloads/MMDVMPLUS.ini_copia` 
var1=`grep -m 1 "\[D-Star\]" ~/Downloads/MMDVMPLUS.ini_copia`
buscar=":"
largo_linea=`expr index $var $buscar` 
largo_linea=`expr $largo_linea - 1` 
numero_linea=`expr substr $var 1 $largo_linea` 
numero_linea_dstar=`expr $numero_linea + 1` 
DSvar=`grep -n -m 1 "\[D-Star\]" ~/MMDVMHost/MMDVMPLUS.ini_copia` 
DSvar1=`grep -m 1 "\[D-Star\]" ~/MMDVMHost/MMDVMPLUS.ini_copia`
buscar=":"
DSlargo_linea=`expr index $DSvar $buscar` 
DSlargo_linea=`expr $DSlargo_linea - 1` 
DSnumero_linea=`expr substr $DSvar 1 $DSlargo_linea` 
DSnumero_linea_dstar=`expr $DSnumero_linea + 1`
DSDS=$(awk "NR==$numero_linea_dstar" ~/Downloads/MMDVMPLUS.ini_copia) 
DSletrac=c
DSlinea_sed=$DSnumero_linea_dstar$DSletrac
sed -i "$DSlinea_sed $DSDS" ~/MMDVMHost/MMDVMPLUS.ini_copia

#DMR
var=`grep -n -m 1 "\[DMR\]" ~/Downloads/MMDVMPLUS.ini_copia` 
var1=`grep -m 1 "\[DMR\]" ~/Downloads/MMDVMPLUS.ini_copia`
buscar=":"
largo_linea=`expr index $var $buscar` 
largo_linea=`expr $largo_linea - 1` 
numero_linea=`expr substr $var 1 $largo_linea` 
numero_linea_dmr=`expr $numero_linea + 1` 
DMvar=`grep -n "\[DMR\]" ~/MMDVMHost/MMDVMPLUS.ini_copia` 
DMvar1=`grep -n -m 1 "\[DMR\]" ~/MMDVMHost/MMDVMPLUS.ini_copia`
buscar=":"
DMlargo_linea=`expr index $DMvar $buscar` 
DMlargo_linea=`expr $DMlargo_linea - 1` 
DMnumero_linea=`expr substr $DMvar 1 $DMlargo_linea` 
DMnumero_linea_dmr=`expr $DMnumero_linea + 1` 
DMDM=$(awk "NR==$numero_linea_dmr" ~/Downloads/MMDVMPLUS.ini_copia)
DMletrac=c
DMlinea_sed=$DMnumero_linea_dmr$DMletrac 
sed -i "$DMlinea_sed $DMDM" ~/MMDVMHost/MMDVMPLUS.ini_copia

#P25
var=`grep -n -m 1 "\[P25\]" ~/Downloads/MMDVMPLUS.ini_copia` 
var1=`grep -m 1 "\[P25\]" ~/Downloads/MMDVMPLUS.ini_copia`
buscar=":"
largo_linea=`expr index $var $buscar` 
largo_linea=`expr $largo_linea - 1` 
numero_linea=`expr substr $var 1 $largo_linea` 
numero_linea_p25=`expr $numero_linea + 1` 
P2var=`grep -n -m 1 "\[P25\]" ~/MMDVMHost/MMDVMPLUS.ini_copia` 
P2var1=`grep -n "\[P25\]" ~/MMDVMHost/MMDVMPLUS.ini_copia`
buscar=":"
P2largo_linea=`expr index $P2var $buscar` 
P2largo_linea=`expr $P2largo_linea - 1` 
P2numero_linea=`expr substr $P2var 1 $P2largo_linea` 
P2numero_linea_p25=`expr $P2numero_linea + 1` 
P2P2=$(awk "NR==$numero_linea_p25" ~/Downloads/MMDVMPLUS.ini_copia)
P2letrac=c
P2linea_sed=$P2numero_linea_p25$P2letrac
sed -i "$P2linea_sed $P2P2" ~/MMDVMHost/MMDVMPLUS.ini_copia

#NXDN
var=`grep -n -m 1 "\[NXDN\]" ~/Downloads/MMDVMPLUS.ini_copia` 
var1=`grep -m 1 "\[NXDN\]" ~/Downloads/MMDVMPLUS.ini_copia`
buscar=":"
largo_linea=`expr index $var $buscar` 
largo_linea=`expr $largo_linea - 1` 
numero_linea=`expr substr $var 1 $largo_linea` 
numero_linea_p25=`expr $numero_linea + 1`
P2P2=$(awk "NR==$numero_linea_p25" ~/Downloads/MMDVMPLUS.ini_copia)
P2var=`grep -n -m 1 "\[NXDN\]" ~/MMDVMHost/MMDVMPLUS.ini_copia` 
P2var1=`grep -n "\[NXDN\]" ~/MMDVMHost/MMDVMPLUS.ini_copia`
buscar=":"
P2largo_linea=`expr index $P2var $buscar` 
P2largo_linea=`expr $P2largo_linea - 1` 
P2numero_linea=`expr substr $P2var 1 $P2largo_linea` 
P2numero_linea_p25=`expr $P2numero_linea + 1` 
P2letrac=c
P2linea_sed=$P2numero_linea_p25$P2letrac
sed -i "$P2linea_sed $P2P2" ~/MMDVMHost/MMDVMPLUS.ini_copia

#FUSION
var1=`grep -n -m 1 "\[System Fusion\]" ~/Downloads/MMDVMPLUS.ini_copia`
var2=`echo "$var1" | tr -d '[[:space:]]'`
buscar=":"
largo_linea=`expr index $var2 $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea=`expr substr $var2 1 $largo_linea`
numero_linea=`expr $numero_linea + 1`
CWvar1=`grep -n -m 1 "\[System Fusion\]" ~/MMDVMHost/MMDVMPLUS.ini_copia`
CWvar2=`echo "$CWvar1" | tr -d '[[:space:]]'`
buscar=":"
CWlargo_linea=`expr index $CWvar2 $buscar`
CWlargo_linea=`expr $CWlargo_linea - 1`
CWnumero_linea=`expr substr $CWvar2 1 $CWlargo_linea`
CWnumero_linea=`expr $CWnumero_linea + 1`
CWCW=$(awk "NR==$CWnumero_linea" ~/Downloads/MMDVMPLUS.ini_copia)
CWletra=c
CWlinea_sed=$CWnumero_linea$CWletra
sed -i "$CWlinea_sed $CWCW" ~/MMDVMHost/MMDVMPLUS.ini_copia

#Nextion
var=`grep -n -m 1 "\[Nextion\]" ~/Downloads/MMDVMPLUS.ini_copia` 
var1=`grep -m 1 "\[Nextion\]" ~/Downloads/MMDVMPLUS.ini_copia`
buscar=":"
largo_linea=`expr index $var $buscar` 
largo_linea=`expr $largo_linea - 1` 
numero_linea=`expr substr $var 1 $largo_linea` 
numero_linea_p25=`expr $numero_linea + 2` 
P2var=`grep -n -m 1 "\[Nextion\]" ~/MMDVMHost/MMDVMPLUS.ini_copia` 
P2var1=`grep -n "\[Nextion\]" ~/MMDVMHost/MMDVMPLUS.ini_copia`
buscar=":"
P2largo_linea=`expr index $P2var $buscar` 
P2largo_linea=`expr $P2largo_linea - 1` 
P2numero_linea=`expr substr $P2var 1 $P2largo_linea` 
P2numero_linea_p25=`expr $P2numero_linea + 2` 
P2P2=$(awk "NR==$numero_linea_p25" ~/Downloads/MMDVMPLUS.ini_copia)
P2letrac=c
P2linea_sed=$P2numero_linea_p25$P2letrac
sed -i "$P2linea_sed $P2P2" ~/MMDVMHost/MMDVMPLUS.ini_copia

#======================= MMDVMPLUS.ini_copia2   ============================

# Callsign 
var=`grep -n -m 1 '\<Callsign\>' ~/Downloads/MMDVMPLUS.ini_copia2` # 2:Callsign=EA3EIZ
var1=`grep -m 1 '\<Callsign\>' ~/Downloads/MMDVMPLUS.ini_copia2` # Callsign=EA3EIZ
buscar=":"
largo_linea=`expr index $var $buscar` #comprueba el largo incluyendo los dos puntos (:)
largo_linea=`expr $largo_linea - 1` #comprueba el largo quitando los dos puntos (:)
numero_linea=`expr substr $var 1 $largo_linea` # recoge numero linea Downloads
Hvar=`grep -n -m 1 '\<Callsign\>' ~/MMDVMHost/MMDVMPLUS.ini_copia2` # 2:Callsign=EA3EIZ
buscar=":"
Hlargo_linea=`expr index $Hvar $buscar` 
Hlargo_linea=`expr $Hlargo_linea - 1` 
Hnumero_linea=`expr substr $Hvar 1 $Hlargo_linea` # recoge numero linea MMDXVMHost
Hletra=c
Hlinea_sed=$Hnumero_linea$Hletra
sed -i "$Hlinea_sed $var1" ~/MMDVMHost/MMDVMPLUS.ini_copia2

#Id capturado de la linea 3
Id=$(awk "NR==3" ~/Downloads/MMDVMPLUS.ini_copia2)
sed -i "3c $Id" ~/MMDVMHost/MMDVMPLUS.ini_copia2

#Timeout capturado de la linea 4
timeou=$(awk "NR==4" ~/Downloads/MMDVMPLUS.ini_copia2)
sed -i "4c $timeou" ~/MMDVMHost/MMDVMPLUS.ini_copia2

#Duplex
var=`grep -n -m 1 '\<Duplex\>' ~/Downloads/MMDVMPLUS.ini_copia2`
var1=`grep -m 1 '\<Duplex\>' ~/Downloads/MMDVMPLUS.ini_copia2`
buscar=":"
largo_linea=`expr index $var $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea=`expr substr $var 1 $largo_linea`
Dvar=`grep -n -m 1 '\<Duplex\>' ~/MMDVMHost/MMDVMPLUS.ini_copia2`
buscar=":"
Dlargo_linea=`expr index $Dvar $buscar`
Dlargo_linea=`expr $Dlargo_linea - 1`
Dnumero_linea=`expr substr $Dvar 1 $Dlargo_linea`
Dletra=c
Dlinea_sed=$Dnumero_linea$Dletra
sed -i "$Dlinea_sed $var1" ~/MMDVMHost/MMDVMPLUS.ini_copia2

#RFModeHang
var=`grep -n -m 1 '\<RFModeHang\>' ~/Downloads/MMDVMPLUS.ini_copia2`
var1=`grep -m 1 '\<RFModeHang\>' ~/Downloads/MMDVMPLUS.ini_copia2`
buscar=":"
largo_linea=`expr index $var $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea=`expr substr $var 1 $largo_linea`
Rvar=`grep -n -m 1 '\<RFModeHang\>' ~/MMDVMHost/MMDVMPLUS.ini_copia2`
buscar=":"
Rlargo_linea=`expr index $Rvar $buscar`
Rlargo_linea=`expr $Rlargo_linea - 1`
Rnumero_linea=`expr substr $Rvar 1 $Rlargo_linea`
Rletra=c
Rlinea_sed=$Rnumero_linea$Rletra
sed -i "$Rlinea_sed $var1" ~/MMDVMHost/MMDVMPLUS.ini_copia2

#Display
var=`grep -n -m 1 '\<Display\>' ~/Downloads/MMDVMPLUS.ini_copia2`
var1=`grep -m 1 '\<Display\>' ~/Downloads/MMDVMPLUS.ini_copia2`
buscar=":"
largo_linea=`expr index $var $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea=`expr substr $var 1 $largo_linea`
Dvar=`grep -n -m 1 '\<Display\>' ~/MMDVMHost/MMDVMPLUS.ini_copia2`
buscar=":"
Dlargo_linea=`expr index $Dvar $buscar`
Dlargo_linea=`expr $Dlargo_linea - 1`
Dnumero_linea=`expr substr $Dvar 1 $Dlargo_linea`
Dletra=c
Dlinea_sed=$Dnumero_linea$Dletra
sed -i "$Dlinea_sed $var1" ~/MMDVMHost/MMDVMPLUS.ini_copia2

#RXFrequency
var=`grep -n -m 1 '\<RXFrequency\>' ~/Downloads/MMDVMPLUS.ini_copia2`
var1=`grep -m 1 '\<RXFrequency\>' ~/Downloads/MMDVMPLUS.ini_copia2`
buscar=":"
largo_linea=`expr index $var $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea=`expr substr $var 1 $largo_linea`
Xvar=`grep -n -m 1 '\<RXFrequency\>' ~/MMDVMHost/MMDVMPLUS.ini_copia2`
buscar=":"
Xlargo_linea=`expr index $Xvar $buscar`
Xlargo_linea=`expr $Xlargo_linea - 1`
Xnumero_linea=`expr substr $Xvar 1 $Xlargo_linea`
Xletra=c
Xlinea_sed=$Xnumero_linea$Xletra
sed -i "$Xlinea_sed $var1" ~/MMDVMHost/MMDVMPLUS.ini_copia2

#TXFrequency
var=`grep -n -m 1 '\<TXFrequency\>' ~/Downloads/MMDVMPLUS.ini_copia2`
var1=`grep -m 1 '\<TXFrequency\>' ~/Downloads/MMDVMPLUS.ini_copia2`
buscar=":"
largo_linea=`expr index $var $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea=`expr substr $var 1 $largo_linea`
Tvar=`grep -n -m 1 '\<TXFrequency\>' ~/MMDVMHost/MMDVMPLUS.ini_copia2`
buscar=":"
Tlargo_linea=`expr index $Tvar $buscar`
Tlargo_linea=`expr $Tlargo_linea - 1`
Tnumero_linea=`expr substr $Tvar 1 $Tlargo_linea`
Tletra=c
Tlinea_sed=$Tnumero_linea$Tletra
sed -i "$Tlinea_sed $var1" ~/MMDVMHost/MMDVMPLUS.ini_copia2

#Latitude
var=`grep -n -m 1 '\<Latitude\>' ~/Downloads/MMDVMPLUS.ini_copia2`
var1=`grep -m 1 '\<Latitude\>' ~/Downloads/MMDVMPLUS.ini_copia2`
buscar=":"
largo_linea=`expr index $var $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea=`expr substr $var 1 $largo_linea`
Lvar=`grep -n -m 1 '\<Latitude\>' ~/MMDVMHost/MMDVMPLUS.ini_copia2`
buscar=":"
Llargo_linea=`expr index $Lvar $buscar`
Llargo_linea=`expr $Llargo_linea - 1`
Lnumero_linea=`expr substr $Lvar 1 $Llargo_linea`
Lletra=c
Llinea_sed=$Lnumero_linea$Lletra
sed -i "$Llinea_sed $var1" ~/MMDVMHost/MMDVMPLUS.ini_copia2

#Longitude
var=`grep -n -m 1 '\<Longitude\>' ~/Downloads/MMDVMPLUS.ini_copia2`
var1=`grep -m 1 '\<Longitude\>' ~/Downloads/MMDVMPLUS.ini_copia2`
buscar=":"
largo_linea=`expr index $var $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea=`expr substr $var 1 $largo_linea`
LGvar=`grep -n -m 1 '\<Longitude\>' ~/MMDVMHost/MMDVMPLUS.ini_copia2`
buscar=":"
LGlargo_linea=`expr index $LGvar $buscar`
LGlargo_linea=`expr $LGlargo_linea - 1`
LGnumero_linea=`expr substr $LGvar 1 $LGlargo_linea`
LGletra=c
LGlinea_sed=$LGnumero_linea$LGletra
sed -i "$LGlinea_sed $var1" ~/MMDVMHost/MMDVMPLUS.ini_copia2

#Location
var=`grep -n -m 1 '\<Location\>' ~/Downloads/MMDVMPLUS.ini_copia2`
var1=`grep -m 1 '\<Location\>' ~/Downloads/MMDVMPLUS.ini_copia2`
buscar=":"
largo_linea=`expr index $var $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea=`expr substr $var 1 $largo_linea`
LOvar=`grep -n -m 1 '\<Location\>' ~/MMDVMHost/MMDVMPLUS.ini_copia2`
buscar=":"
LOlargo_linea=`expr index $LOvar $buscar`
LOlargo_linea=`expr $LOlargo_linea - 1`
LOnumero_linea=`expr substr $LOvar 1 $LOlargo_linea`
LOletra=c
LOlinea_sed=$LOnumero_linea$LOletra
sed -i "$LOlinea_sed $var1" ~/MMDVMHost/MMDVMPLUS.ini_copia2

#URL
var=`grep -n -m 1 '\<URL\>' ~/Downloads/MMDVMPLUS.ini_copia2`
var1=`grep -m 1 '\<URL\>' ~/Downloads/MMDVMPLUS.ini_copia2`
buscar=":"
largo_linea=`expr index $var $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea_url=`expr substr $var 1 $largo_linea`
Uvar=`grep -n -m 1 '\<URL\>' ~/MMDVMHost/MMDVMPLUS.ini_copia2`
Ubuscar=":"
Ulargo_linea=`expr index $Uvar $buscar`
Ulargo_linea=`expr $Ulargo_linea - 1`
Unumero_linea_url=`expr substr $Uvar 1 $largo_linea`
Uletra=c
Ulinea_sed=$Unumero_linea_url$Uletra
sed -i "$Ulinea_sed $var1" ~/MMDVMHost/MMDVMPLUS.ini_copia2

#Baliza 
var1=`grep -n -m 1 "\[CW Id\]" ~/Downloads/MMDVMPLUS.ini_copia2`
var2=`echo "$var1" | tr -d '[[:space:]]'`
buscar=":"
largo_linea=`expr index $var2 $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea=`expr substr $var2 1 $largo_linea`
numero_linea=`expr $numero_linea + 1`
CWvar1=`grep -n -m 1 "\[CW Id\]" ~/MMDVMHost/MMDVMPLUS.ini_copia2`
CWvar2=`echo "$CWvar1" | tr -d '[[:space:]]'`
buscar=":"
CWlargo_linea=`expr index $CWvar2 $buscar`
CWlargo_linea=`expr $CWlargo_linea - 1`
CWnumero_linea=`expr substr $CWvar2 1 $CWlargo_linea`
CWnumero_linea=`expr $CWnumero_linea + 1`
CWCW=$(awk "NR==$CWnumero_linea" ~/Downloads/MMDVMPLUS.ini_copia2)
CWletra=c
CWlinea_sed=$CWnumero_linea$CWletra
sed -i "$CWlinea_sed $CWCW" ~/MMDVMHost/MMDVMPLUS.ini_copia2

#RXLevel
var=`grep -n -m 1 '\<RXLevel\>' ~/Downloads/MMDVMPLUS.ini_copia2`
var1=`grep -m 1 '\<RXLevel\>' ~/Downloads/MMDVMPLUS.ini_copia2`
buscar=":"
largo_linea=`expr index $var $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea=`expr substr $var 1 $largo_linea`
RLvar=`grep -n -m 1 '\<RXLevel\>' ~/MMDVMHost/MMDVMPLUS.ini_copia2`
buscar=":"
RLlargo_linea=`expr index $RLvar $buscar`
RLlargo_linea=`expr $RLlargo_linea - 1`
RLnumero_linea=`expr substr $RLvar 1 $RLlargo_linea`
RLletra=c
RLlinea_sed=$RLnumero_linea$RLletra
sed -i "$RLlinea_sed $var1" ~/MMDVMHost/MMDVMPLUS.ini_copia2

#TXLevel
var=`grep -n -m 1 '\<TXLevel\>' ~/Downloads/MMDVMPLUS.ini_copia2`
var1=`grep -m 1 '\<TXLevel\>' ~/Downloads/MMDVMPLUS.ini_copia2`
buscar=":"
largo_linea=`expr index $var $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea=`expr substr $var 1 $largo_linea`
TLvar=`grep -n -m 1 '\<TXLevel\>' ~/MMDVMHost/MMDVMPLUS.ini_copia2`
buscar=":"
TLlargo_linea=`expr index $TLvar $buscar`
TLlargo_linea=`expr $TLlargo_linea - 1`
TLnumero_linea=`expr substr $TLvar 1 $TLlargo_linea`
TLletra=c
TLlinea_sed=$TLnumero_linea$TLletra
sed -i "$TLlinea_sed $var1" ~/MMDVMHost/MMDVMPLUS.ini_copia2

#Module
var=`grep -n -m 1 '\<Module\>' ~/Downloads/MMDVMPLUS.ini_copia2`
var1=`grep -m 1 '\<Module\>' ~/Downloads/MMDVMPLUS.ini_copia2`
buscar=":"
largo_linea=`expr index $var $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea=`expr substr $var 1 $largo_linea`
MOvar=`grep -n -m 1 '\<Module\>' ~/MMDVMHost/MMDVMPLUS.ini_copia2`
buscar=":"
MOlargo_linea=`expr index $MOvar $buscar`
MOlargo_linea=`expr $MOlargo_linea - 1`
MOnumero_linea=`expr substr $MOvar 1 $MOlargo_linea`
MOletra=c
MOlinea_sed=$MOnumero_linea$MOletra
sed -i "$MOlinea_sed $var1" ~/MMDVMHost/MMDVMPLUS.ini_copia2

#Txinvert
var=`grep -n -m 1 '\<TXInvert\>' ~/Downloads/MMDVMPLUS.ini_copia2`
var1=`grep -m 1 '\<TXInvert\>' ~/Downloads/MMDVMPLUS.ini_copia2`
buscar=":"
largo_linea=`expr index $var $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea=`expr substr $var 1 $largo_linea`
TIvar=`grep -n -m 1 '\<TXInvert\>' ~/MMDVMHost/MMDVMPLUS.ini_copia2`
buscar=":"
TIlargo_linea=`expr index $TIvar $buscar`
TIlargo_linea=`expr $TIlargo_linea - 1`
TInumero_linea=`expr substr $TIvar 1 $TIlargo_linea`
TIletra=c
TIlinea_sed=$TInumero_linea$TIletra
sed -i "$TIlinea_sed $var1" ~/MMDVMHost/MMDVMPLUS.ini_copia2

#Modem capturado de la linea txinvert -1
numero_linea_MODEM=`expr $numero_linea - 1` # Downloads
MOnumero_linea_MODEM=`expr $TInumero_linea - 1` # MMDVMHost
modem=$(awk "NR==$numero_linea_MODEM" ~/Downloads/MMDVMPLUS.ini_copia2)
TIletra=c
TIlinea_sed=$MOnumero_linea_MODEM$TIletra
sed -i "$TIlinea_sed $modem" ~/MMDVMHost/MMDVMPLUS.ini_copia2

#Address
var=`grep -n -m 1 '\<Address\>' ~/Downloads/MMDVMPLUS.ini_copia2`
var1=`grep -m 1 '\<Address\>' ~/Downloads/MMDVMPLUS.ini_copia2`
buscar=":"
largo_linea=`expr index $var $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea_Address=`expr substr $var 1 $largo_linea`
ADvar=`grep -n -m 1 '\<Address\>' ~/MMDVMHost/MMDVMPLUS.ini_copia2`
buscar=":"
ADlargo_linea=`expr index $ADvar $buscar`
ADlargo_linea=`expr $ADlargo_linea - 1`
ADnumero_linea_Address=`expr substr $ADvar 1 $ADlargo_linea`
ADletra=c
ADlinea_sed=$ADnumero_linea_Address$ADletra
sed -i "$ADlinea_sed $var1" ~/MMDVMHost/MMDVMPLUS.ini_copia2

#Port captura de la linea Address +1
numero_linea_Address=`expr $numero_linea_Address + 1` # Downloads
ADnumero_linea_Address=`expr $ADnumero_linea_Address + 1` # MMDVMHost
port=$(awk "NR==$numero_linea_Address" ~/Downloads/MMDVMPLUS.ini_copia2)
ADletra=c
ADlinea_sed=$ADnumero_linea_Address$ADletra
sed -i "$ADlinea_sed $port" ~/MMDVMHost/MMDVMPLUS.ini_copia2

#Password
var=`grep -n -m 1 '\<Password\>' ~/Downloads/MMDVMPLUS.ini_copia2`
var1=`grep -m 1 '\<Password\>' ~/Downloads/MMDVMPLUS.ini_copia2`
buscar=":"
largo_linea=`expr index $var $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea_password=`expr substr $var 1 $largo_linea`
PWvar=`grep -n -m 1 '\<Password\>' ~/MMDVMHost/MMDVMPLUS.ini_copia2`
buscar=":"
PWlargo_linea=`expr index $PWvar $buscar`
PWlargo_linea=`expr $PWlargo_linea - 1`
PWnumero_linea_password=`expr substr $PWvar 1 $PWlargo_linea`
PWletra=c
PWlinea_sed=$PWnumero_linea_password$PWletra
sed -i "$PWlinea_sed $var1" ~/MMDVMHost/MMDVMPLUS.ini_copia2

#Options linea password  +1
numero_linea_password=`expr $numero_linea_password + 1` # Downloads
PWnumero_linea_password=`expr $PWnumero_linea_password + 1` # MMDVMHost
option=$(awk "NR==$numero_linea_password" ~/Downloads/MMDVMPLUS.ini_copia2)
PWletra=c
PWlinea_sed=$PWnumero_linea_password$PWletra
sed -i "$PWlinea_sed $option" ~/MMDVMHost/MMDVMPLUS.ini_copia2

#ScreenLayout
var=`grep -n -m 1 '\<ScreenLayout\>' ~/Downloads/MMDVMPLUS.ini_copia2`
var1=`grep -m 1 '\<ScreenLayout\>' ~/Downloads/MMDVMPLUS.ini_copia2`
buscar=":"
largo_linea=`expr index $var $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea=`expr substr $var 1 $largo_linea`
SCvar=`grep -n -m 1 '\<ScreenLayout\>' ~/MMDVMHost/MMDVMPLUS.ini_copia2`
buscar=":"
SClargo_linea=`expr index $SCvar $buscar`
SClargo_linea=`expr $SClargo_linea - 1`
SCnumero_linea=`expr substr $SCvar 1 $SClargo_linea`
SCletra=c
SClinea_sed=$SCnumero_linea$SCletra
sed -i "$SClinea_sed $var1" ~/MMDVMHost/MMDVMPLUS.ini_copia2

#Brightness
var=`grep -n -m 1 '\<Brightness\>' ~/Downloads/MMDVMPLUS.ini_copia2`
var1=`grep -m 1 '\<Brightness\>' ~/Downloads/MMDVMPLUS.ini_copia2`
buscar=":"
largo_linea=`expr index $var $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea=`expr substr $var 1 $largo_linea`
BRvar=`grep -n -m 1 '\<Brightness\>' ~/MMDVMHost/MMDVMPLUS.ini_copia2`
buscar=":"
BRlargo_linea=`expr index $BRvar $buscar`
BRlargo_linea=`expr $BRlargo_linea - 1`
BRnumero_linea=`expr substr $BRvar 1 $BRlargo_linea`
BRletra=c
BRlinea_sed=$BRnumero_linea$BRletra
sed -i "$BRlinea_sed $var1" ~/MMDVMHost/MMDVMPLUS.ini_copia2

#Slot1
var=`grep -n -m 1 '\<Slot1\>' ~/Downloads/MMDVMPLUS.ini_copia2`
var1=`grep -m 1 '\<Slot1\>' ~/Downloads/MMDVMPLUS.ini_copia2`
buscar=":"
largo_linea=`expr index $var $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea=`expr substr $var 1 $largo_linea`
SLvar=`grep -n -m 1 '\<Slot1\>' ~/MMDVMHost/MMDVMPLUS.ini_copia2`
buscar=":"
SLlargo_linea=`expr index $SLvar $buscar`
SLlargo_linea=`expr $SLlargo_linea - 1`
SLnumero_linea=`expr substr $SLvar 1 $SLlargo_linea`
SLletra=c
SLlinea_sed=$SLnumero_linea$SLletra
sed -i "$SLlinea_sed $var1" ~/MMDVMHost/MMDVMPLUS.ini_copia2

#DisplayLevel
var=`grep -n -m 1 '\<DisplayLevel\>' ~/Downloads/MMDVMPLUS.ini_copia2`
var1=`grep -m 1 '\<DisplayLevel\>' ~/Downloads/MMDVMPLUS.ini_copia2`
buscar=":"
largo_linea=`expr index $var $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea=`expr substr $var 1 $largo_linea`
DIvar=`grep -n -m 1 '\<DisplayLevel\>' ~/MMDVMHost/MMDVMPLUS.ini_copia2`
buscar=":"
DIlargo_linea=`expr index $DIvar $buscar`
DIlargo_linea=`expr $DIlargo_linea - 1`
DInumero_linea=`expr substr $DIvar 1 $DIlargo_linea`
DIletra=c
DIlinea_sed=$DInumero_linea$DIletra
sed -i "$DIlinea_sed $var1" ~/MMDVMHost/MMDVMPLUS.ini_copia2

#TXHang
var=`grep -n -m 1 '\<TXHang\>' ~/Downloads/MMDVMPLUS.ini_copia2`
var1=`grep -m 1 '\<TXHang\>' ~/Downloads/MMDVMPLUS.ini_copia2`
buscar=":"
largo_linea=`expr index $var $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea=`expr substr $var 1 $largo_linea`
THvar=`grep -n -m 1 '\<TXHang\>' ~/MMDVMHost/MMDVMPLUS.ini_copia2`
buscar=":"
THlargo_linea=`expr index $THvar $buscar`
THlargo_linea=`expr $THlargo_linea - 1`
THnumero_linea=`expr substr $THvar 1 $THlargo_linea`
THletra=c
THlinea_sed=$THnumero_linea$THletra
sed -i "$THlinea_sed $var1" ~/MMDVMHost/MMDVMPLUS.ini_copia2

#D-Star
var=`grep -n -m 1 "\[D-Star\]" ~/Downloads/MMDVMPLUS.ini_copia2` 
var1=`grep -m 1 "\[D-Star\]" ~/Downloads/MMDVMPLUS.ini_copia2`
buscar=":"
largo_linea=`expr index $var $buscar` 
largo_linea=`expr $largo_linea - 1` 
numero_linea=`expr substr $var 1 $largo_linea` 
numero_linea_dstar=`expr $numero_linea + 1` 
DSvar=`grep -n -m 1 "\[D-Star\]" ~/MMDVMHost/MMDVMPLUS.ini_copia2` 
DSvar1=`grep -m 1 "\[D-Star\]" ~/MMDVMHost/MMDVMPLUS.ini_copia2`
buscar=":"
DSlargo_linea=`expr index $DSvar $buscar` 
DSlargo_linea=`expr $DSlargo_linea - 1` 
DSnumero_linea=`expr substr $DSvar 1 $DSlargo_linea` 
DSnumero_linea_dstar=`expr $DSnumero_linea + 1`
DSDS=$(awk "NR==$numero_linea_dstar" ~/Downloads/MMDVMPLUS.ini_copia2) 
DSletrac=c
DSlinea_sed=$DSnumero_linea_dstar$DSletrac
sed -i "$DSlinea_sed $DSDS" ~/MMDVMHost/MMDVMPLUS.ini_copia2

#DMR
var=`grep -n -m 1 "\[DMR\]" ~/Downloads/MMDVMPLUS.ini_copia2` 
var1=`grep -m 1 "\[DMR\]" ~/Downloads/MMDVMPLUS.ini_copia2`
buscar=":"
largo_linea=`expr index $var $buscar` 
largo_linea=`expr $largo_linea - 1` 
numero_linea=`expr substr $var 1 $largo_linea` 
numero_linea_dmr=`expr $numero_linea + 1` 
DMvar=`grep -n "\[DMR\]" ~/MMDVMHost/MMDVMPLUS.ini_copia2` 
DMvar1=`grep -n -m 1 "\[DMR\]" ~/MMDVMHost/MMDVMPLUS.ini_copia2`
buscar=":"
DMlargo_linea=`expr index $DMvar $buscar` 
DMlargo_linea=`expr $DMlargo_linea - 1` 
DMnumero_linea=`expr substr $DMvar 1 $DMlargo_linea` 
DMnumero_linea_dmr=`expr $DMnumero_linea + 1` 
DMDM=$(awk "NR==$numero_linea_dmr" ~/Downloads/MMDVMPLUS.ini_copia2)
DMletrac=c
DMlinea_sed=$DMnumero_linea_dmr$DMletrac 
sed -i "$DMlinea_sed $DMDM" ~/MMDVMHost/MMDVMPLUS.ini_copia2

#P25
var=`grep -n -m 1 "\[P25\]" ~/Downloads/MMDVMPLUS.ini_copia2` 
var1=`grep -m 1 "\[P25\]" ~/Downloads/MMDVMPLUS.ini_copia2`
buscar=":"
largo_linea=`expr index $var $buscar` 
largo_linea=`expr $largo_linea - 1` 
numero_linea=`expr substr $var 1 $largo_linea` 
numero_linea_p25=`expr $numero_linea + 1` 
P2var=`grep -n -m 1 "\[P25\]" ~/MMDVMHost/MMDVMPLUS.ini_copia2` 
P2var1=`grep -n "\[P25\]" ~/MMDVMHost/MMDVMPLUS.ini_copia2`
buscar=":"
P2largo_linea=`expr index $P2var $buscar` 
P2largo_linea=`expr $P2largo_linea - 1` 
P2numero_linea=`expr substr $P2var 1 $P2largo_linea` 
P2numero_linea_p25=`expr $P2numero_linea + 1` 
P2P2=$(awk "NR==$numero_linea_p25" ~/Downloads/MMDVMPLUS.ini_copia2)
P2letrac=c
P2linea_sed=$P2numero_linea_p25$P2letrac
sed -i "$P2linea_sed $P2P2" ~/MMDVMHost/MMDVMPLUS.ini_copia2

#NXDN
var=`grep -n -m 1 "\[NXDN\]" ~/Downloads/MMDVMPLUS.ini_copia2` 
var1=`grep -m 1 "\[NXDN\]" ~/Downloads/MMDVMPLUS.ini_copia2`
buscar=":"
largo_linea=`expr index $var $buscar` 
largo_linea=`expr $largo_linea - 1` 
numero_linea=`expr substr $var 1 $largo_linea` 
numero_linea_p25=`expr $numero_linea + 1`
P2P2=$(awk "NR==$numero_linea_p25" ~/Downloads/MMDVMPLUS.ini_copia2)
P2var=`grep -n -m 1 "\[NXDN\]" ~/MMDVMHost/MMDVMPLUS.ini_copia2` 
P2var1=`grep -n "\[NXDN\]" ~/MMDVMHost/MMDVMPLUS.ini_copia2`
buscar=":"
P2largo_linea=`expr index $P2var $buscar` 
P2largo_linea=`expr $P2largo_linea - 1` 
P2numero_linea=`expr substr $P2var 1 $P2largo_linea` 
P2numero_linea_p25=`expr $P2numero_linea + 1` 
P2letrac=c
P2linea_sed=$P2numero_linea_p25$P2letrac
sed -i "$P2linea_sed $P2P2" ~/MMDVMHost/MMDVMPLUS.ini_copia2

#FUSION
var1=`grep -n -m 1 "\[System Fusion\]" ~/Downloads/MMDVMPLUS.ini_copia2`
var2=`echo "$var1" | tr -d '[[:space:]]'`
buscar=":"
largo_linea=`expr index $var2 $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea=`expr substr $var2 1 $largo_linea`
numero_linea=`expr $numero_linea + 1`
CWvar1=`grep -n -m 1 "\[System Fusion\]" ~/MMDVMHost/MMDVMPLUS.ini_copia2`
CWvar2=`echo "$CWvar1" | tr -d '[[:space:]]'`
buscar=":"
CWlargo_linea=`expr index $CWvar2 $buscar`
CWlargo_linea=`expr $CWlargo_linea - 1`
CWnumero_linea=`expr substr $CWvar2 1 $CWlargo_linea`
CWnumero_linea=`expr $CWnumero_linea + 1`
CWCW=$(awk "NR==$CWnumero_linea" ~/Downloads/MMDVMPLUS.ini_copia2)
CWletra=c
CWlinea_sed=$CWnumero_linea$CWletra
sed -i "$CWlinea_sed $CWCW" ~/MMDVMHost/MMDVMPLUS.ini_copia2

#Nextion
var=`grep -n -m 1 "\[Nextion\]" ~/Downloads/MMDVMPLUS.ini_copia2` 
var1=`grep -m 1 "\[Nextion\]" ~/Downloads/MMDVMPLUS.ini_copia2`
buscar=":"
largo_linea=`expr index $var $buscar` 
largo_linea=`expr $largo_linea - 1` 
numero_linea=`expr substr $var 1 $largo_linea` 
numero_linea_p25=`expr $numero_linea + 2` 
P2var=`grep -n -m 1 "\[Nextion\]" ~/MMDVMHost/MMDVMPLUS.ini_copia2` 
P2var1=`grep -n "\[Nextion\]" ~/MMDVMHost/MMDVMPLUS.ini_copia2`
buscar=":"
P2largo_linea=`expr index $P2var $buscar` 
P2largo_linea=`expr $P2largo_linea - 1` 
P2numero_linea=`expr substr $P2var 1 $P2largo_linea` 
P2numero_linea_p25=`expr $P2numero_linea + 2` 
P2P2=$(awk "NR==$numero_linea_p25" ~/Downloads/MMDVMPLUS.ini_copia2)
P2letrac=c
P2linea_sed=$P2numero_linea_p25$P2letrac
sed -i "$P2linea_sed $P2P2" ~/MMDVMHost/MMDVMPLUS.ini_copia2

#======================= MMDVMPLUS.ini_copia3   ============================

# Callsign 
var=`grep -n -m 1 '\<Callsign\>' ~/Downloads/MMDVMPLUS.ini_copia3` # 2:Callsign=EA3EIZ
var1=`grep -m 1 '\<Callsign\>' ~/Downloads/MMDVMPLUS.ini_copia3` # Callsign=EA3EIZ
buscar=":"
largo_linea=`expr index $var $buscar` #comprueba el largo incluyendo los dos puntos (:)
largo_linea=`expr $largo_linea - 1` #comprueba el largo quitando los dos puntos (:)
numero_linea=`expr substr $var 1 $largo_linea` # recoge numero linea Downloads
Hvar=`grep -n -m 1 '\<Callsign\>' ~/MMDVMHost/MMDVMPLUS.ini_copia3` # 2:Callsign=EA3EIZ
buscar=":"
Hlargo_linea=`expr index $Hvar $buscar` 
Hlargo_linea=`expr $Hlargo_linea - 1` 
Hnumero_linea=`expr substr $Hvar 1 $Hlargo_linea` # recoge numero linea MMDXVMHost
Hletra=c
Hlinea_sed=$Hnumero_linea$Hletra
sed -i "$Hlinea_sed $var1" ~/MMDVMHost/MMDVMPLUS.ini_copia3

#Id capturado de la linea 3
Id=$(awk "NR==3" ~/Downloads/MMDVMPLUS.ini_copia3)
sed -i "3c $Id" ~/MMDVMHost/MMDVMPLUS.ini_copia3

#Timeout capturado de la linea 4
timeou=$(awk "NR==4" ~/Downloads/MMDVMPLUS.ini_copia3)
sed -i "4c $timeou" ~/MMDVMHost/MMDVMPLUS.ini_copia3

#Duplex
var=`grep -n -m 1 '\<Duplex\>' ~/Downloads/MMDVMPLUS.ini_copia3`
var1=`grep -m 1 '\<Duplex\>' ~/Downloads/MMDVMPLUS.ini_copia3`
buscar=":"
largo_linea=`expr index $var $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea=`expr substr $var 1 $largo_linea`
Dvar=`grep -n -m 1 '\<Duplex\>' ~/MMDVMHost/MMDVMPLUS.ini_copia3`
buscar=":"
Dlargo_linea=`expr index $Dvar $buscar`
Dlargo_linea=`expr $Dlargo_linea - 1`
Dnumero_linea=`expr substr $Dvar 1 $Dlargo_linea`
Dletra=c
Dlinea_sed=$Dnumero_linea$Dletra
sed -i "$Dlinea_sed $var1" ~/MMDVMHost/MMDVMPLUS.ini_copia3

#RFModeHang
var=`grep -n -m 1 '\<RFModeHang\>' ~/Downloads/MMDVMPLUS.ini_copia3`
var1=`grep -m 1 '\<RFModeHang\>' ~/Downloads/MMDVMPLUS.ini_copia3`
buscar=":"
largo_linea=`expr index $var $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea=`expr substr $var 1 $largo_linea`
Rvar=`grep -n -m 1 '\<RFModeHang\>' ~/MMDVMHost/MMDVMPLUS.ini_copia3`
buscar=":"
Rlargo_linea=`expr index $Rvar $buscar`
Rlargo_linea=`expr $Rlargo_linea - 1`
Rnumero_linea=`expr substr $Rvar 1 $Rlargo_linea`
Rletra=c
Rlinea_sed=$Rnumero_linea$Rletra
sed -i "$Rlinea_sed $var1" ~/MMDVMHost/MMDVMPLUS.ini_copia3

#Display
var=`grep -n -m 1 '\<Display\>' ~/Downloads/MMDVMPLUS.ini_copia3`
var1=`grep -m 1 '\<Display\>' ~/Downloads/MMDVMPLUS.ini_copia3`
buscar=":"
largo_linea=`expr index $var $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea=`expr substr $var 1 $largo_linea`
Dvar=`grep -n -m 1 '\<Display\>' ~/MMDVMHost/MMDVMPLUS.ini_copia3`
buscar=":"
Dlargo_linea=`expr index $Dvar $buscar`
Dlargo_linea=`expr $Dlargo_linea - 1`
Dnumero_linea=`expr substr $Dvar 1 $Dlargo_linea`
Dletra=c
Dlinea_sed=$Dnumero_linea$Dletra
sed -i "$Dlinea_sed $var1" ~/MMDVMHost/MMDVMPLUS.ini_copia3

#RXFrequency
var=`grep -n -m 1 '\<RXFrequency\>' ~/Downloads/MMDVMPLUS.ini_copia3`
var1=`grep -m 1 '\<RXFrequency\>' ~/Downloads/MMDVMPLUS.ini_copia3`
buscar=":"
largo_linea=`expr index $var $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea=`expr substr $var 1 $largo_linea`
Xvar=`grep -n -m 1 '\<RXFrequency\>' ~/MMDVMHost/MMDVMPLUS.ini_copia3`
buscar=":"
Xlargo_linea=`expr index $Xvar $buscar`
Xlargo_linea=`expr $Xlargo_linea - 1`
Xnumero_linea=`expr substr $Xvar 1 $Xlargo_linea`
Xletra=c
Xlinea_sed=$Xnumero_linea$Xletra
sed -i "$Xlinea_sed $var1" ~/MMDVMHost/MMDVMPLUS.ini_copia3

#TXFrequency
var=`grep -n -m 1 '\<TXFrequency\>' ~/Downloads/MMDVMPLUS.ini_copia3`
var1=`grep -m 1 '\<TXFrequency\>' ~/Downloads/MMDVMPLUS.ini_copia3`
buscar=":"
largo_linea=`expr index $var $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea=`expr substr $var 1 $largo_linea`
Tvar=`grep -n -m 1 '\<TXFrequency\>' ~/MMDVMHost/MMDVMPLUS.ini_copia3`
buscar=":"
Tlargo_linea=`expr index $Tvar $buscar`
Tlargo_linea=`expr $Tlargo_linea - 1`
Tnumero_linea=`expr substr $Tvar 1 $Tlargo_linea`
Tletra=c
Tlinea_sed=$Tnumero_linea$Tletra
sed -i "$Tlinea_sed $var1" ~/MMDVMHost/MMDVMPLUS.ini_copia3

#Latitude
var=`grep -n -m 1 '\<Latitude\>' ~/Downloads/MMDVMPLUS.ini_copia3`
var1=`grep -m 1 '\<Latitude\>' ~/Downloads/MMDVMPLUS.ini_copia3`
buscar=":"
largo_linea=`expr index $var $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea=`expr substr $var 1 $largo_linea`
Lvar=`grep -n -m 1 '\<Latitude\>' ~/MMDVMHost/MMDVMPLUS.ini_copia3`
buscar=":"
Llargo_linea=`expr index $Lvar $buscar`
Llargo_linea=`expr $Llargo_linea - 1`
Lnumero_linea=`expr substr $Lvar 1 $Llargo_linea`
Lletra=c
Llinea_sed=$Lnumero_linea$Lletra
sed -i "$Llinea_sed $var1" ~/MMDVMHost/MMDVMPLUS.ini_copia3

#Longitude
var=`grep -n -m 1 '\<Longitude\>' ~/Downloads/MMDVMPLUS.ini_copia3`
var1=`grep -m 1 '\<Longitude\>' ~/Downloads/MMDVMPLUS.ini_copia3`
buscar=":"
largo_linea=`expr index $var $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea=`expr substr $var 1 $largo_linea`
LGvar=`grep -n -m 1 '\<Longitude\>' ~/MMDVMHost/MMDVMPLUS.ini_copia3`
buscar=":"
LGlargo_linea=`expr index $LGvar $buscar`
LGlargo_linea=`expr $LGlargo_linea - 1`
LGnumero_linea=`expr substr $LGvar 1 $LGlargo_linea`
LGletra=c
LGlinea_sed=$LGnumero_linea$LGletra
sed -i "$LGlinea_sed $var1" ~/MMDVMHost/MMDVMPLUS.ini_copia3

#Location
var=`grep -n -m 1 '\<Location\>' ~/Downloads/MMDVMPLUS.ini_copia3`
var1=`grep -m 1 '\<Location\>' ~/Downloads/MMDVMPLUS.ini_copia3`
buscar=":"
largo_linea=`expr index $var $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea=`expr substr $var 1 $largo_linea`
LOvar=`grep -n -m 1 '\<Location\>' ~/MMDVMHost/MMDVMPLUS.ini_copia3`
buscar=":"
LOlargo_linea=`expr index $LOvar $buscar`
LOlargo_linea=`expr $LOlargo_linea - 1`
LOnumero_linea=`expr substr $LOvar 1 $LOlargo_linea`
LOletra=c
LOlinea_sed=$LOnumero_linea$LOletra
sed -i "$LOlinea_sed $var1" ~/MMDVMHost/MMDVMPLUS.ini_copia3

#URL
var=`grep -n -m 1 '\<URL\>' ~/Downloads/MMDVMPLUS.ini_copia3`
var1=`grep -m 1 '\<URL\>' ~/Downloads/MMDVMPLUS.ini_copia3`
buscar=":"
largo_linea=`expr index $var $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea_url=`expr substr $var 1 $largo_linea`
Uvar=`grep -n -m 1 '\<URL\>' ~/MMDVMHost/MMDVMPLUS.ini_copia3`
Ubuscar=":"
Ulargo_linea=`expr index $Uvar $buscar`
Ulargo_linea=`expr $Ulargo_linea - 1`
Unumero_linea_url=`expr substr $Uvar 1 $largo_linea`
Uletra=c
Ulinea_sed=$Unumero_linea_url$Uletra
sed -i "$Ulinea_sed $var1" ~/MMDVMHost/MMDVMPLUS.ini_copia3

#Baliza 
var1=`grep -n -m 1 "\[CW Id\]" ~/Downloads/MMDVMPLUS.ini_copia3`
var2=`echo "$var1" | tr -d '[[:space:]]'`
buscar=":"
largo_linea=`expr index $var2 $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea=`expr substr $var2 1 $largo_linea`
numero_linea=`expr $numero_linea + 1`
CWvar1=`grep -n -m 1 "\[CW Id\]" ~/MMDVMHost/MMDVMPLUS.ini_copia3`
CWvar2=`echo "$CWvar1" | tr -d '[[:space:]]'`
buscar=":"
CWlargo_linea=`expr index $CWvar2 $buscar`
CWlargo_linea=`expr $CWlargo_linea - 1`
CWnumero_linea=`expr substr $CWvar2 1 $CWlargo_linea`
CWnumero_linea=`expr $CWnumero_linea + 1`
CWCW=$(awk "NR==$CWnumero_linea" ~/Downloads/MMDVMPLUS.ini_copia3)
CWletra=c
CWlinea_sed=$CWnumero_linea$CWletra
sed -i "$CWlinea_sed $CWCW" ~/MMDVMHost/MMDVMPLUS.ini_copia3

#RXLevel
var=`grep -n -m 1 '\<RXLevel\>' ~/Downloads/MMDVMPLUS.ini_copia3`
var1=`grep -m 1 '\<RXLevel\>' ~/Downloads/MMDVMPLUS.ini_copia3`
buscar=":"
largo_linea=`expr index $var $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea=`expr substr $var 1 $largo_linea`
RLvar=`grep -n -m 1 '\<RXLevel\>' ~/MMDVMHost/MMDVMPLUS.ini_copia3`
buscar=":"
RLlargo_linea=`expr index $RLvar $buscar`
RLlargo_linea=`expr $RLlargo_linea - 1`
RLnumero_linea=`expr substr $RLvar 1 $RLlargo_linea`
RLletra=c
RLlinea_sed=$RLnumero_linea$RLletra
sed -i "$RLlinea_sed $var1" ~/MMDVMHost/MMDVMPLUS.ini_copia3

#TXLevel
var=`grep -n -m 1 '\<TXLevel\>' ~/Downloads/MMDVMPLUS.ini_copia3`
var1=`grep -m 1 '\<TXLevel\>' ~/Downloads/MMDVMPLUS.ini_copia3`
buscar=":"
largo_linea=`expr index $var $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea=`expr substr $var 1 $largo_linea`
TLvar=`grep -n -m 1 '\<TXLevel\>' ~/MMDVMHost/MMDVMPLUS.ini_copia3`
buscar=":"
TLlargo_linea=`expr index $TLvar $buscar`
TLlargo_linea=`expr $TLlargo_linea - 1`
TLnumero_linea=`expr substr $TLvar 1 $TLlargo_linea`
TLletra=c
TLlinea_sed=$TLnumero_linea$TLletra
sed -i "$TLlinea_sed $var1" ~/MMDVMHost/MMDVMPLUS.ini_copia3

#Module
var=`grep -n -m 1 '\<Module\>' ~/Downloads/MMDVMPLUS.ini_copia3`
var1=`grep -m 1 '\<Module\>' ~/Downloads/MMDVMPLUS.ini_copia3`
buscar=":"
largo_linea=`expr index $var $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea=`expr substr $var 1 $largo_linea`
MOvar=`grep -n -m 1 '\<Module\>' ~/MMDVMHost/MMDVMPLUS.ini_copia3`
buscar=":"
MOlargo_linea=`expr index $MOvar $buscar`
MOlargo_linea=`expr $MOlargo_linea - 1`
MOnumero_linea=`expr substr $MOvar 1 $MOlargo_linea`
MOletra=c
MOlinea_sed=$MOnumero_linea$MOletra
sed -i "$MOlinea_sed $var1" ~/MMDVMHost/MMDVMPLUS.ini_copia3

#Txinvert
var=`grep -n -m 1 '\<TXInvert\>' ~/Downloads/MMDVMPLUS.ini_copia3`
var1=`grep -m 1 '\<TXInvert\>' ~/Downloads/MMDVMPLUS.ini_copia3`
buscar=":"
largo_linea=`expr index $var $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea=`expr substr $var 1 $largo_linea`
TIvar=`grep -n -m 1 '\<TXInvert\>' ~/MMDVMHost/MMDVMPLUS.ini_copia3`
buscar=":"
TIlargo_linea=`expr index $TIvar $buscar`
TIlargo_linea=`expr $TIlargo_linea - 1`
TInumero_linea=`expr substr $TIvar 1 $TIlargo_linea`
TIletra=c
TIlinea_sed=$TInumero_linea$TIletra
sed -i "$TIlinea_sed $var1" ~/MMDVMHost/MMDVMPLUS.ini_copia3

#Modem capturado de la linea txinvert -1
numero_linea_MODEM=`expr $numero_linea - 1` # Downloads
MOnumero_linea_MODEM=`expr $TInumero_linea - 1` # MMDVMHost
modem=$(awk "NR==$numero_linea_MODEM" ~/Downloads/MMDVMPLUS.ini_copia3)
TIletra=c
TIlinea_sed=$MOnumero_linea_MODEM$TIletra
sed -i "$TIlinea_sed $modem" ~/MMDVMHost/MMDVMPLUS.ini_copia3

#Address
var=`grep -n -m 1 '\<Address\>' ~/Downloads/MMDVMPLUS.ini_copia3`
var1=`grep -m 1 '\<Address\>' ~/Downloads/MMDVMPLUS.ini_copia3`
buscar=":"
largo_linea=`expr index $var $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea_Address=`expr substr $var 1 $largo_linea`
ADvar=`grep -n -m 1 '\<Address\>' ~/MMDVMHost/MMDVMPLUS.ini_copia3`
buscar=":"
ADlargo_linea=`expr index $ADvar $buscar`
ADlargo_linea=`expr $ADlargo_linea - 1`
ADnumero_linea_Address=`expr substr $ADvar 1 $ADlargo_linea`
ADletra=c
ADlinea_sed=$ADnumero_linea_Address$ADletra
sed -i "$ADlinea_sed $var1" ~/MMDVMHost/MMDVMPLUS.ini_copia3

#Port captura de la linea Address +1
numero_linea_Address=`expr $numero_linea_Address + 1` # Downloads
ADnumero_linea_Address=`expr $ADnumero_linea_Address + 1` # MMDVMHost
port=$(awk "NR==$numero_linea_Address" ~/Downloads/MMDVMPLUS.ini_copia3)
ADletra=c
ADlinea_sed=$ADnumero_linea_Address$ADletra
sed -i "$ADlinea_sed $port" ~/MMDVMHost/MMDVMPLUS.ini_copia3

#Password
var=`grep -n -m 1 '\<Password\>' ~/Downloads/MMDVMPLUS.ini_copia3`
var1=`grep -m 1 '\<Password\>' ~/Downloads/MMDVMPLUS.ini_copia3`
buscar=":"
largo_linea=`expr index $var $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea_password=`expr substr $var 1 $largo_linea`
PWvar=`grep -n -m 1 '\<Password\>' ~/MMDVMHost/MMDVMPLUS.ini_copia3`
buscar=":"
PWlargo_linea=`expr index $PWvar $buscar`
PWlargo_linea=`expr $PWlargo_linea - 1`
PWnumero_linea_password=`expr substr $PWvar 1 $PWlargo_linea`
PWletra=c
PWlinea_sed=$PWnumero_linea_password$PWletra
sed -i "$PWlinea_sed $var1" ~/MMDVMHost/MMDVMPLUS.ini_copia3

#Options linea password  +1
numero_linea_password=`expr $numero_linea_password + 1` # Downloads
PWnumero_linea_password=`expr $PWnumero_linea_password + 1` # MMDVMHost
option=$(awk "NR==$numero_linea_password" ~/Downloads/MMDVMPLUS.ini_copia3)
PWletra=c
PWlinea_sed=$PWnumero_linea_password$PWletra
sed -i "$PWlinea_sed $option" ~/MMDVMHost/MMDVMPLUS.ini_copia3

#ScreenLayout
var=`grep -n -m 1 '\<ScreenLayout\>' ~/Downloads/MMDVMPLUS.ini_copia3`
var1=`grep -m 1 '\<ScreenLayout\>' ~/Downloads/MMDVMPLUS.ini_copia3`
buscar=":"
largo_linea=`expr index $var $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea=`expr substr $var 1 $largo_linea`
SCvar=`grep -n -m 1 '\<ScreenLayout\>' ~/MMDVMHost/MMDVMPLUS.ini_copia3`
buscar=":"
SClargo_linea=`expr index $SCvar $buscar`
SClargo_linea=`expr $SClargo_linea - 1`
SCnumero_linea=`expr substr $SCvar 1 $SClargo_linea`
SCletra=c
SClinea_sed=$SCnumero_linea$SCletra
sed -i "$SClinea_sed $var1" ~/MMDVMHost/MMDVMPLUS.ini_copia3

#Brightness
var=`grep -n -m 1 '\<Brightness\>' ~/Downloads/MMDVMPLUS.ini_copia3`
var1=`grep -m 1 '\<Brightness\>' ~/Downloads/MMDVMPLUS.ini_copia3`
buscar=":"
largo_linea=`expr index $var $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea=`expr substr $var 1 $largo_linea`
BRvar=`grep -n -m 1 '\<Brightness\>' ~/MMDVMHost/MMDVMPLUS.ini_copia3`
buscar=":"
BRlargo_linea=`expr index $BRvar $buscar`
BRlargo_linea=`expr $BRlargo_linea - 1`
BRnumero_linea=`expr substr $BRvar 1 $BRlargo_linea`
BRletra=c
BRlinea_sed=$BRnumero_linea$BRletra
sed -i "$BRlinea_sed $var1" ~/MMDVMHost/MMDVMPLUS.ini_copia3

#Slot1
var=`grep -n -m 1 '\<Slot1\>' ~/Downloads/MMDVMPLUS.ini_copia3`
var1=`grep -m 1 '\<Slot1\>' ~/Downloads/MMDVMPLUS.ini_copia3`
buscar=":"
largo_linea=`expr index $var $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea=`expr substr $var 1 $largo_linea`
SLvar=`grep -n -m 1 '\<Slot1\>' ~/MMDVMHost/MMDVMPLUS.ini_copia3`
buscar=":"
SLlargo_linea=`expr index $SLvar $buscar`
SLlargo_linea=`expr $SLlargo_linea - 1`
SLnumero_linea=`expr substr $SLvar 1 $SLlargo_linea`
SLletra=c
SLlinea_sed=$SLnumero_linea$SLletra
sed -i "$SLlinea_sed $var1" ~/MMDVMHost/MMDVMPLUS.ini_copia3

#DisplayLevel
var=`grep -n -m 1 '\<DisplayLevel\>' ~/Downloads/MMDVMPLUS.ini_copia3`
var1=`grep -m 1 '\<DisplayLevel\>' ~/Downloads/MMDVMPLUS.ini_copia3`
buscar=":"
largo_linea=`expr index $var $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea=`expr substr $var 1 $largo_linea`
DIvar=`grep -n -m 1 '\<DisplayLevel\>' ~/MMDVMHost/MMDVMPLUS.ini_copia3`
buscar=":"
DIlargo_linea=`expr index $DIvar $buscar`
DIlargo_linea=`expr $DIlargo_linea - 1`
DInumero_linea=`expr substr $DIvar 1 $DIlargo_linea`
DIletra=c
DIlinea_sed=$DInumero_linea$DIletra
sed -i "$DIlinea_sed $var1" ~/MMDVMHost/MMDVMPLUS.ini_copia3

#TXHang
var=`grep -n -m 1 '\<TXHang\>' ~/Downloads/MMDVMPLUS.ini_copia3`
var1=`grep -m 1 '\<TXHang\>' ~/Downloads/MMDVMPLUS.ini_copia3`
buscar=":"
largo_linea=`expr index $var $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea=`expr substr $var 1 $largo_linea`
THvar=`grep -n -m 1 '\<TXHang\>' ~/MMDVMHost/MMDVMPLUS.ini_copia3`
buscar=":"
THlargo_linea=`expr index $THvar $buscar`
THlargo_linea=`expr $THlargo_linea - 1`
THnumero_linea=`expr substr $THvar 1 $THlargo_linea`
THletra=c
THlinea_sed=$THnumero_linea$THletra
sed -i "$THlinea_sed $var1" ~/MMDVMHost/MMDVMPLUS.ini_copia3

#D-Star
var=`grep -n -m 1 "\[D-Star\]" ~/Downloads/MMDVMPLUS.ini_copia3` 
var1=`grep -m 1 "\[D-Star\]" ~/Downloads/MMDVMPLUS.ini_copia3`
buscar=":"
largo_linea=`expr index $var $buscar` 
largo_linea=`expr $largo_linea - 1` 
numero_linea=`expr substr $var 1 $largo_linea` 
numero_linea_dstar=`expr $numero_linea + 1` 
DSvar=`grep -n -m 1 "\[D-Star\]" ~/MMDVMHost/MMDVMPLUS.ini_copia3` 
DSvar1=`grep -m 1 "\[D-Star\]" ~/MMDVMHost/MMDVMPLUS.ini_copia3`
buscar=":"
DSlargo_linea=`expr index $DSvar $buscar` 
DSlargo_linea=`expr $DSlargo_linea - 1` 
DSnumero_linea=`expr substr $DSvar 1 $DSlargo_linea` 
DSnumero_linea_dstar=`expr $DSnumero_linea + 1`
DSDS=$(awk "NR==$numero_linea_dstar" ~/Downloads/MMDVMPLUS.ini_copia3) 
DSletrac=c
DSlinea_sed=$DSnumero_linea_dstar$DSletrac
sed -i "$DSlinea_sed $DSDS" ~/MMDVMHost/MMDVMPLUS.ini_copia3

#DMR
var=`grep -n -m 1 "\[DMR\]" ~/Downloads/MMDVMPLUS.ini_copia3` 
var1=`grep -m 1 "\[DMR\]" ~/Downloads/MMDVMPLUS.ini_copia3`
buscar=":"
largo_linea=`expr index $var $buscar` 
largo_linea=`expr $largo_linea - 1` 
numero_linea=`expr substr $var 1 $largo_linea` 
numero_linea_dmr=`expr $numero_linea + 1` 
DMvar=`grep -n "\[DMR\]" ~/MMDVMHost/MMDVMPLUS.ini_copia3` 
DMvar1=`grep -n -m 1 "\[DMR\]" ~/MMDVMHost/MMDVMPLUS.ini_copia3`
buscar=":"
DMlargo_linea=`expr index $DMvar $buscar` 
DMlargo_linea=`expr $DMlargo_linea - 1` 
DMnumero_linea=`expr substr $DMvar 1 $DMlargo_linea` 
DMnumero_linea_dmr=`expr $DMnumero_linea + 1` 
DMDM=$(awk "NR==$numero_linea_dmr" ~/Downloads/MMDVMPLUS.ini_copia3)
DMletrac=c
DMlinea_sed=$DMnumero_linea_dmr$DMletrac 
sed -i "$DMlinea_sed $DMDM" ~/MMDVMHost/MMDVMPLUS.ini_copia3

#P25
var=`grep -n -m 1 "\[P25\]" ~/Downloads/MMDVMPLUS.ini_copia3` 
var1=`grep -m 1 "\[P25\]" ~/Downloads/MMDVMPLUS.ini_copia3`
buscar=":"
largo_linea=`expr index $var $buscar` 
largo_linea=`expr $largo_linea - 1` 
numero_linea=`expr substr $var 1 $largo_linea` 
numero_linea_p25=`expr $numero_linea + 1` 
P2var=`grep -n -m 1 "\[P25\]" ~/MMDVMHost/MMDVMPLUS.ini_copia3` 
P2var1=`grep -n "\[P25\]" ~/MMDVMHost/MMDVMPLUS.ini_copia3`
buscar=":"
P2largo_linea=`expr index $P2var $buscar` 
P2largo_linea=`expr $P2largo_linea - 1` 
P2numero_linea=`expr substr $P2var 1 $P2largo_linea` 
P2numero_linea_p25=`expr $P2numero_linea + 1` 
P2P2=$(awk "NR==$numero_linea_p25" ~/Downloads/MMDVMPLUS.ini_copia3)
P2letrac=c
P2linea_sed=$P2numero_linea_p25$P2letrac
sed -i "$P2linea_sed $P2P2" ~/MMDVMHost/MMDVMPLUS.ini_copia3

#NXDN
var=`grep -n -m 1 "\[NXDN\]" ~/Downloads/MMDVMPLUS.ini_copia3` 
var1=`grep -m 1 "\[NXDN\]" ~/Downloads/MMDVMPLUS.ini_copia3`
buscar=":"
largo_linea=`expr index $var $buscar` 
largo_linea=`expr $largo_linea - 1` 
numero_linea=`expr substr $var 1 $largo_linea` 
numero_linea_p25=`expr $numero_linea + 1`
P2P2=$(awk "NR==$numero_linea_p25" ~/Downloads/MMDVMPLUS.ini_copia3)
P2var=`grep -n -m 1 "\[NXDN\]" ~/MMDVMHost/MMDVMPLUS.ini_copia3` 
P2var1=`grep -n "\[NXDN\]" ~/MMDVMHost/MMDVMPLUS.ini_copia3`
buscar=":"
P2largo_linea=`expr index $P2var $buscar` 
P2largo_linea=`expr $P2largo_linea - 1` 
P2numero_linea=`expr substr $P2var 1 $P2largo_linea` 
P2numero_linea_p25=`expr $P2numero_linea + 1` 
P2letrac=c
P2linea_sed=$P2numero_linea_p25$P2letrac
sed -i "$P2linea_sed $P2P2" ~/MMDVMHost/MMDVMPLUS.ini_copia3

#FUSION
var1=`grep -n -m 1 "\[System Fusion\]" ~/Downloads/MMDVMPLUS.ini_copia3`
var2=`echo "$var1" | tr -d '[[:space:]]'`
buscar=":"
largo_linea=`expr index $var2 $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea=`expr substr $var2 1 $largo_linea`
numero_linea=`expr $numero_linea + 1`
CWvar1=`grep -n -m 1 "\[System Fusion\]" ~/MMDVMHost/MMDVMPLUS.ini_copia3`
CWvar2=`echo "$CWvar1" | tr -d '[[:space:]]'`
buscar=":"
CWlargo_linea=`expr index $CWvar2 $buscar`
CWlargo_linea=`expr $CWlargo_linea - 1`
CWnumero_linea=`expr substr $CWvar2 1 $CWlargo_linea`
CWnumero_linea=`expr $CWnumero_linea + 1`
CWCW=$(awk "NR==$CWnumero_linea" ~/Downloads/MMDVMPLUS.ini_copia3)
CWletra=c
CWlinea_sed=$CWnumero_linea$CWletra
sed -i "$CWlinea_sed $CWCW" ~/MMDVMHost/MMDVMPLUS.ini_copia3

#Nextion
var=`grep -n -m 1 "\[Nextion\]" ~/Downloads/MMDVMPLUS.ini_copia3` 
var1=`grep -m 1 "\[Nextion\]" ~/Downloads/MMDVMPLUS.ini_copia3`
buscar=":"
largo_linea=`expr index $var $buscar` 
largo_linea=`expr $largo_linea - 1` 
numero_linea=`expr substr $var 1 $largo_linea` 
numero_linea_p25=`expr $numero_linea + 2` 
P2var=`grep -n -m 1 "\[Nextion\]" ~/MMDVMHost/MMDVMPLUS.ini_copia3` 
P2var1=`grep -n "\[Nextion\]" ~/MMDVMHost/MMDVMPLUS.ini_copia3`
buscar=":"
P2largo_linea=`expr index $P2var $buscar` 
P2largo_linea=`expr $P2largo_linea - 1` 
P2numero_linea=`expr substr $P2var 1 $P2largo_linea` 
P2numero_linea_p25=`expr $P2numero_linea + 2` 
P2P2=$(awk "NR==$numero_linea_p25" ~/Downloads/MMDVMPLUS.ini_copia3)
P2letrac=c
P2linea_sed=$P2numero_linea_p25$P2letrac
sed -i "$P2linea_sed $P2P2" ~/MMDVMHost/MMDVMPLUS.ini_copia3

#======================= MMDVMDSTAR.ini   ============================

# Callsign 
var=`grep -n -m 1 '\<Callsign\>' ~/Downloads/MMDVMDSTAR.ini` # 2:Callsign=EA3EIZ
var1=`grep -m 1 '\<Callsign\>' ~/Downloads/MMDVMDSTAR.ini` # Callsign=EA3EIZ
buscar=":"
largo_linea=`expr index $var $buscar` #comprueba el largo incluyendo los dos puntos (:)
largo_linea=`expr $largo_linea - 1` #comprueba el largo quitando los dos puntos (:)
numero_linea=`expr substr $var 1 $largo_linea` # recoge numero linea Downloads
Hvar=`grep -n -m 1 '\<Callsign\>' ~/MMDVMHost/MMDVMDSTAR.ini` # 2:Callsign=EA3EIZ
buscar=":"
Hlargo_linea=`expr index $Hvar $buscar` 
Hlargo_linea=`expr $Hlargo_linea - 1` 
Hnumero_linea=`expr substr $Hvar 1 $Hlargo_linea` # recoge numero linea MMDXVMHost
Hletra=c
Hlinea_sed=$Hnumero_linea$Hletra
sed -i "$Hlinea_sed $var1" ~/MMDVMHost/MMDVMDSTAR.ini

#Id capturado de la linea 3
Id=$(awk "NR==3" ~/Downloads/MMDVMDSTAR.ini)
sed -i "3c $Id" ~/MMDVMHost/MMDVMDSTAR.ini

#Timeout capturado de la linea 4
timeou=$(awk "NR==4" ~/Downloads/MMDVMDSTAR.ini)
sed -i "4c $timeou" ~/MMDVMHost/MMDVMDSTAR.ini

#Duplex
var=`grep -n -m 1 '\<Duplex\>' ~/Downloads/MMDVMDSTAR.ini`
var1=`grep -m 1 '\<Duplex\>' ~/Downloads/MMDVMDSTAR.ini`
buscar=":"
largo_linea=`expr index $var $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea=`expr substr $var 1 $largo_linea`
Dvar=`grep -n -m 1 '\<Duplex\>' ~/MMDVMHost/MMDVMDSTAR.ini`
buscar=":"
Dlargo_linea=`expr index $Dvar $buscar`
Dlargo_linea=`expr $Dlargo_linea - 1`
Dnumero_linea=`expr substr $Dvar 1 $Dlargo_linea`
Dletra=c
Dlinea_sed=$Dnumero_linea$Dletra
sed -i "$Dlinea_sed $var1" ~/MMDVMHost/MMDVMDSTAR.ini

#RFModeHang
var=`grep -n -m 1 '\<RFModeHang\>' ~/Downloads/MMDVMDSTAR.ini`
var1=`grep -m 1 '\<RFModeHang\>' ~/Downloads/MMDVMDSTAR.ini`
buscar=":"
largo_linea=`expr index $var $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea=`expr substr $var 1 $largo_linea`
Rvar=`grep -n -m 1 '\<RFModeHang\>' ~/MMDVMHost/MMDVMDSTAR.ini`
buscar=":"
Rlargo_linea=`expr index $Rvar $buscar`
Rlargo_linea=`expr $Rlargo_linea - 1`
Rnumero_linea=`expr substr $Rvar 1 $Rlargo_linea`
Rletra=c
Rlinea_sed=$Rnumero_linea$Rletra
sed -i "$Rlinea_sed $var1" ~/MMDVMHost/MMDVMDSTAR.ini

#Display
var=`grep -n -m 1 '\<Display\>' ~/Downloads/MMDVMDSTAR.ini`
var1=`grep -m 1 '\<Display\>' ~/Downloads/MMDVMDSTAR.ini`
buscar=":"
largo_linea=`expr index $var $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea=`expr substr $var 1 $largo_linea`
Dvar=`grep -n -m 1 '\<Display\>' ~/MMDVMHost/MMDVMDSTAR.ini`
buscar=":"
Dlargo_linea=`expr index $Dvar $buscar`
Dlargo_linea=`expr $Dlargo_linea - 1`
Dnumero_linea=`expr substr $Dvar 1 $Dlargo_linea`
Dletra=c
Dlinea_sed=$Dnumero_linea$Dletra
sed -i "$Dlinea_sed $var1" ~/MMDVMHost/MMDVMDSTAR.ini

#RXFrequency
var=`grep -n -m 1 '\<RXFrequency\>' ~/Downloads/MMDVMDSTAR.ini`
var1=`grep -m 1 '\<RXFrequency\>' ~/Downloads/MMDVMDSTAR.ini`
buscar=":"
largo_linea=`expr index $var $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea=`expr substr $var 1 $largo_linea`
Xvar=`grep -n -m 1 '\<RXFrequency\>' ~/MMDVMHost/MMDVMDSTAR.ini`
buscar=":"
Xlargo_linea=`expr index $Xvar $buscar`
Xlargo_linea=`expr $Xlargo_linea - 1`
Xnumero_linea=`expr substr $Xvar 1 $Xlargo_linea`
Xletra=c
Xlinea_sed=$Xnumero_linea$Xletra
sed -i "$Xlinea_sed $var1" ~/MMDVMHost/MMDVMDSTAR.ini

#TXFrequency
var=`grep -n -m 1 '\<TXFrequency\>' ~/Downloads/MMDVMDSTAR.ini`
var1=`grep -m 1 '\<TXFrequency\>' ~/Downloads/MMDVMDSTAR.ini`
buscar=":"
largo_linea=`expr index $var $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea=`expr substr $var 1 $largo_linea`
Tvar=`grep -n -m 1 '\<TXFrequency\>' ~/MMDVMHost/MMDVMDSTAR.ini`
buscar=":"
Tlargo_linea=`expr index $Tvar $buscar`
Tlargo_linea=`expr $Tlargo_linea - 1`
Tnumero_linea=`expr substr $Tvar 1 $Tlargo_linea`
Tletra=c
Tlinea_sed=$Tnumero_linea$Tletra
sed -i "$Tlinea_sed $var1" ~/MMDVMHost/MMDVMDSTAR.ini

#Latitude
var=`grep -n -m 1 '\<Latitude\>' ~/Downloads/MMDVMDSTAR.ini`
var1=`grep -m 1 '\<Latitude\>' ~/Downloads/MMDVMDSTAR.ini`
buscar=":"
largo_linea=`expr index $var $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea=`expr substr $var 1 $largo_linea`
Lvar=`grep -n -m 1 '\<Latitude\>' ~/MMDVMHost/MMDVMDSTAR.ini`
buscar=":"
Llargo_linea=`expr index $Lvar $buscar`
Llargo_linea=`expr $Llargo_linea - 1`
Lnumero_linea=`expr substr $Lvar 1 $Llargo_linea`
Lletra=c
Llinea_sed=$Lnumero_linea$Lletra
sed -i "$Llinea_sed $var1" ~/MMDVMHost/MMDVMDSTAR.ini

#Longitude
var=`grep -n -m 1 '\<Longitude\>' ~/Downloads/MMDVMDSTAR.ini`
var1=`grep -m 1 '\<Longitude\>' ~/Downloads/MMDVMDSTAR.ini`
buscar=":"
largo_linea=`expr index $var $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea=`expr substr $var 1 $largo_linea`
LGvar=`grep -n -m 1 '\<Longitude\>' ~/MMDVMHost/MMDVMDSTAR.ini`
buscar=":"
LGlargo_linea=`expr index $LGvar $buscar`
LGlargo_linea=`expr $LGlargo_linea - 1`
LGnumero_linea=`expr substr $LGvar 1 $LGlargo_linea`
LGletra=c
LGlinea_sed=$LGnumero_linea$LGletra
sed -i "$LGlinea_sed $var1" ~/MMDVMHost/MMDVMDSTAR.ini

#Location
var=`grep -n -m 1 '\<Location\>' ~/Downloads/MMDVMDSTAR.ini`
var1=`grep -m 1 '\<Location\>' ~/Downloads/MMDVMDSTAR.ini`
buscar=":"
largo_linea=`expr index $var $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea=`expr substr $var 1 $largo_linea`
LOvar=`grep -n -m 1 '\<Location\>' ~/MMDVMHost/MMDVMDSTAR.ini`
buscar=":"
LOlargo_linea=`expr index $LOvar $buscar`
LOlargo_linea=`expr $LOlargo_linea - 1`
LOnumero_linea=`expr substr $LOvar 1 $LOlargo_linea`
LOletra=c
LOlinea_sed=$LOnumero_linea$LOletra
sed -i "$LOlinea_sed $var1" ~/MMDVMHost/MMDVMDSTAR.ini

#URL
var=`grep -n -m 1 '\<URL\>' ~/Downloads/MMDVMDSTAR.ini`
var1=`grep -m 1 '\<URL\>' ~/Downloads/MMDVMDSTAR.ini`
buscar=":"
largo_linea=`expr index $var $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea_url=`expr substr $var 1 $largo_linea`
Uvar=`grep -n -m 1 '\<URL\>' ~/MMDVMHost/MMDVMDSTAR.ini`
Ubuscar=":"
Ulargo_linea=`expr index $Uvar $buscar`
Ulargo_linea=`expr $Ulargo_linea - 1`
Unumero_linea_url=`expr substr $Uvar 1 $largo_linea`
Uletra=c
Ulinea_sed=$Unumero_linea_url$Uletra
sed -i "$Ulinea_sed $var1" ~/MMDVMHost/MMDVMDSTAR.ini

#Baliza 
var1=`grep -n -m 1 "\[CW Id\]" ~/Downloads/MMDVMDSTAR.ini`
var2=`echo "$var1" | tr -d '[[:space:]]'`
buscar=":"
largo_linea=`expr index $var2 $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea=`expr substr $var2 1 $largo_linea`
numero_linea=`expr $numero_linea + 1`
CWvar1=`grep -n -m 1 "\[CW Id\]" ~/MMDVMHost/MMDVMDSTAR.ini`
CWvar2=`echo "$CWvar1" | tr -d '[[:space:]]'`
buscar=":"
CWlargo_linea=`expr index $CWvar2 $buscar`
CWlargo_linea=`expr $CWlargo_linea - 1`
CWnumero_linea=`expr substr $CWvar2 1 $CWlargo_linea`
CWnumero_linea=`expr $CWnumero_linea + 1`
CWCW=$(awk "NR==$CWnumero_linea" ~/Downloads/MMDVMDSTAR.ini)
CWletra=c
CWlinea_sed=$CWnumero_linea$CWletra
sed -i "$CWlinea_sed $CWCW" ~/MMDVMHost/MMDVMDSTAR.ini

#RXLevel
var=`grep -n -m 1 '\<RXLevel\>' ~/Downloads/MMDVMDSTAR.ini`
var1=`grep -m 1 '\<RXLevel\>' ~/Downloads/MMDVMDSTAR.ini`
buscar=":"
largo_linea=`expr index $var $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea=`expr substr $var 1 $largo_linea`
RLvar=`grep -n -m 1 '\<RXLevel\>' ~/MMDVMHost/MMDVMDSTAR.ini`
buscar=":"
RLlargo_linea=`expr index $RLvar $buscar`
RLlargo_linea=`expr $RLlargo_linea - 1`
RLnumero_linea=`expr substr $RLvar 1 $RLlargo_linea`
RLletra=c
RLlinea_sed=$RLnumero_linea$RLletra
sed -i "$RLlinea_sed $var1" ~/MMDVMHost/MMDVMDSTAR.ini

#TXLevel
var=`grep -n -m 1 '\<TXLevel\>' ~/Downloads/MMDVMDSTAR.ini`
var1=`grep -m 1 '\<TXLevel\>' ~/Downloads/MMDVMDSTAR.ini`
buscar=":"
largo_linea=`expr index $var $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea=`expr substr $var 1 $largo_linea`
TLvar=`grep -n -m 1 '\<TXLevel\>' ~/MMDVMHost/MMDVMDSTAR.ini`
buscar=":"
TLlargo_linea=`expr index $TLvar $buscar`
TLlargo_linea=`expr $TLlargo_linea - 1`
TLnumero_linea=`expr substr $TLvar 1 $TLlargo_linea`
TLletra=c
TLlinea_sed=$TLnumero_linea$TLletra
sed -i "$TLlinea_sed $var1" ~/MMDVMHost/MMDVMDSTAR.ini

#Module
var=`grep -n -m 1 '\<Module\>' ~/Downloads/MMDVMDSTAR.ini`
var1=`grep -m 1 '\<Module\>' ~/Downloads/MMDVMDSTAR.ini`
buscar=":"
largo_linea=`expr index $var $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea=`expr substr $var 1 $largo_linea`
MOvar=`grep -n -m 1 '\<Module\>' ~/MMDVMHost/MMDVMDSTAR.ini`
buscar=":"
MOlargo_linea=`expr index $MOvar $buscar`
MOlargo_linea=`expr $MOlargo_linea - 1`
MOnumero_linea=`expr substr $MOvar 1 $MOlargo_linea`
MOletra=c
MOlinea_sed=$MOnumero_linea$MOletra
sed -i "$MOlinea_sed $var1" ~/MMDVMHost/MMDVMDSTAR.ini

#Txinvert
var=`grep -n -m 1 '\<TXInvert\>' ~/Downloads/MMDVMDSTAR.ini`
var1=`grep -m 1 '\<TXInvert\>' ~/Downloads/MMDVMDSTAR.ini`
buscar=":"
largo_linea=`expr index $var $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea=`expr substr $var 1 $largo_linea`
TIvar=`grep -n -m 1 '\<TXInvert\>' ~/MMDVMHost/MMDVMDSTAR.ini`
buscar=":"
TIlargo_linea=`expr index $TIvar $buscar`
TIlargo_linea=`expr $TIlargo_linea - 1`
TInumero_linea=`expr substr $TIvar 1 $TIlargo_linea`
TIletra=c
TIlinea_sed=$TInumero_linea$TIletra
sed -i "$TIlinea_sed $var1" ~/MMDVMHost/MMDVMDSTAR.ini

#Modem capturado de la linea txinvert -1
numero_linea_MODEM=`expr $numero_linea - 1` # Downloads
MOnumero_linea_MODEM=`expr $TInumero_linea - 1` # MMDVMHost
modem=$(awk "NR==$numero_linea_MODEM" ~/Downloads/MMDVMDSTAR.ini)
TIletra=c
TIlinea_sed=$MOnumero_linea_MODEM$TIletra
sed -i "$TIlinea_sed $modem" ~/MMDVMHost/MMDVMDSTAR.ini

#Address
var=`grep -n -m 1 '\<Address\>' ~/Downloads/MMDVMDSTAR.ini`
var1=`grep -m 1 '\<Address\>' ~/Downloads/MMDVMDSTAR.ini`
buscar=":"
largo_linea=`expr index $var $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea_Address=`expr substr $var 1 $largo_linea`
ADvar=`grep -n -m 1 '\<Address\>' ~/MMDVMHost/MMDVMDSTAR.ini`
buscar=":"
ADlargo_linea=`expr index $ADvar $buscar`
ADlargo_linea=`expr $ADlargo_linea - 1`
ADnumero_linea_Address=`expr substr $ADvar 1 $ADlargo_linea`
ADletra=c
ADlinea_sed=$ADnumero_linea_Address$ADletra
sed -i "$ADlinea_sed $var1" ~/MMDVMHost/MMDVMDSTAR.ini

#Port captura de la linea Address +1
numero_linea_Address=`expr $numero_linea_Address + 1` # Downloads
ADnumero_linea_Address=`expr $ADnumero_linea_Address + 1` # MMDVMHost
port=$(awk "NR==$numero_linea_Address" ~/Downloads/MMDVMDSTAR.ini)
ADletra=c
ADlinea_sed=$ADnumero_linea_Address$ADletra
sed -i "$ADlinea_sed $port" ~/MMDVMHost/MMDVMDSTAR.ini

#Password
var=`grep -n -m 1 '\<Password\>' ~/Downloads/MMDVMDSTAR.ini`
var1=`grep -m 1 '\<Password\>' ~/Downloads/MMDVMDSTAR.ini`
buscar=":"
largo_linea=`expr index $var $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea_password=`expr substr $var 1 $largo_linea`
PWvar=`grep -n -m 1 '\<Password\>' ~/MMDVMHost/MMDVMDSTAR.ini`
buscar=":"
PWlargo_linea=`expr index $PWvar $buscar`
PWlargo_linea=`expr $PWlargo_linea - 1`
PWnumero_linea_password=`expr substr $PWvar 1 $PWlargo_linea`
PWletra=c
PWlinea_sed=$PWnumero_linea_password$PWletra
sed -i "$PWlinea_sed $var1" ~/MMDVMHost/MMDVMDSTAR.ini

#Options linea password  +1
numero_linea_password=`expr $numero_linea_password + 1` # Downloads
PWnumero_linea_password=`expr $PWnumero_linea_password + 1` # MMDVMHost
option=$(awk "NR==$numero_linea_password" ~/Downloads/MMDVMDSTAR.ini)
PWletra=c
PWlinea_sed=$PWnumero_linea_password$PWletra
sed -i "$PWlinea_sed $option" ~/MMDVMHost/MMDVMDSTAR.ini

#ScreenLayout
var=`grep -n -m 1 '\<ScreenLayout\>' ~/Downloads/MMDVMDSTAR.ini`
var1=`grep -m 1 '\<ScreenLayout\>' ~/Downloads/MMDVMDSTAR.ini`
buscar=":"
largo_linea=`expr index $var $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea=`expr substr $var 1 $largo_linea`
SCvar=`grep -n -m 1 '\<ScreenLayout\>' ~/MMDVMHost/MMDVMDSTAR.ini`
buscar=":"
SClargo_linea=`expr index $SCvar $buscar`
SClargo_linea=`expr $SClargo_linea - 1`
SCnumero_linea=`expr substr $SCvar 1 $SClargo_linea`
SCletra=c
SClinea_sed=$SCnumero_linea$SCletra
sed -i "$SClinea_sed $var1" ~/MMDVMHost/MMDVMDSTAR.ini

#Brightness
var=`grep -n -m 1 '\<Brightness\>' ~/Downloads/MMDVMDSTAR.ini`
var1=`grep -m 1 '\<Brightness\>' ~/Downloads/MMDVMDSTAR.ini`
buscar=":"
largo_linea=`expr index $var $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea=`expr substr $var 1 $largo_linea`
BRvar=`grep -n -m 1 '\<Brightness\>' ~/MMDVMHost/MMDVMDSTAR.ini`
buscar=":"
BRlargo_linea=`expr index $BRvar $buscar`
BRlargo_linea=`expr $BRlargo_linea - 1`
BRnumero_linea=`expr substr $BRvar 1 $BRlargo_linea`
BRletra=c
BRlinea_sed=$BRnumero_linea$BRletra
sed -i "$BRlinea_sed $var1" ~/MMDVMHost/MMDVMDSTAR.ini

#Slot1
var=`grep -n -m 1 '\<Slot1\>' ~/Downloads/MMDVMDSTAR.ini`
var1=`grep -m 1 '\<Slot1\>' ~/Downloads/MMDVMDSTAR.ini`
buscar=":"
largo_linea=`expr index $var $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea=`expr substr $var 1 $largo_linea`
SLvar=`grep -n -m 1 '\<Slot1\>' ~/MMDVMHost/MMDVMDSTAR.ini`
buscar=":"
SLlargo_linea=`expr index $SLvar $buscar`
SLlargo_linea=`expr $SLlargo_linea - 1`
SLnumero_linea=`expr substr $SLvar 1 $SLlargo_linea`
SLletra=c
SLlinea_sed=$SLnumero_linea$SLletra
sed -i "$SLlinea_sed $var1" ~/MMDVMHost/MMDVMDSTAR.ini

#DisplayLevel
var=`grep -n -m 1 '\<DisplayLevel\>' ~/Downloads/MMDVMDSTAR.ini`
var1=`grep -m 1 '\<DisplayLevel\>' ~/Downloads/MMDVMDSTAR.ini`
buscar=":"
largo_linea=`expr index $var $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea=`expr substr $var 1 $largo_linea`
DIvar=`grep -n -m 1 '\<DisplayLevel\>' ~/MMDVMHost/MMDVMDSTAR.ini`
buscar=":"
DIlargo_linea=`expr index $DIvar $buscar`
DIlargo_linea=`expr $DIlargo_linea - 1`
DInumero_linea=`expr substr $DIvar 1 $DIlargo_linea`
DIletra=c
DIlinea_sed=$DInumero_linea$DIletra
sed -i "$DIlinea_sed $var1" ~/MMDVMHost/MMDVMDSTAR.ini

#TXHang
var=`grep -n -m 1 '\<TXHang\>' ~/Downloads/MMDVMDSTAR.ini`
var1=`grep -m 1 '\<TXHang\>' ~/Downloads/MMDVMDSTAR.ini`
buscar=":"
largo_linea=`expr index $var $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea=`expr substr $var 1 $largo_linea`
THvar=`grep -n -m 1 '\<TXHang\>' ~/MMDVMHost/MMDVMDSTAR.ini`
buscar=":"
THlargo_linea=`expr index $THvar $buscar`
THlargo_linea=`expr $THlargo_linea - 1`
THnumero_linea=`expr substr $THvar 1 $THlargo_linea`
THletra=c
THlinea_sed=$THnumero_linea$THletra
sed -i "$THlinea_sed $var1" ~/MMDVMHost/MMDVMDSTAR.ini

#D-Star
var=`grep -n -m 1 "\[D-Star\]" ~/Downloads/MMDVMDSTAR.ini` 
var1=`grep -m 1 "\[D-Star\]" ~/Downloads/MMDVMDSTAR.ini`
buscar=":"
largo_linea=`expr index $var $buscar` 
largo_linea=`expr $largo_linea - 1` 
numero_linea=`expr substr $var 1 $largo_linea` 
numero_linea_dstar=`expr $numero_linea + 1` 
DSvar=`grep -n -m 1 "\[D-Star\]" ~/MMDVMHost/MMDVMDSTAR.ini` 
DSvar1=`grep -m 1 "\[D-Star\]" ~/MMDVMHost/MMDVMDSTAR.ini`
buscar=":"
DSlargo_linea=`expr index $DSvar $buscar` 
DSlargo_linea=`expr $DSlargo_linea - 1` 
DSnumero_linea=`expr substr $DSvar 1 $DSlargo_linea` 
DSnumero_linea_dstar=`expr $DSnumero_linea + 1`
DSDS=$(awk "NR==$numero_linea_dstar" ~/Downloads/MMDVMDSTAR.ini) 
DSletrac=c
DSlinea_sed=$DSnumero_linea_dstar$DSletrac
sed -i "$DSlinea_sed $DSDS" ~/MMDVMHost/MMDVMDSTAR.ini

#DMR
var=`grep -n -m 1 "\[DMR\]" ~/Downloads/MMDVMDSTAR.ini` 
var1=`grep -m 1 "\[DMR\]" ~/Downloads/MMDVMDSTAR.ini`
buscar=":"
largo_linea=`expr index $var $buscar` 
largo_linea=`expr $largo_linea - 1` 
numero_linea=`expr substr $var 1 $largo_linea` 
numero_linea_dmr=`expr $numero_linea + 1` 
DMvar=`grep -n "\[DMR\]" ~/MMDVMHost/MMDVMDSTAR.ini` 
DMvar1=`grep -n -m 1 "\[DMR\]" ~/MMDVMHost/MMDVMDSTAR.ini`
buscar=":"
DMlargo_linea=`expr index $DMvar $buscar` 
DMlargo_linea=`expr $DMlargo_linea - 1` 
DMnumero_linea=`expr substr $DMvar 1 $DMlargo_linea` 
DMnumero_linea_dmr=`expr $DMnumero_linea + 1` 
DMDM=$(awk "NR==$numero_linea_dmr" ~/Downloads/MMDVMDSTAR.ini)
DMletrac=c
DMlinea_sed=$DMnumero_linea_dmr$DMletrac 
sed -i "$DMlinea_sed $DMDM" ~/MMDVMHost/MMDVMDSTAR.ini

#P25
var=`grep -n -m 1 "\[P25\]" ~/Downloads/MMDVMDSTAR.ini` 
var1=`grep -m 1 "\[P25\]" ~/Downloads/MMDVMDSTAR.ini`
buscar=":"
largo_linea=`expr index $var $buscar` 
largo_linea=`expr $largo_linea - 1` 
numero_linea=`expr substr $var 1 $largo_linea` 
numero_linea_p25=`expr $numero_linea + 1` 
P2var=`grep -n -m 1 "\[P25\]" ~/MMDVMHost/MMDVMDSTAR.ini` 
P2var1=`grep -n "\[P25\]" ~/MMDVMHost/MMDVMDSTAR.ini`
buscar=":"
P2largo_linea=`expr index $P2var $buscar` 
P2largo_linea=`expr $P2largo_linea - 1` 
P2numero_linea=`expr substr $P2var 1 $P2largo_linea` 
P2numero_linea_p25=`expr $P2numero_linea + 1` 
P2P2=$(awk "NR==$numero_linea_p25" ~/Downloads/MMDVMDSTAR.ini)
P2letrac=c
P2linea_sed=$P2numero_linea_p25$P2letrac
sed -i "$P2linea_sed $P2P2" ~/MMDVMHost/MMDVMDSTAR.ini

#NXDN
var=`grep -n -m 1 "\[NXDN\]" ~/Downloads/MMDVMDSTAR.ini` 
var1=`grep -m 1 "\[NXDN\]" ~/Downloads/MMDVMDSTAR.ini`
buscar=":"
largo_linea=`expr index $var $buscar` 
largo_linea=`expr $largo_linea - 1` 
numero_linea=`expr substr $var 1 $largo_linea` 
numero_linea_p25=`expr $numero_linea + 1`
P2P2=$(awk "NR==$numero_linea_p25" ~/Downloads/MMDVMDSTAR.ini)
P2var=`grep -n -m 1 "\[NXDN\]" ~/MMDVMHost/MMDVMDSTAR.ini` 
P2var1=`grep -n "\[NXDN\]" ~/MMDVMHost/MMDVMDSTAR.ini`
buscar=":"
P2largo_linea=`expr index $P2var $buscar` 
P2largo_linea=`expr $P2largo_linea - 1` 
P2numero_linea=`expr substr $P2var 1 $P2largo_linea` 
P2numero_linea_p25=`expr $P2numero_linea + 1` 
P2letrac=c
P2linea_sed=$P2numero_linea_p25$P2letrac
sed -i "$P2linea_sed $P2P2" ~/MMDVMHost/MMDVMDSTAR.ini

#FUSION
var1=`grep -n -m 1 "\[System Fusion\]" ~/Downloads/MMDVMDSTAR.ini`
var2=`echo "$var1" | tr -d '[[:space:]]'`
buscar=":"
largo_linea=`expr index $var2 $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea=`expr substr $var2 1 $largo_linea`
numero_linea=`expr $numero_linea + 1`
CWvar1=`grep -n -m 1 "\[System Fusion\]" ~/MMDVMHost/MMDVMDSTAR.ini`
CWvar2=`echo "$CWvar1" | tr -d '[[:space:]]'`
buscar=":"
CWlargo_linea=`expr index $CWvar2 $buscar`
CWlargo_linea=`expr $CWlargo_linea - 1`
CWnumero_linea=`expr substr $CWvar2 1 $CWlargo_linea`
CWnumero_linea=`expr $CWnumero_linea + 1`
CWCW=$(awk "NR==$CWnumero_linea" ~/Downloads/MMDVMDSTAR.ini)
CWletra=c
CWlinea_sed=$CWnumero_linea$CWletra
sed -i "$CWlinea_sed $CWCW" ~/MMDVMHost/MMDVMDSTAR.ini

#Nextion
var=`grep -n -m 1 "\[Nextion\]" ~/Downloads/MMDVMDSTAR.ini` 
var1=`grep -m 1 "\[Nextion\]" ~/Downloads/MMDVMDSTAR.ini`
buscar=":"
largo_linea=`expr index $var $buscar` 
largo_linea=`expr $largo_linea - 1` 
numero_linea=`expr substr $var 1 $largo_linea` 
numero_linea_p25=`expr $numero_linea + 2` 
P2var=`grep -n -m 1 "\[Nextion\]" ~/MMDVMHost/MMDVMDSTAR.ini` 
P2var1=`grep -n "\[Nextion\]" ~/MMDVMHost/MMDVMDSTAR.ini`
buscar=":"
P2largo_linea=`expr index $P2var $buscar` 
P2largo_linea=`expr $P2largo_linea - 1` 
P2numero_linea=`expr substr $P2var 1 $P2largo_linea` 
P2numero_linea_p25=`expr $P2numero_linea + 2` 
P2P2=$(awk "NR==$numero_linea_p25" ~/Downloads/MMDVMDSTAR.ini)
P2letrac=c
P2linea_sed=$P2numero_linea_p25$P2letrac
sed -i "$P2linea_sed $P2P2" ~/MMDVMHost/MMDVMDSTAR.ini
#======================= MMDVMFUSION.ini   ============================
#******************************************************************
# Callsign 
var=`grep -n -m 1 '\<Callsign\>' ~/Downloads/MMDVMFUSION.ini` # 2:Callsign=EA3EIZ
var1=`grep -m 1 '\<Callsign\>' ~/Downloads/MMDVMFUSION.ini` # Callsign=EA3EIZ
buscar=":"
largo_linea=`expr index $var $buscar` #comprueba el largo incluyendo los dos puntos (:)
largo_linea=`expr $largo_linea - 1` #comprueba el largo quitando los dos puntos (:)
numero_linea=`expr substr $var 1 $largo_linea` # recoge numero linea Downloads
Hvar=`grep -n -m 1 '\<Callsign\>' ~/MMDVMHost/MMDVMFUSION.ini` # 2:Callsign=EA3EIZ
buscar=":"
Hlargo_linea=`expr index $Hvar $buscar` 
Hlargo_linea=`expr $Hlargo_linea - 1` 
Hnumero_linea=`expr substr $Hvar 1 $Hlargo_linea` # recoge numero linea MMDXVMHost
Hletra=c
Hlinea_sed=$Hnumero_linea$Hletra
sed -i "$Hlinea_sed $var1" ~/MMDVMHost/MMDVMFUSION.ini

#Id capturado de la linea 3
Id=$(awk "NR==3" ~/Downloads/MMDVMFUSION.ini)
sed -i "3c $Id" ~/MMDVMHost/MMDVMFUSION.ini

#Timeout capturado de la linea 4
timeou=$(awk "NR==4" ~/Downloads/MMDVMFUSION.ini)
sed -i "4c $timeou" ~/MMDVMHost/MMDVMFUSION.ini

#Duplex
var=`grep -n -m 1 '\<Duplex\>' ~/Downloads/MMDVMFUSION.ini`
var1=`grep -m 1 '\<Duplex\>' ~/Downloads/MMDVMFUSION.ini`
buscar=":"
largo_linea=`expr index $var $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea=`expr substr $var 1 $largo_linea`
Dvar=`grep -n -m 1 '\<Duplex\>' ~/MMDVMHost/MMDVMFUSION.ini`
buscar=":"
Dlargo_linea=`expr index $Dvar $buscar`
Dlargo_linea=`expr $Dlargo_linea - 1`
Dnumero_linea=`expr substr $Dvar 1 $Dlargo_linea`
Dletra=c
Dlinea_sed=$Dnumero_linea$Dletra
sed -i "$Dlinea_sed $var1" ~/MMDVMHost/MMDVMFUSION.ini

#RFModeHang
var=`grep -n -m 1 '\<RFModeHang\>' ~/Downloads/MMDVMFUSION.ini`
var1=`grep -m 1 '\<RFModeHang\>' ~/Downloads/MMDVMFUSION.ini`
buscar=":"
largo_linea=`expr index $var $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea=`expr substr $var 1 $largo_linea`
Rvar=`grep -n -m 1 '\<RFModeHang\>' ~/MMDVMHost/MMDVMFUSION.ini`
buscar=":"
Rlargo_linea=`expr index $Rvar $buscar`
Rlargo_linea=`expr $Rlargo_linea - 1`
Rnumero_linea=`expr substr $Rvar 1 $Rlargo_linea`
Rletra=c
Rlinea_sed=$Rnumero_linea$Rletra
sed -i "$Rlinea_sed $var1" ~/MMDVMHost/MMDVMFUSION.ini

#Display
var=`grep -n -m 1 '\<Display\>' ~/Downloads/MMDVMFUSION.ini`
var1=`grep -m 1 '\<Display\>' ~/Downloads/MMDVMFUSION.ini`
buscar=":"
largo_linea=`expr index $var $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea=`expr substr $var 1 $largo_linea`
Dvar=`grep -n -m 1 '\<Display\>' ~/MMDVMHost/MMDVMFUSION.ini`
buscar=":"
Dlargo_linea=`expr index $Dvar $buscar`
Dlargo_linea=`expr $Dlargo_linea - 1`
Dnumero_linea=`expr substr $Dvar 1 $Dlargo_linea`
Dletra=c
Dlinea_sed=$Dnumero_linea$Dletra
sed -i "$Dlinea_sed $var1" ~/MMDVMHost/MMDVMFUSION.ini

#RXFrequency
var=`grep -n -m 1 '\<RXFrequency\>' ~/Downloads/MMDVMFUSION.ini`
var1=`grep -m 1 '\<RXFrequency\>' ~/Downloads/MMDVMFUSION.ini`
buscar=":"
largo_linea=`expr index $var $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea=`expr substr $var 1 $largo_linea`
Xvar=`grep -n -m 1 '\<RXFrequency\>' ~/MMDVMHost/MMDVMFUSION.ini`
buscar=":"
Xlargo_linea=`expr index $Xvar $buscar`
Xlargo_linea=`expr $Xlargo_linea - 1`
Xnumero_linea=`expr substr $Xvar 1 $Xlargo_linea`
Xletra=c
Xlinea_sed=$Xnumero_linea$Xletra
sed -i "$Xlinea_sed $var1" ~/MMDVMHost/MMDVMFUSION.ini

#TXFrequency
var=`grep -n -m 1 '\<TXFrequency\>' ~/Downloads/MMDVMFUSION.ini`
var1=`grep -m 1 '\<TXFrequency\>' ~/Downloads/MMDVMFUSION.ini`
buscar=":"
largo_linea=`expr index $var $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea=`expr substr $var 1 $largo_linea`
Tvar=`grep -n -m 1 '\<TXFrequency\>' ~/MMDVMHost/MMDVMFUSION.ini`
buscar=":"
Tlargo_linea=`expr index $Tvar $buscar`
Tlargo_linea=`expr $Tlargo_linea - 1`
Tnumero_linea=`expr substr $Tvar 1 $Tlargo_linea`
Tletra=c
Tlinea_sed=$Tnumero_linea$Tletra
sed -i "$Tlinea_sed $var1" ~/MMDVMHost/MMDVMFUSION.ini

#Latitude
var=`grep -n -m 1 '\<Latitude\>' ~/Downloads/MMDVMFUSION.ini`
var1=`grep -m 1 '\<Latitude\>' ~/Downloads/MMDVMFUSION.ini`
buscar=":"
largo_linea=`expr index $var $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea=`expr substr $var 1 $largo_linea`
Lvar=`grep -n -m 1 '\<Latitude\>' ~/MMDVMHost/MMDVMFUSION.ini`
buscar=":"
Llargo_linea=`expr index $Lvar $buscar`
Llargo_linea=`expr $Llargo_linea - 1`
Lnumero_linea=`expr substr $Lvar 1 $Llargo_linea`
Lletra=c
Llinea_sed=$Lnumero_linea$Lletra
sed -i "$Llinea_sed $var1" ~/MMDVMHost/MMDVMFUSION.ini

#Longitude
var=`grep -n -m 1 '\<Longitude\>' ~/Downloads/MMDVMFUSION.ini`
var1=`grep -m 1 '\<Longitude\>' ~/Downloads/MMDVMFUSION.ini`
buscar=":"
largo_linea=`expr index $var $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea=`expr substr $var 1 $largo_linea`
LGvar=`grep -n -m 1 '\<Longitude\>' ~/MMDVMHost/MMDVMFUSION.ini`
buscar=":"
LGlargo_linea=`expr index $LGvar $buscar`
LGlargo_linea=`expr $LGlargo_linea - 1`
LGnumero_linea=`expr substr $LGvar 1 $LGlargo_linea`
LGletra=c
LGlinea_sed=$LGnumero_linea$LGletra
sed -i "$LGlinea_sed $var1" ~/MMDVMHost/MMDVMFUSION.ini

#Location
var=`grep -n -m 1 '\<Location\>' ~/Downloads/MMDVMFUSION.ini`
var1=`grep -m 1 '\<Location\>' ~/Downloads/MMDVMFUSION.ini`
buscar=":"
largo_linea=`expr index $var $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea=`expr substr $var 1 $largo_linea`
LOvar=`grep -n -m 1 '\<Location\>' ~/MMDVMHost/MMDVMFUSION.ini`
buscar=":"
LOlargo_linea=`expr index $LOvar $buscar`
LOlargo_linea=`expr $LOlargo_linea - 1`
LOnumero_linea=`expr substr $LOvar 1 $LOlargo_linea`
LOletra=c
LOlinea_sed=$LOnumero_linea$LOletra
sed -i "$LOlinea_sed $var1" ~/MMDVMHost/MMDVMFUSION.ini

#URL
var=`grep -n -m 1 '\<URL\>' ~/Downloads/MMDVMFUSION.ini`
var1=`grep -m 1 '\<URL\>' ~/Downloads/MMDVMFUSION.ini`
buscar=":"
largo_linea=`expr index $var $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea_url=`expr substr $var 1 $largo_linea`
Uvar=`grep -n -m 1 '\<URL\>' ~/MMDVMHost/MMDVMFUSION.ini`
Ubuscar=":"
Ulargo_linea=`expr index $Uvar $buscar`
Ulargo_linea=`expr $Ulargo_linea - 1`
Unumero_linea_url=`expr substr $Uvar 1 $largo_linea`
Uletra=c
Ulinea_sed=$Unumero_linea_url$Uletra
sed -i "$Ulinea_sed $var1" ~/MMDVMHost/MMDVMFUSION.ini

#Baliza 
var1=`grep -n -m 1 "\[CW Id\]" ~/Downloads/MMDVMFUSION.ini`
var2=`echo "$var1" | tr -d '[[:space:]]'`
buscar=":"
largo_linea=`expr index $var2 $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea=`expr substr $var2 1 $largo_linea`
numero_linea=`expr $numero_linea + 1`
CWvar1=`grep -n -m 1 "\[CW Id\]" ~/MMDVMHost/MMDVMFUSION.ini`
CWvar2=`echo "$CWvar1" | tr -d '[[:space:]]'`
buscar=":"
CWlargo_linea=`expr index $CWvar2 $buscar`
CWlargo_linea=`expr $CWlargo_linea - 1`
CWnumero_linea=`expr substr $CWvar2 1 $CWlargo_linea`
CWnumero_linea=`expr $CWnumero_linea + 1`
CWCW=$(awk "NR==$CWnumero_linea" ~/Downloads/MMDVMFUSION.ini)
CWletra=c
CWlinea_sed=$CWnumero_linea$CWletra
sed -i "$CWlinea_sed $CWCW" ~/MMDVMHost/MMDVMFUSION.ini

#RXLevel
var=`grep -n -m 1 '\<RXLevel\>' ~/Downloads/MMDVMFUSION.ini`
var1=`grep -m 1 '\<RXLevel\>' ~/Downloads/MMDVMFUSION.ini`
buscar=":"
largo_linea=`expr index $var $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea=`expr substr $var 1 $largo_linea`
RLvar=`grep -n -m 1 '\<RXLevel\>' ~/MMDVMHost/MMDVMFUSION.ini`
buscar=":"
RLlargo_linea=`expr index $RLvar $buscar`
RLlargo_linea=`expr $RLlargo_linea - 1`
RLnumero_linea=`expr substr $RLvar 1 $RLlargo_linea`
RLletra=c
RLlinea_sed=$RLnumero_linea$RLletra
sed -i "$RLlinea_sed $var1" ~/MMDVMHost/MMDVMFUSION.ini

#TXLevel
var=`grep -n -m 1 '\<TXLevel\>' ~/Downloads/MMDVMFUSION.ini`
var1=`grep -m 1 '\<TXLevel\>' ~/Downloads/MMDVMFUSION.ini`
buscar=":"
largo_linea=`expr index $var $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea=`expr substr $var 1 $largo_linea`
TLvar=`grep -n -m 1 '\<TXLevel\>' ~/MMDVMHost/MMDVMFUSION.ini`
buscar=":"
TLlargo_linea=`expr index $TLvar $buscar`
TLlargo_linea=`expr $TLlargo_linea - 1`
TLnumero_linea=`expr substr $TLvar 1 $TLlargo_linea`
TLletra=c
TLlinea_sed=$TLnumero_linea$TLletra
sed -i "$TLlinea_sed $var1" ~/MMDVMHost/MMDVMFUSION.ini

#Module
var=`grep -n -m 1 '\<Module\>' ~/Downloads/MMDVMFUSION.ini`
var1=`grep -m 1 '\<Module\>' ~/Downloads/MMDVMFUSION.ini`
buscar=":"
largo_linea=`expr index $var $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea=`expr substr $var 1 $largo_linea`
MOvar=`grep -n -m 1 '\<Module\>' ~/MMDVMHost/MMDVMFUSION.ini`
buscar=":"
MOlargo_linea=`expr index $MOvar $buscar`
MOlargo_linea=`expr $MOlargo_linea - 1`
MOnumero_linea=`expr substr $MOvar 1 $MOlargo_linea`
MOletra=c
MOlinea_sed=$MOnumero_linea$MOletra
sed -i "$MOlinea_sed $var1" ~/MMDVMHost/MMDVMFUSION.ini

#Txinvert
var=`grep -n -m 1 '\<TXInvert\>' ~/Downloads/MMDVMFUSION.ini`
var1=`grep -m 1 '\<TXInvert\>' ~/Downloads/MMDVMFUSION.ini`
buscar=":"
largo_linea=`expr index $var $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea=`expr substr $var 1 $largo_linea`
TIvar=`grep -n -m 1 '\<TXInvert\>' ~/MMDVMHost/MMDVMFUSION.ini`
buscar=":"
TIlargo_linea=`expr index $TIvar $buscar`
TIlargo_linea=`expr $TIlargo_linea - 1`
TInumero_linea=`expr substr $TIvar 1 $TIlargo_linea`
TIletra=c
TIlinea_sed=$TInumero_linea$TIletra
sed -i "$TIlinea_sed $var1" ~/MMDVMHost/MMDVMFUSION.ini

#Modem capturado de la linea txinvert -1
numero_linea_MODEM=`expr $numero_linea - 1` # Downloads
MOnumero_linea_MODEM=`expr $TInumero_linea - 1` # MMDVMHost
modem=$(awk "NR==$numero_linea_MODEM" ~/Downloads/MMDVMFUSION.ini)
TIletra=c
TIlinea_sed=$MOnumero_linea_MODEM$TIletra
sed -i "$TIlinea_sed $modem" ~/MMDVMHost/MMDVMFUSION.ini

#Address
var=`grep -n -m 1 '\<Address\>' ~/Downloads/MMDVMFUSION.ini`
var1=`grep -m 1 '\<Address\>' ~/Downloads/MMDVMFUSION.ini`
buscar=":"
largo_linea=`expr index $var $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea_Address=`expr substr $var 1 $largo_linea`
ADvar=`grep -n -m 1 '\<Address\>' ~/MMDVMHost/MMDVMFUSION.ini`
buscar=":"
ADlargo_linea=`expr index $ADvar $buscar`
ADlargo_linea=`expr $ADlargo_linea - 1`
ADnumero_linea_Address=`expr substr $ADvar 1 $ADlargo_linea`
ADletra=c
ADlinea_sed=$ADnumero_linea_Address$ADletra
sed -i "$ADlinea_sed $var1" ~/MMDVMHost/MMDVMFUSION.ini

#Port captura de la linea Address +1
numero_linea_Address=`expr $numero_linea_Address + 1` # Downloads
ADnumero_linea_Address=`expr $ADnumero_linea_Address + 1` # MMDVMHost
port=$(awk "NR==$numero_linea_Address" ~/Downloads/MMDVMFUSION.ini)
ADletra=c
ADlinea_sed=$ADnumero_linea_Address$ADletra
sed -i "$ADlinea_sed $port" ~/MMDVMHost/MMDVMFUSION.ini

#Password
var=`grep -n -m 1 '\<Password\>' ~/Downloads/MMDVMFUSION.ini`
var1=`grep -m 1 '\<Password\>' ~/Downloads/MMDVMFUSION.ini`
buscar=":"
largo_linea=`expr index $var $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea_password=`expr substr $var 1 $largo_linea`
PWvar=`grep -n -m 1 '\<Password\>' ~/MMDVMHost/MMDVMFUSION.ini`
buscar=":"
PWlargo_linea=`expr index $PWvar $buscar`
PWlargo_linea=`expr $PWlargo_linea - 1`
PWnumero_linea_password=`expr substr $PWvar 1 $PWlargo_linea`
PWletra=c
PWlinea_sed=$PWnumero_linea_password$PWletra
sed -i "$PWlinea_sed $var1" ~/MMDVMHost/MMDVMFUSION.ini

#Options linea password  +1
numero_linea_password=`expr $numero_linea_password + 1` # Downloads
PWnumero_linea_password=`expr $PWnumero_linea_password + 1` # MMDVMHost
option=$(awk "NR==$numero_linea_password" ~/Downloads/MMDVMFUSION.ini)
PWletra=c
PWlinea_sed=$PWnumero_linea_password$PWletra
sed -i "$PWlinea_sed $option" ~/MMDVMHost/MMDVMFUSION.ini

#ScreenLayout
var=`grep -n -m 1 '\<ScreenLayout\>' ~/Downloads/MMDVMFUSION.ini`
var1=`grep -m 1 '\<ScreenLayout\>' ~/Downloads/MMDVMFUSION.ini`
buscar=":"
largo_linea=`expr index $var $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea=`expr substr $var 1 $largo_linea`
SCvar=`grep -n -m 1 '\<ScreenLayout\>' ~/MMDVMHost/MMDVMFUSION.ini`
buscar=":"
SClargo_linea=`expr index $SCvar $buscar`
SClargo_linea=`expr $SClargo_linea - 1`
SCnumero_linea=`expr substr $SCvar 1 $SClargo_linea`
SCletra=c
SClinea_sed=$SCnumero_linea$SCletra
sed -i "$SClinea_sed $var1" ~/MMDVMHost/MMDVMFUSION.ini

#Brightness
var=`grep -n -m 1 '\<Brightness\>' ~/Downloads/MMDVMFUSION.ini`
var1=`grep -m 1 '\<Brightness\>' ~/Downloads/MMDVMFUSION.ini`
buscar=":"
largo_linea=`expr index $var $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea=`expr substr $var 1 $largo_linea`
BRvar=`grep -n -m 1 '\<Brightness\>' ~/MMDVMHost/MMDVMFUSION.ini`
buscar=":"
BRlargo_linea=`expr index $BRvar $buscar`
BRlargo_linea=`expr $BRlargo_linea - 1`
BRnumero_linea=`expr substr $BRvar 1 $BRlargo_linea`
BRletra=c
BRlinea_sed=$BRnumero_linea$BRletra
sed -i "$BRlinea_sed $var1" ~/MMDVMHost/MMDVMFUSION.ini

#Slot1
var=`grep -n -m 1 '\<Slot1\>' ~/Downloads/MMDVMFUSION.ini`
var1=`grep -m 1 '\<Slot1\>' ~/Downloads/MMDVMFUSION.ini`
buscar=":"
largo_linea=`expr index $var $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea=`expr substr $var 1 $largo_linea`
SLvar=`grep -n -m 1 '\<Slot1\>' ~/MMDVMHost/MMDVMFUSION.ini`
buscar=":"
SLlargo_linea=`expr index $SLvar $buscar`
SLlargo_linea=`expr $SLlargo_linea - 1`
SLnumero_linea=`expr substr $SLvar 1 $SLlargo_linea`
SLletra=c
SLlinea_sed=$SLnumero_linea$SLletra
sed -i "$SLlinea_sed $var1" ~/MMDVMHost/MMDVMFUSION.ini

#DisplayLevel
var=`grep -n -m 1 '\<DisplayLevel\>' ~/Downloads/MMDVMFUSION.ini`
var1=`grep -m 1 '\<DisplayLevel\>' ~/Downloads/MMDVMFUSION.ini`
buscar=":"
largo_linea=`expr index $var $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea=`expr substr $var 1 $largo_linea`
DIvar=`grep -n -m 1 '\<DisplayLevel\>' ~/MMDVMHost/MMDVMFUSION.ini`
buscar=":"
DIlargo_linea=`expr index $DIvar $buscar`
DIlargo_linea=`expr $DIlargo_linea - 1`
DInumero_linea=`expr substr $DIvar 1 $DIlargo_linea`
DIletra=c
DIlinea_sed=$DInumero_linea$DIletra
sed -i "$DIlinea_sed $var1" ~/MMDVMHost/MMDVMFUSION.ini

#TXHang
var=`grep -n -m 1 '\<TXHang\>' ~/Downloads/MMDVMFUSION.ini`
var1=`grep -m 1 '\<TXHang\>' ~/Downloads/MMDVMFUSION.ini`
buscar=":"
largo_linea=`expr index $var $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea=`expr substr $var 1 $largo_linea`
THvar=`grep -n -m 1 '\<TXHang\>' ~/MMDVMHost/MMDVMFUSION.ini`
buscar=":"
THlargo_linea=`expr index $THvar $buscar`
THlargo_linea=`expr $THlargo_linea - 1`
THnumero_linea=`expr substr $THvar 1 $THlargo_linea`
THletra=c
THlinea_sed=$THnumero_linea$THletra
sed -i "$THlinea_sed $var1" ~/MMDVMHost/MMDVMFUSION.ini

#D-Star
var=`grep -n -m 1 "\[D-Star\]" ~/Downloads/MMDVMFUSION.ini` 
var1=`grep -m 1 "\[D-Star\]" ~/Downloads/MMDVMFUSION.ini`
buscar=":"
largo_linea=`expr index $var $buscar` 
largo_linea=`expr $largo_linea - 1` 
numero_linea=`expr substr $var 1 $largo_linea` 
numero_linea_dstar=`expr $numero_linea + 1` 
DSvar=`grep -n -m 1 "\[D-Star\]" ~/MMDVMHost/MMDVMFUSION.ini` 
DSvar1=`grep -m 1 "\[D-Star\]" ~/MMDVMHost/MMDVMFUSION.ini`
buscar=":"
DSlargo_linea=`expr index $DSvar $buscar` 
DSlargo_linea=`expr $DSlargo_linea - 1` 
DSnumero_linea=`expr substr $DSvar 1 $DSlargo_linea` 
DSnumero_linea_dstar=`expr $DSnumero_linea + 1`
DSDS=$(awk "NR==$numero_linea_dstar" ~/Downloads/MMDVMFUSION.ini) 
DSletrac=c
DSlinea_sed=$DSnumero_linea_dstar$DSletrac
sed -i "$DSlinea_sed $DSDS" ~/MMDVMHost/MMDVMFUSION.ini

#DMR
var=`grep -n -m 1 "\[DMR\]" ~/Downloads/MMDVMFUSION.ini` 
var1=`grep -m 1 "\[DMR\]" ~/Downloads/MMDVMFUSION.ini`
buscar=":"
largo_linea=`expr index $var $buscar` 
largo_linea=`expr $largo_linea - 1` 
numero_linea=`expr substr $var 1 $largo_linea` 
numero_linea_dmr=`expr $numero_linea + 1` 
DMvar=`grep -n "\[DMR\]" ~/MMDVMHost/MMDVMFUSION.ini` 
DMvar1=`grep -n -m 1 "\[DMR\]" ~/MMDVMHost/MMDVMFUSION.ini`
buscar=":"
DMlargo_linea=`expr index $DMvar $buscar` 
DMlargo_linea=`expr $DMlargo_linea - 1` 
DMnumero_linea=`expr substr $DMvar 1 $DMlargo_linea` 
DMnumero_linea_dmr=`expr $DMnumero_linea + 1` 
DMDM=$(awk "NR==$numero_linea_dmr" ~/Downloads/MMDVMFUSION.ini)
DMletrac=c
DMlinea_sed=$DMnumero_linea_dmr$DMletrac 
sed -i "$DMlinea_sed $DMDM" ~/MMDVMHost/MMDVMFUSION.ini

#P25
var=`grep -n -m 1 "\[P25\]" ~/Downloads/MMDVMFUSION.ini` 
var1=`grep -m 1 "\[P25\]" ~/Downloads/MMDVMFUSION.ini`
buscar=":"
largo_linea=`expr index $var $buscar` 
largo_linea=`expr $largo_linea - 1` 
numero_linea=`expr substr $var 1 $largo_linea` 
numero_linea_p25=`expr $numero_linea + 1` 
P2var=`grep -n -m 1 "\[P25\]" ~/MMDVMHost/MMDVMFUSION.ini` 
P2var1=`grep -n "\[P25\]" ~/MMDVMHost/MMDVMFUSION.ini`
buscar=":"
P2largo_linea=`expr index $P2var $buscar` 
P2largo_linea=`expr $P2largo_linea - 1` 
P2numero_linea=`expr substr $P2var 1 $P2largo_linea` 
P2numero_linea_p25=`expr $P2numero_linea + 1` 
P2P2=$(awk "NR==$numero_linea_p25" ~/Downloads/MMDVMFUSION.ini)
P2letrac=c
P2linea_sed=$P2numero_linea_p25$P2letrac
sed -i "$P2linea_sed $P2P2" ~/MMDVMHost/MMDVMFUSION.ini

#NXDN
var=`grep -n -m 1 "\[NXDN\]" ~/Downloads/MMDVMFUSION.ini` 
var1=`grep -m 1 "\[NXDN\]" ~/Downloads/MMDVMFUSION.ini`
buscar=":"
largo_linea=`expr index $var $buscar` 
largo_linea=`expr $largo_linea - 1` 
numero_linea=`expr substr $var 1 $largo_linea` 
numero_linea_p25=`expr $numero_linea + 1`
P2P2=$(awk "NR==$numero_linea_p25" ~/Downloads/MMDVMFUSION.ini)
P2var=`grep -n -m 1 "\[NXDN\]" ~/MMDVMHost/MMDVMFUSION.ini` 
P2var1=`grep -n "\[NXDN\]" ~/MMDVMHost/MMDVMFUSION.ini`
buscar=":"
P2largo_linea=`expr index $P2var $buscar` 
P2largo_linea=`expr $P2largo_linea - 1` 
P2numero_linea=`expr substr $P2var 1 $P2largo_linea` 
P2numero_linea_p25=`expr $P2numero_linea + 1` 
P2letrac=c
P2linea_sed=$P2numero_linea_p25$P2letrac
sed -i "$P2linea_sed $P2P2" ~/MMDVMHost/MMDVMFUSION.ini

#FUSION
var1=`grep -n -m 1 "\[System Fusion\]" ~/Downloads/MMDVMFUSION.ini`
var2=`echo "$var1" | tr -d '[[:space:]]'`
buscar=":"
largo_linea=`expr index $var2 $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea=`expr substr $var2 1 $largo_linea`
numero_linea=`expr $numero_linea + 1`
CWvar1=`grep -n -m 1 "\[System Fusion\]" ~/MMDVMHost/MMDVMFUSION.ini`
CWvar2=`echo "$CWvar1" | tr -d '[[:space:]]'`
buscar=":"
CWlargo_linea=`expr index $CWvar2 $buscar`
CWlargo_linea=`expr $CWlargo_linea - 1`
CWnumero_linea=`expr substr $CWvar2 1 $CWlargo_linea`
CWnumero_linea=`expr $CWnumero_linea + 1`
CWCW=$(awk "NR==$CWnumero_linea" ~/Downloads/MMDVMFUSION.ini)
CWletra=c
CWlinea_sed=$CWnumero_linea$CWletra
sed -i "$CWlinea_sed $CWCW" ~/MMDVMHost/MMDVMFUSION.ini

#Nextion
var=`grep -n -m 1 "\[Nextion\]" ~/Downloads/MMDVMFUSION.ini` 
var1=`grep -m 1 "\[Nextion\]" ~/Downloads/MMDVMFUSION.ini`
buscar=":"
largo_linea=`expr index $var $buscar` 
largo_linea=`expr $largo_linea - 1` 
numero_linea=`expr substr $var 1 $largo_linea` 
numero_linea_p25=`expr $numero_linea + 2` 
P2var=`grep -n -m 1 "\[Nextion\]" ~/MMDVMHost/MMDVMFUSION.ini` 
P2var1=`grep -n "\[Nextion\]" ~/MMDVMHost/MMDVMFUSION.ini`
buscar=":"
P2largo_linea=`expr index $P2var $buscar` 
P2largo_linea=`expr $P2largo_linea - 1` 
P2numero_linea=`expr substr $P2var 1 $P2largo_linea` 
P2numero_linea_p25=`expr $P2numero_linea + 2` 
P2P2=$(awk "NR==$numero_linea_p25" ~/Downloads/MMDVMFUSION.ini)
P2letrac=c
P2linea_sed=$P2numero_linea_p25$P2letrac
sed -i "$P2linea_sed $P2P2" ~/MMDVMHost/MMDVMFUSION.ini
                    
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
                    echo " *******************************************************************************"
                    echo " \33[1;31m* Si instalas MMDVMhost desde esta opción, perderás todas las configuraciones *"
                    echo " * Tendrás que volver a configurar todos los MMDVM                             *"
                    echo " \33[1;32m*******************************************************************************"
                    echo "\33[1;33m"
                    read -p '  Quieres hacer una instalación limpia de MMDVMHost? S/N: ' ejecutar1
                    case $ejecutar1 in
                    [sS]* ) echo ""
                    echo "ok >>>>>"
                    cd ~/  
                    sudo rm -r ~/MMDVMHost
                    git clone https://github.com/g4klx/MMDVMHost
                    cd ~/MMDVMHost

                    HOY=$(date +%Y%m%d)
                    FIJA="const char* VERSION = "\"
                    PI=":Opi"\"
                    HOY1=$HOY$PI
                    PUNTO=";"
                    
                    sed -i "22c $FIJA$HOY1$PUNTO" ~/MMDVMHost/Version.h
                  
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
          read a
                    make clean
                    make

                    # Crea los ejecutables para estas 4 aplicaciones  
                    cp MMDVMHost MMDVMBM
                    cp MMDVMHost MMDVMPLUS
                    cp MMDVMHost MMDVMDSTAR
                    cp MMDVMHost MMDVMFUSION
                    #=================================================

                    # Rutina solo para el LIBRE ======================
                    cd ~/SCRIPTS_ORANGE
                    cp MMDVMHostLIBRE ~/MMDVMHost
                    cp MMDVMLIBRE.ini ~/MMDVMHost
                    cd ~/MMDVMHost
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

