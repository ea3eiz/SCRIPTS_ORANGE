#!/bin/bash
cd /var/www/html/upload/files
cp copia.tar.gz /home/orangepi/Downloads
cd /home/orangepi/Downloads
tar -xvzf copia.tar.gz
cp -r Downloads /home/orangepi
rm -r /home/orangepi/Downloads/Downloads
rm /home/orangepi/Downloads/copia.tar.gz
echo "\33[1;32m" #color verde
echo "***************************************************"
echo "* ESTAS RESTAURANDO UNA COPIA DE LA MISMA VERSIÓN *"
echo "*      DEL MMDVMHOST QUE TIENES ACTUALIZADO       *"
echo "***************************************************"
             cd /home/orangepi/Downloads
            
            sudo cp -f MMDVMLIBRE.ini /home/orangepi/MMDVMHost
            sudo cp -f MMDVMLIBRE.ini_uno /home/orangepi/MMDVMHost
            sudo cp -f MMDVMLIBRE.ini_dos /home/orangepi/DoMMDVMHost

            cp -f YSF2DMR.ini /home/orangepi/YSF2DMR
            cp -f YSF2DMR.ini_copia_01 /home/orangepi/YSF2DMR
            cp -f YSF2DMR.ini_copia_02 /home/orangepi/YSF2DMR
            cp -f YSF2DMR.ini_copia_03 /home/orangepi/YSF2DMR
            cp -f YSF2DMR.ini_copia_04 /home/orangepi/YSF2DMR

            sudo cp -f YSFGateway.ini /home/orangepi/YSFClients/YSFGateway/

            sudo cp -f BlueDVconfig.ini /home/orangepi/bluedv/

            sudo cp -f svxlink.conf /usr/local/etc/svxlink/
            
            sudo cp -f ModuleEchoLink.conf /usr/local/etc/svxlink/svxlink.d/

sudo chmod +x -R /home/orangepi/Downloads
#*** restaura todos los datos de l aversión anterior ***************************************************************

#======================= MMDVM.ini   ============================
#******************************************************************
# Callsign 
var=`grep -n -m 1 '\<Callsign\>' /home/orangepi/Downloads/MMDVM.ini` # 2:Callsign=EA3EIZ
var1=`grep -m 1 '\<Callsign\>' /home/orangepi/Downloads/MMDVM.ini` # Callsign=EA3EIZ
buscar=":"
largo_linea=`expr index $var $buscar` #comprueba el largo incluyendo los dos puntos (:)
largo_linea=`expr $largo_linea - 1` #comprueba el largo quitando los dos puntos (:)
numero_linea=`expr substr $var 1 $largo_linea` # recoge numero linea Downloads
Hvar=`grep -n -m 1 '\<Callsign\>' /home/orangepi/MMDVMHost/MMDVM.ini` # 2:Callsign=EA3EIZ
buscar=":"
Hlargo_linea=`expr index $Hvar $buscar` 
Hlargo_linea=`expr $Hlargo_linea - 1` 
Hnumero_linea=`expr substr $Hvar 1 $Hlargo_linea` # recoge numero linea MMDXVMHost
Hletra=c
Hlinea_sed=$Hnumero_linea$Hletra
sed -i "$Hlinea_sed $var1" /home/orangepi/MMDVMHost/MMDVM.ini

#Id capturado de la linea 3
Id=$(awk "NR==3" /home/orangepi/Downloads/MMDVM.ini)
sed -i "3c $Id" /home/orangepi/MMDVMHost/MMDVM.ini

#Timeout capturado de la linea 4
timeou=$(awk "NR==4" /home/orangepi/Downloads/MMDVM.ini)
sed -i "4c $timeou" /home/orangepi/MMDVMHost/MMDVM.ini

#Duplex
var=`grep -n -m 1 '\<Duplex\>' /home/orangepi/Downloads/MMDVM.ini`
var1=`grep -m 1 '\<Duplex\>' /home/orangepi/Downloads/MMDVM.ini`
buscar=":"
largo_linea=`expr index $var $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea=`expr substr $var 1 $largo_linea`
Dvar=`grep -n -m 1 '\<Duplex\>' /home/orangepi/MMDVMHost/MMDVM.ini`
buscar=":"
Dlargo_linea=`expr index $Dvar $buscar`
Dlargo_linea=`expr $Dlargo_linea - 1`
Dnumero_linea=`expr substr $Dvar 1 $Dlargo_linea`
Dletra=c
Dlinea_sed=$Dnumero_linea$Dletra
sed -i "$Dlinea_sed $var1" /home/orangepi/MMDVMHost/MMDVM.ini

#RFModeHang
var=`grep -n -m 1 '\<RFModeHang\>' /home/orangepi/Downloads/MMDVM.ini`
var1=`grep -m 1 '\<RFModeHang\>' /home/orangepi/Downloads/MMDVM.ini`
buscar=":"
largo_linea=`expr index $var $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea=`expr substr $var 1 $largo_linea`
Rvar=`grep -n -m 1 '\<RFModeHang\>' /home/orangepi/MMDVMHost/MMDVM.ini`
buscar=":"
Rlargo_linea=`expr index $Rvar $buscar`
Rlargo_linea=`expr $Rlargo_linea - 1`
Rnumero_linea=`expr substr $Rvar 1 $Rlargo_linea`
Rletra=c
Rlinea_sed=$Rnumero_linea$Rletra
sed -i "$Rlinea_sed $var1" /home/orangepi/MMDVMHost/MMDVM.ini

#Display
var=`grep -n -m 1 '\<Display\>' /home/orangepi/Downloads/MMDVM.ini`
var1=`grep -m 1 '\<Display\>' /home/orangepi/Downloads/MMDVM.ini`
buscar=":"
largo_linea=`expr index $var $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea=`expr substr $var 1 $largo_linea`
Dvar=`grep -n -m 1 '\<Display\>' /home/orangepi/MMDVMHost/MMDVM.ini`
buscar=":"
Dlargo_linea=`expr index $Dvar $buscar`
Dlargo_linea=`expr $Dlargo_linea - 1`
Dnumero_linea=`expr substr $Dvar 1 $Dlargo_linea`
Dletra=c
Dlinea_sed=$Dnumero_linea$Dletra
sed -i "$Dlinea_sed $var1" /home/orangepi/MMDVMHost/MMDVM.ini

#RXFrequency
var=`grep -n -m 1 '\<RXFrequency\>' /home/orangepi/Downloads/MMDVM.ini`
var1=`grep -m 1 '\<RXFrequency\>' /home/orangepi/Downloads/MMDVM.ini`
buscar=":"
largo_linea=`expr index $var $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea=`expr substr $var 1 $largo_linea`
Xvar=`grep -n -m 1 '\<RXFrequency\>' /home/orangepi/MMDVMHost/MMDVM.ini`
buscar=":"
Xlargo_linea=`expr index $Xvar $buscar`
Xlargo_linea=`expr $Xlargo_linea - 1`
Xnumero_linea=`expr substr $Xvar 1 $Xlargo_linea`
Xletra=c
Xlinea_sed=$Xnumero_linea$Xletra
sed -i "$Xlinea_sed $var1" /home/orangepi/MMDVMHost/MMDVM.ini

#TXFrequency
var=`grep -n -m 1 '\<TXFrequency\>' /home/orangepi/Downloads/MMDVM.ini`
var1=`grep -m 1 '\<TXFrequency\>' /home/orangepi/Downloads/MMDVM.ini`
buscar=":"
largo_linea=`expr index $var $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea=`expr substr $var 1 $largo_linea`
Tvar=`grep -n -m 1 '\<TXFrequency\>' /home/orangepi/MMDVMHost/MMDVM.ini`
buscar=":"
Tlargo_linea=`expr index $Tvar $buscar`
Tlargo_linea=`expr $Tlargo_linea - 1`
Tnumero_linea=`expr substr $Tvar 1 $Tlargo_linea`
Tletra=c
Tlinea_sed=$Tnumero_linea$Tletra
sed -i "$Tlinea_sed $var1" /home/orangepi/MMDVMHost/MMDVM.ini

#Latitude
var=`grep -n -m 1 '\<Latitude\>' /home/orangepi/Downloads/MMDVM.ini`
var1=`grep -m 1 '\<Latitude\>' /home/orangepi/Downloads/MMDVM.ini`
buscar=":"
largo_linea=`expr index $var $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea=`expr substr $var 1 $largo_linea`
Lvar=`grep -n -m 1 '\<Latitude\>' /home/orangepi/MMDVMHost/MMDVM.ini`
buscar=":"
Llargo_linea=`expr index $Lvar $buscar`
Llargo_linea=`expr $Llargo_linea - 1`
Lnumero_linea=`expr substr $Lvar 1 $Llargo_linea`
Lletra=c
Llinea_sed=$Lnumero_linea$Lletra
sed -i "$Llinea_sed $var1" /home/orangepi/MMDVMHost/MMDVM.ini

#Longitude
var=`grep -n -m 1 '\<Longitude\>' /home/orangepi/Downloads/MMDVM.ini`
var1=`grep -m 1 '\<Longitude\>' /home/orangepi/Downloads/MMDVM.ini`
buscar=":"
largo_linea=`expr index $var $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea=`expr substr $var 1 $largo_linea`
LGvar=`grep -n -m 1 '\<Longitude\>' /home/orangepi/MMDVMHost/MMDVM.ini`
buscar=":"
LGlargo_linea=`expr index $LGvar $buscar`
LGlargo_linea=`expr $LGlargo_linea - 1`
LGnumero_linea=`expr substr $LGvar 1 $LGlargo_linea`
LGletra=c
LGlinea_sed=$LGnumero_linea$LGletra
sed -i "$LGlinea_sed $var1" /home/orangepi/MMDVMHost/MMDVM.ini

#Location
var=`grep -n -m 1 '\<Location\>' /home/orangepi/Downloads/MMDVM.ini`
var1=`grep -m 1 '\<Location\>' /home/orangepi/Downloads/MMDVM.ini`
buscar=":"
largo_linea=`expr index $var $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea=`expr substr $var 1 $largo_linea`
LOvar=`grep -n -m 1 '\<Location\>' /home/orangepi/MMDVMHost/MMDVM.ini`
buscar=":"
LOlargo_linea=`expr index $LOvar $buscar`
LOlargo_linea=`expr $LOlargo_linea - 1`
LOnumero_linea=`expr substr $LOvar 1 $LOlargo_linea`
LOletra=c
LOlinea_sed=$LOnumero_linea$LOletra
sed -i "$LOlinea_sed $var1" /home/orangepi/MMDVMHost/MMDVM.ini

#URL
var=`grep -n -m 1 '\<URL\>' /home/orangepi/Downloads/MMDVM.ini`
var1=`grep -m 1 '\<URL\>' /home/orangepi/Downloads/MMDVM.ini`
buscar=":"
largo_linea=`expr index $var $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea_url=`expr substr $var 1 $largo_linea`
Uvar=`grep -n -m 1 '\<URL\>' /home/orangepi/MMDVMHost/MMDVM.ini`
Ubuscar=":"
Ulargo_linea=`expr index $Uvar $buscar`
Ulargo_linea=`expr $Ulargo_linea - 1`
Unumero_linea_url=`expr substr $Uvar 1 $largo_linea`
Uletra=c
Ulinea_sed=$Unumero_linea_url$Uletra
sed -i "$Ulinea_sed $var1" /home/orangepi/MMDVMHost/MMDVM.ini

#Baliza 
var1=`grep -n -m 1 "\[CW Id\]" /home/orangepi/Downloads/MMDVM.ini`
var2=`echo "$var1" | tr -d '[[:space:]]'`
buscar=":"
largo_linea=`expr index $var2 $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea=`expr substr $var2 1 $largo_linea`
numero_linea=`expr $numero_linea + 1`
CWvar1=`grep -n -m 1 "\[CW Id\]" /home/orangepi/MMDVMHost/MMDVM.ini`
CWvar2=`echo "$CWvar1" | tr -d '[[:space:]]'`
buscar=":"
CWlargo_linea=`expr index $CWvar2 $buscar`
CWlargo_linea=`expr $CWlargo_linea - 1`
CWnumero_linea=`expr substr $CWvar2 1 $CWlargo_linea`
CWnumero_linea=`expr $CWnumero_linea + 1`
CWCW=$(awk "NR==$CWnumero_linea" /home/orangepi/Downloads/MMDVM.ini)
CWletra=c
CWlinea_sed=$CWnumero_linea$CWletra
sed -i "$CWlinea_sed $CWCW" /home/orangepi/MMDVMHost/MMDVM.ini

#RXLevel
var=`grep -n -m 1 '\<RXLevel\>' /home/orangepi/Downloads/MMDVM.ini`
var1=`grep -m 1 '\<RXLevel\>' /home/orangepi/Downloads/MMDVM.ini`
buscar=":"
largo_linea=`expr index $var $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea=`expr substr $var 1 $largo_linea`
RLvar=`grep -n -m 1 '\<RXLevel\>' /home/orangepi/MMDVMHost/MMDVM.ini`
buscar=":"
RLlargo_linea=`expr index $RLvar $buscar`
RLlargo_linea=`expr $RLlargo_linea - 1`
RLnumero_linea=`expr substr $RLvar 1 $RLlargo_linea`
RLletra=c
RLlinea_sed=$RLnumero_linea$RLletra
sed -i "$RLlinea_sed $var1" /home/orangepi/MMDVMHost/MMDVM.ini

#TXLevel
var=`grep -n -m 1 '\<TXLevel\>' /home/orangepi/Downloads/MMDVM.ini`
var1=`grep -m 1 '\<TXLevel\>' /home/orangepi/Downloads/MMDVM.ini`
buscar=":"
largo_linea=`expr index $var $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea=`expr substr $var 1 $largo_linea`
TLvar=`grep -n -m 1 '\<TXLevel\>' /home/orangepi/MMDVMHost/MMDVM.ini`
buscar=":"
TLlargo_linea=`expr index $TLvar $buscar`
TLlargo_linea=`expr $TLlargo_linea - 1`
TLnumero_linea=`expr substr $TLvar 1 $TLlargo_linea`
TLletra=c
TLlinea_sed=$TLnumero_linea$TLletra
sed -i "$TLlinea_sed $var1" /home/orangepi/MMDVMHost/MMDVM.ini

#Module
var=`grep -n -m 1 '\<Module\>' /home/orangepi/Downloads/MMDVM.ini`
var1=`grep -m 1 '\<Module\>' /home/orangepi/Downloads/MMDVM.ini`
buscar=":"
largo_linea=`expr index $var $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea=`expr substr $var 1 $largo_linea`
MOvar=`grep -n -m 1 '\<Module\>' /home/orangepi/MMDVMHost/MMDVM.ini`
buscar=":"
MOlargo_linea=`expr index $MOvar $buscar`
MOlargo_linea=`expr $MOlargo_linea - 1`
MOnumero_linea=`expr substr $MOvar 1 $MOlargo_linea`
MOletra=c
MOlinea_sed=$MOnumero_linea$MOletra
sed -i "$MOlinea_sed $var1" /home/orangepi/MMDVMHost/MMDVM.ini

#Txinvert
var=`grep -n -m 1 '\<TXInvert\>' /home/orangepi/Downloads/MMDVM.ini`
var1=`grep -m 1 '\<TXInvert\>' /home/orangepi/Downloads/MMDVM.ini`
buscar=":"
largo_linea=`expr index $var $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea=`expr substr $var 1 $largo_linea`
TIvar=`grep -n -m 1 '\<TXInvert\>' /home/orangepi/MMDVMHost/MMDVM.ini`
buscar=":"
TIlargo_linea=`expr index $TIvar $buscar`
TIlargo_linea=`expr $TIlargo_linea - 1`
TInumero_linea=`expr substr $TIvar 1 $TIlargo_linea`
TIletra=c
TIlinea_sed=$TInumero_linea$TIletra
sed -i "$TIlinea_sed $var1" /home/orangepi/MMDVMHost/MMDVM.ini

#Modem capturado de la linea txinvert -1
numero_linea_MODEM=`expr $numero_linea - 1` # Downloads
MOnumero_linea_MODEM=`expr $TInumero_linea - 1` # MMDVMHost
modem=$(awk "NR==$numero_linea_MODEM" /home/orangepi/Downloads/MMDVM.ini)
TIletra=c
TIlinea_sed=$MOnumero_linea_MODEM$TIletra
sed -i "$TIlinea_sed $modem" /home/orangepi/MMDVMHost/MMDVM.ini

#Address
var=`grep -n -m 1 '\<Address\>' /home/orangepi/Downloads/MMDVM.ini`
var1=`grep -m 1 '\<Address\>' /home/orangepi/Downloads/MMDVM.ini`
buscar=":"
largo_linea=`expr index $var $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea_Address=`expr substr $var 1 $largo_linea`
ADvar=`grep -n -m 1 '\<Address\>' /home/orangepi/MMDVMHost/MMDVM.ini`
buscar=":"
ADlargo_linea=`expr index $ADvar $buscar`
ADlargo_linea=`expr $ADlargo_linea - 1`
ADnumero_linea_Address=`expr substr $ADvar 1 $ADlargo_linea`
ADletra=c
ADlinea_sed=$ADnumero_linea_Address$ADletra
sed -i "$ADlinea_sed $var1" /home/orangepi/MMDVMHost/MMDVM.ini

#Port captura de la linea Address +1
numero_linea_Address=`expr $numero_linea_Address + 1` # Downloads
ADnumero_linea_Address=`expr $ADnumero_linea_Address + 1` # MMDVMHost
port=$(awk "NR==$numero_linea_Address" /home/orangepi/Downloads/MMDVM.ini)
ADletra=c
ADlinea_sed=$ADnumero_linea_Address$ADletra
sed -i "$ADlinea_sed $port" /home/orangepi/MMDVMHost/MMDVM.ini

#Password
var=`grep -n -m 1 '\<Password\>' /home/orangepi/Downloads/MMDVM.ini`
var1=`grep -m 1 '\<Password\>' /home/orangepi/Downloads/MMDVM.ini`
buscar=":"
largo_linea=`expr index $var $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea_password=`expr substr $var 1 $largo_linea`
PWvar=`grep -n -m 1 '\<Password\>' /home/orangepi/MMDVMHost/MMDVM.ini`
buscar=":"
PWlargo_linea=`expr index $PWvar $buscar`
PWlargo_linea=`expr $PWlargo_linea - 1`
PWnumero_linea_password=`expr substr $PWvar 1 $PWlargo_linea`
PWletra=c
PWlinea_sed=$PWnumero_linea_password$PWletra
sed -i "$PWlinea_sed $var1" /home/orangepi/MMDVMHost/MMDVM.ini

#Options linea password  +1
numero_linea_password=`expr $numero_linea_password + 1` # Downloads
PWnumero_linea_password=`expr $PWnumero_linea_password + 1` # MMDVMHost
option=$(awk "NR==$numero_linea_password" /home/orangepi/Downloads/MMDVM.ini)
PWletra=c
PWlinea_sed=$PWnumero_linea_password$PWletra
sed -i "$PWlinea_sed $option" /home/orangepi/MMDVMHost/MMDVM.ini

#ScreenLayout
var=`grep -n -m 1 '\<ScreenLayout\>' /home/orangepi/Downloads/MMDVM.ini`
var1=`grep -m 1 '\<ScreenLayout\>' /home/orangepi/Downloads/MMDVM.ini`
buscar=":"
largo_linea=`expr index $var $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea=`expr substr $var 1 $largo_linea`
SCvar=`grep -n -m 1 '\<ScreenLayout\>' /home/orangepi/MMDVMHost/MMDVM.ini`
buscar=":"
SClargo_linea=`expr index $SCvar $buscar`
SClargo_linea=`expr $SClargo_linea - 1`
SCnumero_linea=`expr substr $SCvar 1 $SClargo_linea`
SCletra=c
SClinea_sed=$SCnumero_linea$SCletra
sed -i "$SClinea_sed $var1" /home/orangepi/MMDVMHost/MMDVM.ini

#Brightness
var=`grep -n -m 1 '\<Brightness\>' /home/orangepi/Downloads/MMDVM.ini`
var1=`grep -m 1 '\<Brightness\>' /home/orangepi/Downloads/MMDVM.ini`
buscar=":"
largo_linea=`expr index $var $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea=`expr substr $var 1 $largo_linea`
BRvar=`grep -n -m 1 '\<Brightness\>' /home/orangepi/MMDVMHost/MMDVM.ini`
buscar=":"
BRlargo_linea=`expr index $BRvar $buscar`
BRlargo_linea=`expr $BRlargo_linea - 1`
BRnumero_linea=`expr substr $BRvar 1 $BRlargo_linea`
BRletra=c
BRlinea_sed=$BRnumero_linea$BRletra
sed -i "$BRlinea_sed $var1" /home/orangepi/MMDVMHost/MMDVM.ini

#Slot1
var=`grep -n -m 1 '\<Slot1\>' /home/orangepi/Downloads/MMDVM.ini`
var1=`grep -m 1 '\<Slot1\>' /home/orangepi/Downloads/MMDVM.ini`
buscar=":"
largo_linea=`expr index $var $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea=`expr substr $var 1 $largo_linea`
SLvar=`grep -n -m 1 '\<Slot1\>' /home/orangepi/MMDVMHost/MMDVM.ini`
buscar=":"
SLlargo_linea=`expr index $SLvar $buscar`
SLlargo_linea=`expr $SLlargo_linea - 1`
SLnumero_linea=`expr substr $SLvar 1 $SLlargo_linea`
SLletra=c
SLlinea_sed=$SLnumero_linea$SLletra
sed -i "$SLlinea_sed $var1" /home/orangepi/MMDVMHost/MMDVM.ini

#DisplayLevel
var=`grep -n -m 1 '\<DisplayLevel\>' /home/orangepi/Downloads/MMDVM.ini`
var1=`grep -m 1 '\<DisplayLevel\>' /home/orangepi/Downloads/MMDVM.ini`
buscar=":"
largo_linea=`expr index $var $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea=`expr substr $var 1 $largo_linea`
DIvar=`grep -n -m 1 '\<DisplayLevel\>' /home/orangepi/MMDVMHost/MMDVM.ini`
buscar=":"
DIlargo_linea=`expr index $DIvar $buscar`
DIlargo_linea=`expr $DIlargo_linea - 1`
DInumero_linea=`expr substr $DIvar 1 $DIlargo_linea`
DIletra=c
DIlinea_sed=$DInumero_linea$DIletra
sed -i "$DIlinea_sed $var1" /home/orangepi/MMDVMHost/MMDVM.ini

#TXHang
var=`grep -n -m 1 '\<TXHang\>' /home/orangepi/Downloads/MMDVM.ini`
var1=`grep -m 1 '\<TXHang\>' /home/orangepi/Downloads/MMDVM.ini`
buscar=":"
largo_linea=`expr index $var $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea=`expr substr $var 1 $largo_linea`
THvar=`grep -n -m 1 '\<TXHang\>' /home/orangepi/MMDVMHost/MMDVM.ini`
buscar=":"
THlargo_linea=`expr index $THvar $buscar`
THlargo_linea=`expr $THlargo_linea - 1`
THnumero_linea=`expr substr $THvar 1 $THlargo_linea`
THletra=c
THlinea_sed=$THnumero_linea$THletra
sed -i "$THlinea_sed $var1" /home/orangepi/MMDVMHost/MMDVM.ini

#D-Star
var=`grep -n -m 1 "\[D-Star\]" /home/orangepi/Downloads/MMDVM.ini` 
var1=`grep -m 1 "\[D-Star\]" /home/orangepi/Downloads/MMDVM.ini`
buscar=":"
largo_linea=`expr index $var $buscar` 
largo_linea=`expr $largo_linea - 1` 
numero_linea=`expr substr $var 1 $largo_linea` 
numero_linea_dstar=`expr $numero_linea + 1` 
DSvar=`grep -n -m 1 "\[D-Star\]" /home/orangepi/MMDVMHost/MMDVM.ini` 
DSvar1=`grep -m 1 "\[D-Star\]" /home/orangepi/MMDVMHost/MMDVM.ini`
buscar=":"
DSlargo_linea=`expr index $DSvar $buscar` 
DSlargo_linea=`expr $DSlargo_linea - 1` 
DSnumero_linea=`expr substr $DSvar 1 $DSlargo_linea` 
DSnumero_linea_dstar=`expr $DSnumero_linea + 1`
DSDS=$(awk "NR==$numero_linea_dstar" /home/orangepi/Downloads/MMDVM.ini) 
DSletrac=c
DSlinea_sed=$DSnumero_linea_dstar$DSletrac
sed -i "$DSlinea_sed $DSDS" /home/orangepi/MMDVMHost/MMDVM.ini

#DMR
var=`grep -n -m 1 "\[DMR\]" /home/orangepi/Downloads/MMDVM.ini` 
var1=`grep -m 1 "\[DMR\]" /home/orangepi/Downloads/MMDVM.ini`
buscar=":"
largo_linea=`expr index $var $buscar` 
largo_linea=`expr $largo_linea - 1` 
numero_linea=`expr substr $var 1 $largo_linea` 
numero_linea_dmr=`expr $numero_linea + 1` 
DMvar=`grep -n "\[DMR\]" /home/orangepi/MMDVMHost/MMDVM.ini` 
DMvar1=`grep -n -m 1 "\[DMR\]" /home/orangepi/MMDVMHost/MMDVM.ini`
buscar=":"
DMlargo_linea=`expr index $DMvar $buscar` 
DMlargo_linea=`expr $DMlargo_linea - 1` 
DMnumero_linea=`expr substr $DMvar 1 $DMlargo_linea` 
DMnumero_linea_dmr=`expr $DMnumero_linea + 1` 
DMDM=$(awk "NR==$numero_linea_dmr" /home/orangepi/Downloads/MMDVM.ini)
DMletrac=c
DMlinea_sed=$DMnumero_linea_dmr$DMletrac 
sed -i "$DMlinea_sed $DMDM" /home/orangepi/MMDVMHost/MMDVM.ini

#P25
var=`grep -n -m 1 "\[P25\]" /home/orangepi/Downloads/MMDVM.ini` 
var1=`grep -m 1 "\[P25\]" /home/orangepi/Downloads/MMDVM.ini`
buscar=":"
largo_linea=`expr index $var $buscar` 
largo_linea=`expr $largo_linea - 1` 
numero_linea=`expr substr $var 1 $largo_linea` 
numero_linea_p25=`expr $numero_linea + 1` 
P2var=`grep -n -m 1 "\[P25\]" /home/orangepi/MMDVMHost/MMDVM.ini` 
P2var1=`grep -n "\[P25\]" /home/orangepi/MMDVMHost/MMDVM.ini`
buscar=":"
P2largo_linea=`expr index $P2var $buscar` 
P2largo_linea=`expr $P2largo_linea - 1` 
P2numero_linea=`expr substr $P2var 1 $P2largo_linea` 
P2numero_linea_p25=`expr $P2numero_linea + 1` 
P2P2=$(awk "NR==$numero_linea_p25" /home/orangepi/Downloads/MMDVM.ini)
P2letrac=c
P2linea_sed=$P2numero_linea_p25$P2letrac
sed -i "$P2linea_sed $P2P2" /home/orangepi/MMDVMHost/MMDVM.ini

#FUSION
var1=`grep -n -m 1 "\[System Fusion\]" /home/orangepi/Downloads/MMDVM.ini`
var2=`echo "$var1" | tr -d '[[:space:]]'`
buscar=":"
largo_linea=`expr index $var2 $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea=`expr substr $var2 1 $largo_linea`
numero_linea=`expr $numero_linea + 1`
CWvar1=`grep -n -m 1 "\[System Fusion\]" /home/orangepi/MMDVMHost/MMDVM.ini`
CWvar2=`echo "$CWvar1" | tr -d '[[:space:]]'`
buscar=":"
CWlargo_linea=`expr index $CWvar2 $buscar`
CWlargo_linea=`expr $CWlargo_linea - 1`
CWnumero_linea=`expr substr $CWvar2 1 $CWlargo_linea`
CWnumero_linea=`expr $CWnumero_linea + 1`
CWCW=$(awk "NR==$CWnumero_linea" /home/orangepi/Downloads/MMDVM.ini)
CWletra=c
CWlinea_sed=$CWnumero_linea$CWletra
sed -i "$CWlinea_sed $CWCW" /home/orangepi/MMDVMHost/MMDVM.ini

#Nextion
var=`grep -n -m 1 "\[Nextion\]" /home/orangepi/Downloads/MMDVM.ini` 
var1=`grep -m 1 "\[Nextion\]" /home/orangepi/Downloads/MMDVM.ini`
buscar=":"
largo_linea=`expr index $var $buscar` 
largo_linea=`expr $largo_linea - 1` 
numero_linea=`expr substr $var 1 $largo_linea` 
numero_linea_p25=`expr $numero_linea + 2` 
P2var=`grep -n -m 1 "\[Nextion\]" /home/orangepi/MMDVMHost/MMDVM.ini` 
P2var1=`grep -n "\[Nextion\]" /home/orangepi/MMDVMHost/MMDVM.ini`
buscar=":"
P2largo_linea=`expr index $P2var $buscar` 
P2largo_linea=`expr $P2largo_linea - 1` 
P2numero_linea=`expr substr $P2var 1 $P2largo_linea` 
P2numero_linea_p25=`expr $P2numero_linea + 2` 
P2P2=$(awk "NR==$numero_linea_p25" /home/orangepi/Downloads/MMDVM.ini)
P2letrac=c
P2linea_sed=$P2numero_linea_p25$P2letrac
sed -i "$P2linea_sed $P2P2" /home/orangepi/MMDVMHost/MMDVM.ini

#======================= MMDVM.ini_copia   ============================
#******************************************************************
# Callsign 
var=`grep -n -m 1 '\<Callsign\>' /home/orangepi/Downloads/MMDVM.ini_copia` # 2:Callsign=EA3EIZ
var1=`grep -m 1 '\<Callsign\>' /home/orangepi/Downloads/MMDVM.ini_copia` # Callsign=EA3EIZ
buscar=":"
largo_linea=`expr index $var $buscar` #comprueba el largo incluyendo los dos puntos (:)
largo_linea=`expr $largo_linea - 1` #comprueba el largo quitando los dos puntos (:)
numero_linea=`expr substr $var 1 $largo_linea` # recoge numero linea Downloads
Hvar=`grep -n -m 1 '\<Callsign\>' /home/orangepi/MMDVMHost/MMDVM.ini_copia` # 2:Callsign=EA3EIZ
buscar=":"
Hlargo_linea=`expr index $Hvar $buscar` 
Hlargo_linea=`expr $Hlargo_linea - 1` 
Hnumero_linea=`expr substr $Hvar 1 $Hlargo_linea` # recoge numero linea MMDXVMHost
Hletra=c
Hlinea_sed=$Hnumero_linea$Hletra
sed -i "$Hlinea_sed $var1" /home/orangepi/MMDVMHost/MMDVM.ini_copia

#Id capturado de la linea 3
Id=$(awk "NR==3" /home/orangepi/Downloads/MMDVM.ini_copia)
sed -i "3c $Id" /home/orangepi/MMDVMHost/MMDVM.ini_copia

#Timeout capturado de la linea 4
timeou=$(awk "NR==4" /home/orangepi/Downloads/MMDVM.ini_copia)
sed -i "4c $timeou" /home/orangepi/MMDVMHost/MMDVM.ini_copia

#Duplex
var=`grep -n -m 1 '\<Duplex\>' /home/orangepi/Downloads/MMDVM.ini_copia`
var1=`grep -m 1 '\<Duplex\>' /home/orangepi/Downloads/MMDVM.ini_copia`
buscar=":"
largo_linea=`expr index $var $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea=`expr substr $var 1 $largo_linea`
Dvar=`grep -n -m 1 '\<Duplex\>' /home/orangepi/MMDVMHost/MMDVM.ini_copia`
buscar=":"
Dlargo_linea=`expr index $Dvar $buscar`
Dlargo_linea=`expr $Dlargo_linea - 1`
Dnumero_linea=`expr substr $Dvar 1 $Dlargo_linea`
Dletra=c
Dlinea_sed=$Dnumero_linea$Dletra
sed -i "$Dlinea_sed $var1" /home/orangepi/MMDVMHost/MMDVM.ini_copia

#RFModeHang
var=`grep -n -m 1 '\<RFModeHang\>' /home/orangepi/Downloads/MMDVM.ini_copia`
var1=`grep -m 1 '\<RFModeHang\>' /home/orangepi/Downloads/MMDVM.ini_copia`
buscar=":"
largo_linea=`expr index $var $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea=`expr substr $var 1 $largo_linea`
Rvar=`grep -n -m 1 '\<RFModeHang\>' /home/orangepi/MMDVMHost/MMDVM.ini_copia`
buscar=":"
Rlargo_linea=`expr index $Rvar $buscar`
Rlargo_linea=`expr $Rlargo_linea - 1`
Rnumero_linea=`expr substr $Rvar 1 $Rlargo_linea`
Rletra=c
Rlinea_sed=$Rnumero_linea$Rletra
sed -i "$Rlinea_sed $var1" /home/orangepi/MMDVMHost/MMDVM.ini_copia

#Display
var=`grep -n -m 1 '\<Display\>' /home/orangepi/Downloads/MMDVM.ini_copia`
var1=`grep -m 1 '\<Display\>' /home/orangepi/Downloads/MMDVM.ini_copia`
buscar=":"
largo_linea=`expr index $var $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea=`expr substr $var 1 $largo_linea`
Dvar=`grep -n -m 1 '\<Display\>' /home/orangepi/MMDVMHost/MMDVM.ini_copia`
buscar=":"
Dlargo_linea=`expr index $Dvar $buscar`
Dlargo_linea=`expr $Dlargo_linea - 1`
Dnumero_linea=`expr substr $Dvar 1 $Dlargo_linea`
Dletra=c
Dlinea_sed=$Dnumero_linea$Dletra
sed -i "$Dlinea_sed $var1" /home/orangepi/MMDVMHost/MMDVM.ini_copia

#RXFrequency
var=`grep -n -m 1 '\<RXFrequency\>' /home/orangepi/Downloads/MMDVM.ini_copia`
var1=`grep -m 1 '\<RXFrequency\>' /home/orangepi/Downloads/MMDVM.ini_copia`
buscar=":"
largo_linea=`expr index $var $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea=`expr substr $var 1 $largo_linea`
Xvar=`grep -n -m 1 '\<RXFrequency\>' /home/orangepi/MMDVMHost/MMDVM.ini_copia`
buscar=":"
Xlargo_linea=`expr index $Xvar $buscar`
Xlargo_linea=`expr $Xlargo_linea - 1`
Xnumero_linea=`expr substr $Xvar 1 $Xlargo_linea`
Xletra=c
Xlinea_sed=$Xnumero_linea$Xletra
sed -i "$Xlinea_sed $var1" /home/orangepi/MMDVMHost/MMDVM.ini_copia

#TXFrequency
var=`grep -n -m 1 '\<TXFrequency\>' /home/orangepi/Downloads/MMDVM.ini_copia`
var1=`grep -m 1 '\<TXFrequency\>' /home/orangepi/Downloads/MMDVM.ini_copia`
buscar=":"
largo_linea=`expr index $var $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea=`expr substr $var 1 $largo_linea`
Tvar=`grep -n -m 1 '\<TXFrequency\>' /home/orangepi/MMDVMHost/MMDVM.ini_copia`
buscar=":"
Tlargo_linea=`expr index $Tvar $buscar`
Tlargo_linea=`expr $Tlargo_linea - 1`
Tnumero_linea=`expr substr $Tvar 1 $Tlargo_linea`
Tletra=c
Tlinea_sed=$Tnumero_linea$Tletra
sed -i "$Tlinea_sed $var1" /home/orangepi/MMDVMHost/MMDVM.ini_copia

#Latitude
var=`grep -n -m 1 '\<Latitude\>' /home/orangepi/Downloads/MMDVM.ini_copia`
var1=`grep -m 1 '\<Latitude\>' /home/orangepi/Downloads/MMDVM.ini_copia`
buscar=":"
largo_linea=`expr index $var $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea=`expr substr $var 1 $largo_linea`
Lvar=`grep -n -m 1 '\<Latitude\>' /home/orangepi/MMDVMHost/MMDVM.ini_copia`
buscar=":"
Llargo_linea=`expr index $Lvar $buscar`
Llargo_linea=`expr $Llargo_linea - 1`
Lnumero_linea=`expr substr $Lvar 1 $Llargo_linea`
Lletra=c
Llinea_sed=$Lnumero_linea$Lletra
sed -i "$Llinea_sed $var1" /home/orangepi/MMDVMHost/MMDVM.ini_copia

#Longitude
var=`grep -n -m 1 '\<Longitude\>' /home/orangepi/Downloads/MMDVM.ini_copia`
var1=`grep -m 1 '\<Longitude\>' /home/orangepi/Downloads/MMDVM.ini_copia`
buscar=":"
largo_linea=`expr index $var $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea=`expr substr $var 1 $largo_linea`
LGvar=`grep -n -m 1 '\<Longitude\>' /home/orangepi/MMDVMHost/MMDVM.ini_copia`
buscar=":"
LGlargo_linea=`expr index $LGvar $buscar`
LGlargo_linea=`expr $LGlargo_linea - 1`
LGnumero_linea=`expr substr $LGvar 1 $LGlargo_linea`
LGletra=c
LGlinea_sed=$LGnumero_linea$LGletra
sed -i "$LGlinea_sed $var1" /home/orangepi/MMDVMHost/MMDVM.ini_copia

#Location
var=`grep -n -m 1 '\<Location\>' /home/orangepi/Downloads/MMDVM.ini_copia`
var1=`grep -m 1 '\<Location\>' /home/orangepi/Downloads/MMDVM.ini_copia`
buscar=":"
largo_linea=`expr index $var $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea=`expr substr $var 1 $largo_linea`
LOvar=`grep -n -m 1 '\<Location\>' /home/orangepi/MMDVMHost/MMDVM.ini_copia`
buscar=":"
LOlargo_linea=`expr index $LOvar $buscar`
LOlargo_linea=`expr $LOlargo_linea - 1`
LOnumero_linea=`expr substr $LOvar 1 $LOlargo_linea`
LOletra=c
LOlinea_sed=$LOnumero_linea$LOletra
sed -i "$LOlinea_sed $var1" /home/orangepi/MMDVMHost/MMDVM.ini_copia

#URL
var=`grep -n -m 1 '\<URL\>' /home/orangepi/Downloads/MMDVM.ini_copia`
var1=`grep -m 1 '\<URL\>' /home/orangepi/Downloads/MMDVM.ini_copia`
buscar=":"
largo_linea=`expr index $var $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea_url=`expr substr $var 1 $largo_linea`
Uvar=`grep -n -m 1 '\<URL\>' /home/orangepi/MMDVMHost/MMDVM.ini_copia`
Ubuscar=":"
Ulargo_linea=`expr index $Uvar $buscar`
Ulargo_linea=`expr $Ulargo_linea - 1`
Unumero_linea_url=`expr substr $Uvar 1 $largo_linea`
Uletra=c
Ulinea_sed=$Unumero_linea_url$Uletra
sed -i "$Ulinea_sed $var1" /home/orangepi/MMDVMHost/MMDVM.ini_copia

#Baliza 
var1=`grep -n -m 1 "\[CW Id\]" /home/orangepi/Downloads/MMDVM.ini_copia`
var2=`echo "$var1" | tr -d '[[:space:]]'`
buscar=":"
largo_linea=`expr index $var2 $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea=`expr substr $var2 1 $largo_linea`
numero_linea=`expr $numero_linea + 1`
CWvar1=`grep -n -m 1 "\[CW Id\]" /home/orangepi/MMDVMHost/MMDVM.ini_copia`
CWvar2=`echo "$CWvar1" | tr -d '[[:space:]]'`
buscar=":"
CWlargo_linea=`expr index $CWvar2 $buscar`
CWlargo_linea=`expr $CWlargo_linea - 1`
CWnumero_linea=`expr substr $CWvar2 1 $CWlargo_linea`
CWnumero_linea=`expr $CWnumero_linea + 1`
CWCW=$(awk "NR==$CWnumero_linea" /home/orangepi/Downloads/MMDVM.ini_copia)
CWletra=c
CWlinea_sed=$CWnumero_linea$CWletra
sed -i "$CWlinea_sed $CWCW" /home/orangepi/MMDVMHost/MMDVM.ini_copia

#RXLevel
var=`grep -n -m 1 '\<RXLevel\>' /home/orangepi/Downloads/MMDVM.ini_copia`
var1=`grep -m 1 '\<RXLevel\>' /home/orangepi/Downloads/MMDVM.ini_copia`
buscar=":"
largo_linea=`expr index $var $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea=`expr substr $var 1 $largo_linea`
RLvar=`grep -n -m 1 '\<RXLevel\>' /home/orangepi/MMDVMHost/MMDVM.ini_copia`
buscar=":"
RLlargo_linea=`expr index $RLvar $buscar`
RLlargo_linea=`expr $RLlargo_linea - 1`
RLnumero_linea=`expr substr $RLvar 1 $RLlargo_linea`
RLletra=c
RLlinea_sed=$RLnumero_linea$RLletra
sed -i "$RLlinea_sed $var1" /home/orangepi/MMDVMHost/MMDVM.ini_copia

#TXLevel
var=`grep -n -m 1 '\<TXLevel\>' /home/orangepi/Downloads/MMDVM.ini_copia`
var1=`grep -m 1 '\<TXLevel\>' /home/orangepi/Downloads/MMDVM.ini_copia`
buscar=":"
largo_linea=`expr index $var $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea=`expr substr $var 1 $largo_linea`
TLvar=`grep -n -m 1 '\<TXLevel\>' /home/orangepi/MMDVMHost/MMDVM.ini_copia`
buscar=":"
TLlargo_linea=`expr index $TLvar $buscar`
TLlargo_linea=`expr $TLlargo_linea - 1`
TLnumero_linea=`expr substr $TLvar 1 $TLlargo_linea`
TLletra=c
TLlinea_sed=$TLnumero_linea$TLletra
sed -i "$TLlinea_sed $var1" /home/orangepi/MMDVMHost/MMDVM.ini_copia

#Module
var=`grep -n -m 1 '\<Module\>' /home/orangepi/Downloads/MMDVM.ini_copia`
var1=`grep -m 1 '\<Module\>' /home/orangepi/Downloads/MMDVM.ini_copia`
buscar=":"
largo_linea=`expr index $var $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea=`expr substr $var 1 $largo_linea`
MOvar=`grep -n -m 1 '\<Module\>' /home/orangepi/MMDVMHost/MMDVM.ini_copia`
buscar=":"
MOlargo_linea=`expr index $MOvar $buscar`
MOlargo_linea=`expr $MOlargo_linea - 1`
MOnumero_linea=`expr substr $MOvar 1 $MOlargo_linea`
MOletra=c
MOlinea_sed=$MOnumero_linea$MOletra
sed -i "$MOlinea_sed $var1" /home/orangepi/MMDVMHost/MMDVM.ini_copia

#Txinvert
var=`grep -n -m 1 '\<TXInvert\>' /home/orangepi/Downloads/MMDVM.ini_copia`
var1=`grep -m 1 '\<TXInvert\>' /home/orangepi/Downloads/MMDVM.ini_copia`
buscar=":"
largo_linea=`expr index $var $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea=`expr substr $var 1 $largo_linea`
TIvar=`grep -n -m 1 '\<TXInvert\>' /home/orangepi/MMDVMHost/MMDVM.ini_copia`
buscar=":"
TIlargo_linea=`expr index $TIvar $buscar`
TIlargo_linea=`expr $TIlargo_linea - 1`
TInumero_linea=`expr substr $TIvar 1 $TIlargo_linea`
TIletra=c
TIlinea_sed=$TInumero_linea$TIletra
sed -i "$TIlinea_sed $var1" /home/orangepi/MMDVMHost/MMDVM.ini_copia

#Modem capturado de la linea txinvert -1
numero_linea_MODEM=`expr $numero_linea - 1` # Downloads
MOnumero_linea_MODEM=`expr $TInumero_linea - 1` # MMDVMHost
modem=$(awk "NR==$numero_linea_MODEM" /home/orangepi/Downloads/MMDVM.ini_copia)
TIletra=c
TIlinea_sed=$MOnumero_linea_MODEM$TIletra
sed -i "$TIlinea_sed $modem" /home/orangepi/MMDVMHost/MMDVM.ini_copia

#Address
var=`grep -n -m 1 '\<Address\>' /home/orangepi/Downloads/MMDVM.ini_copia`
var1=`grep -m 1 '\<Address\>' /home/orangepi/Downloads/MMDVM.ini_copia`
buscar=":"
largo_linea=`expr index $var $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea_Address=`expr substr $var 1 $largo_linea`
ADvar=`grep -n -m 1 '\<Address\>' /home/orangepi/MMDVMHost/MMDVM.ini_copia`
buscar=":"
ADlargo_linea=`expr index $ADvar $buscar`
ADlargo_linea=`expr $ADlargo_linea - 1`
ADnumero_linea_Address=`expr substr $ADvar 1 $ADlargo_linea`
ADletra=c
ADlinea_sed=$ADnumero_linea_Address$ADletra
sed -i "$ADlinea_sed $var1" /home/orangepi/MMDVMHost/MMDVM.ini_copia

#Port captura de la linea Address +1
numero_linea_Address=`expr $numero_linea_Address + 1` # Downloads
ADnumero_linea_Address=`expr $ADnumero_linea_Address + 1` # MMDVMHost
port=$(awk "NR==$numero_linea_Address" /home/orangepi/Downloads/MMDVM.ini_copia)
ADletra=c
ADlinea_sed=$ADnumero_linea_Address$ADletra
sed -i "$ADlinea_sed $port" /home/orangepi/MMDVMHost/MMDVM.ini_copia

#Password
var=`grep -n -m 1 '\<Password\>' /home/orangepi/Downloads/MMDVM.ini_copia`
var1=`grep -m 1 '\<Password\>' /home/orangepi/Downloads/MMDVM.ini_copia`
buscar=":"
largo_linea=`expr index $var $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea_password=`expr substr $var 1 $largo_linea`
PWvar=`grep -n -m 1 '\<Password\>' /home/orangepi/MMDVMHost/MMDVM.ini_copia`
buscar=":"
PWlargo_linea=`expr index $PWvar $buscar`
PWlargo_linea=`expr $PWlargo_linea - 1`
PWnumero_linea_password=`expr substr $PWvar 1 $PWlargo_linea`
PWletra=c
PWlinea_sed=$PWnumero_linea_password$PWletra
sed -i "$PWlinea_sed $var1" /home/orangepi/MMDVMHost/MMDVM.ini_copia

#Options linea password  +1
numero_linea_password=`expr $numero_linea_password + 1` # Downloads
PWnumero_linea_password=`expr $PWnumero_linea_password + 1` # MMDVMHost
option=$(awk "NR==$numero_linea_password" /home/orangepi/Downloads/MMDVM.ini_copia)
PWletra=c
PWlinea_sed=$PWnumero_linea_password$PWletra
sed -i "$PWlinea_sed $option" /home/orangepi/MMDVMHost/MMDVM.ini_copia

#ScreenLayout
var=`grep -n -m 1 '\<ScreenLayout\>' /home/orangepi/Downloads/MMDVM.ini_copia`
var1=`grep -m 1 '\<ScreenLayout\>' /home/orangepi/Downloads/MMDVM.ini_copia`
buscar=":"
largo_linea=`expr index $var $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea=`expr substr $var 1 $largo_linea`
SCvar=`grep -n -m 1 '\<ScreenLayout\>' /home/orangepi/MMDVMHost/MMDVM.ini_copia`
buscar=":"
SClargo_linea=`expr index $SCvar $buscar`
SClargo_linea=`expr $SClargo_linea - 1`
SCnumero_linea=`expr substr $SCvar 1 $SClargo_linea`
SCletra=c
SClinea_sed=$SCnumero_linea$SCletra
sed -i "$SClinea_sed $var1" /home/orangepi/MMDVMHost/MMDVM.ini_copia

#Brightness
var=`grep -n -m 1 '\<Brightness\>' /home/orangepi/Downloads/MMDVM.ini_copia`
var1=`grep -m 1 '\<Brightness\>' /home/orangepi/Downloads/MMDVM.ini_copia`
buscar=":"
largo_linea=`expr index $var $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea=`expr substr $var 1 $largo_linea`
BRvar=`grep -n -m 1 '\<Brightness\>' /home/orangepi/MMDVMHost/MMDVM.ini_copia`
buscar=":"
BRlargo_linea=`expr index $BRvar $buscar`
BRlargo_linea=`expr $BRlargo_linea - 1`
BRnumero_linea=`expr substr $BRvar 1 $BRlargo_linea`
BRletra=c
BRlinea_sed=$BRnumero_linea$BRletra
sed -i "$BRlinea_sed $var1" /home/orangepi/MMDVMHost/MMDVM.ini_copia

#Slot1
var=`grep -n -m 1 '\<Slot1\>' /home/orangepi/Downloads/MMDVM.ini_copia`
var1=`grep -m 1 '\<Slot1\>' /home/orangepi/Downloads/MMDVM.ini_copia`
buscar=":"
largo_linea=`expr index $var $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea=`expr substr $var 1 $largo_linea`
SLvar=`grep -n -m 1 '\<Slot1\>' /home/orangepi/MMDVMHost/MMDVM.ini_copia`
buscar=":"
SLlargo_linea=`expr index $SLvar $buscar`
SLlargo_linea=`expr $SLlargo_linea - 1`
SLnumero_linea=`expr substr $SLvar 1 $SLlargo_linea`
SLletra=c
SLlinea_sed=$SLnumero_linea$SLletra
sed -i "$SLlinea_sed $var1" /home/orangepi/MMDVMHost/MMDVM.ini_copia

#DisplayLevel
var=`grep -n -m 1 '\<DisplayLevel\>' /home/orangepi/Downloads/MMDVM.ini_copia`
var1=`grep -m 1 '\<DisplayLevel\>' /home/orangepi/Downloads/MMDVM.ini_copia`
buscar=":"
largo_linea=`expr index $var $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea=`expr substr $var 1 $largo_linea`
DIvar=`grep -n -m 1 '\<DisplayLevel\>' /home/orangepi/MMDVMHost/MMDVM.ini_copia`
buscar=":"
DIlargo_linea=`expr index $DIvar $buscar`
DIlargo_linea=`expr $DIlargo_linea - 1`
DInumero_linea=`expr substr $DIvar 1 $DIlargo_linea`
DIletra=c
DIlinea_sed=$DInumero_linea$DIletra
sed -i "$DIlinea_sed $var1" /home/orangepi/MMDVMHost/MMDVM.ini_copia

#TXHang
var=`grep -n -m 1 '\<TXHang\>' /home/orangepi/Downloads/MMDVM.ini_copia`
var1=`grep -m 1 '\<TXHang\>' /home/orangepi/Downloads/MMDVM.ini_copia`
buscar=":"
largo_linea=`expr index $var $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea=`expr substr $var 1 $largo_linea`
THvar=`grep -n -m 1 '\<TXHang\>' /home/orangepi/MMDVMHost/MMDVM.ini_copia`
buscar=":"
THlargo_linea=`expr index $THvar $buscar`
THlargo_linea=`expr $THlargo_linea - 1`
THnumero_linea=`expr substr $THvar 1 $THlargo_linea`
THletra=c
THlinea_sed=$THnumero_linea$THletra
sed -i "$THlinea_sed $var1" /home/orangepi/MMDVMHost/MMDVM.ini_copia

#D-Star
var=`grep -n -m 1 "\[D-Star\]" /home/orangepi/Downloads/MMDVM.ini_copia` 
var1=`grep -m 1 "\[D-Star\]" /home/orangepi/Downloads/MMDVM.ini_copia`
buscar=":"
largo_linea=`expr index $var $buscar` 
largo_linea=`expr $largo_linea - 1` 
numero_linea=`expr substr $var 1 $largo_linea` 
numero_linea_dstar=`expr $numero_linea + 1` 
DSvar=`grep -n -m 1 "\[D-Star\]" /home/orangepi/MMDVMHost/MMDVM.ini_copia` 
DSvar1=`grep -m 1 "\[D-Star\]" /home/orangepi/MMDVMHost/MMDVM.ini_copia`
buscar=":"
DSlargo_linea=`expr index $DSvar $buscar` 
DSlargo_linea=`expr $DSlargo_linea - 1` 
DSnumero_linea=`expr substr $DSvar 1 $DSlargo_linea` 
DSnumero_linea_dstar=`expr $DSnumero_linea + 1`
DSDS=$(awk "NR==$numero_linea_dstar" /home/orangepi/Downloads/MMDVM.ini_copia) 
DSletrac=c
DSlinea_sed=$DSnumero_linea_dstar$DSletrac
sed -i "$DSlinea_sed $DSDS" /home/orangepi/MMDVMHost/MMDVM.ini_copia

#DMR
var=`grep -n -m 1 "\[DMR\]" /home/orangepi/Downloads/MMDVM.ini_copia` 
var1=`grep -m 1 "\[DMR\]" /home/orangepi/Downloads/MMDVM.ini_copia`
buscar=":"
largo_linea=`expr index $var $buscar` 
largo_linea=`expr $largo_linea - 1` 
numero_linea=`expr substr $var 1 $largo_linea` 
numero_linea_dmr=`expr $numero_linea + 1` 
DMvar=`grep -n "\[DMR\]" /home/orangepi/MMDVMHost/MMDVM.ini_copia` 
DMvar1=`grep -n -m 1 "\[DMR\]" /home/orangepi/MMDVMHost/MMDVM.ini_copia`
buscar=":"
DMlargo_linea=`expr index $DMvar $buscar` 
DMlargo_linea=`expr $DMlargo_linea - 1` 
DMnumero_linea=`expr substr $DMvar 1 $DMlargo_linea` 
DMnumero_linea_dmr=`expr $DMnumero_linea + 1` 
DMDM=$(awk "NR==$numero_linea_dmr" /home/orangepi/Downloads/MMDVM.ini_copia)
DMletrac=c
DMlinea_sed=$DMnumero_linea_dmr$DMletrac 
sed -i "$DMlinea_sed $DMDM" /home/orangepi/MMDVMHost/MMDVM.ini_copia

#P25
var=`grep -n -m 1 "\[P25\]" /home/orangepi/Downloads/MMDVM.ini_copia` 
var1=`grep -m 1 "\[P25\]" /home/orangepi/Downloads/MMDVM.ini_copia`
buscar=":"
largo_linea=`expr index $var $buscar` 
largo_linea=`expr $largo_linea - 1` 
numero_linea=`expr substr $var 1 $largo_linea` 
numero_linea_p25=`expr $numero_linea + 1` 
P2var=`grep -n -m 1 "\[P25\]" /home/orangepi/MMDVMHost/MMDVM.ini_copia` 
P2var1=`grep -n "\[P25\]" /home/orangepi/MMDVMHost/MMDVM.ini_copia`
buscar=":"
P2largo_linea=`expr index $P2var $buscar` 
P2largo_linea=`expr $P2largo_linea - 1` 
P2numero_linea=`expr substr $P2var 1 $P2largo_linea` 
P2numero_linea_p25=`expr $P2numero_linea + 1` 
P2P2=$(awk "NR==$numero_linea_p25" /home/orangepi/Downloads/MMDVM.ini_copia)
P2letrac=c
P2linea_sed=$P2numero_linea_p25$P2letrac
sed -i "$P2linea_sed $P2P2" /home/orangepi/MMDVMHost/MMDVM.ini_copia

#FUSION
var1=`grep -n -m 1 "\[System Fusion\]" /home/orangepi/Downloads/MMDVM.ini_copia`
var2=`echo "$var1" | tr -d '[[:space:]]'`
buscar=":"
largo_linea=`expr index $var2 $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea=`expr substr $var2 1 $largo_linea`
numero_linea=`expr $numero_linea + 1`
CWvar1=`grep -n -m 1 "\[System Fusion\]" /home/orangepi/MMDVMHost/MMDVM.ini_copia`
CWvar2=`echo "$CWvar1" | tr -d '[[:space:]]'`
buscar=":"
CWlargo_linea=`expr index $CWvar2 $buscar`
CWlargo_linea=`expr $CWlargo_linea - 1`
CWnumero_linea=`expr substr $CWvar2 1 $CWlargo_linea`
CWnumero_linea=`expr $CWnumero_linea + 1`
CWCW=$(awk "NR==$CWnumero_linea" /home/orangepi/Downloads/MMDVM.ini_copia)
CWletra=c
CWlinea_sed=$CWnumero_linea$CWletra
sed -i "$CWlinea_sed $CWCW" /home/orangepi/MMDVMHost/MMDVM.ini_copia

#Nextion
var=`grep -n -m 1 "\[Nextion\]" /home/orangepi/Downloads/MMDVM.ini_copia` 
var1=`grep -m 1 "\[Nextion\]" /home/orangepi/Downloads/MMDVM.ini_copia`
buscar=":"
largo_linea=`expr index $var $buscar` 
largo_linea=`expr $largo_linea - 1` 
numero_linea=`expr substr $var 1 $largo_linea` 
numero_linea_p25=`expr $numero_linea + 2` 
P2var=`grep -n -m 1 "\[Nextion\]" /home/orangepi/MMDVMHost/MMDVM.ini_copia` 
P2var1=`grep -n "\[Nextion\]" /home/orangepi/MMDVMHost/MMDVM.ini_copia`
buscar=":"
P2largo_linea=`expr index $P2var $buscar` 
P2largo_linea=`expr $P2largo_linea - 1` 
P2numero_linea=`expr substr $P2var 1 $P2largo_linea` 
P2numero_linea_p25=`expr $P2numero_linea + 2` 
P2P2=$(awk "NR==$numero_linea_p25" /home/orangepi/Downloads/MMDVM.ini_copia)
P2letrac=c
P2linea_sed=$P2numero_linea_p25$P2letrac
sed -i "$P2linea_sed $P2P2" /home/orangepi/MMDVMHost/MMDVM.ini_copia
#======================= MMDVM.ini_copia2   ============================
#******************************************************************
# Callsign 
var=`grep -n -m 1 '\<Callsign\>' /home/orangepi/Downloads/MMDVM.ini_copia2` # 2:Callsign=EA3EIZ
var1=`grep -m 1 '\<Callsign\>' /home/orangepi/Downloads/MMDVM.ini_copia2` # Callsign=EA3EIZ
buscar=":"
largo_linea=`expr index $var $buscar` #comprueba el largo incluyendo los dos puntos (:)
largo_linea=`expr $largo_linea - 1` #comprueba el largo quitando los dos puntos (:)
numero_linea=`expr substr $var 1 $largo_linea` # recoge numero linea Downloads
Hvar=`grep -n -m 1 '\<Callsign\>' /home/orangepi/MMDVMHost/MMDVM.ini_copia2` # 2:Callsign=EA3EIZ
buscar=":"
Hlargo_linea=`expr index $Hvar $buscar` 
Hlargo_linea=`expr $Hlargo_linea - 1` 
Hnumero_linea=`expr substr $Hvar 1 $Hlargo_linea` # recoge numero linea MMDXVMHost
Hletra=c
Hlinea_sed=$Hnumero_linea$Hletra
sed -i "$Hlinea_sed $var1" /home/orangepi/MMDVMHost/MMDVM.ini_copia2

#Id capturado de la linea 3
Id=$(awk "NR==3" /home/orangepi/Downloads/MMDVM.ini_copia2)
sed -i "3c $Id" /home/orangepi/MMDVMHost/MMDVM.ini_copia2

#Timeout capturado de la linea 4
timeou=$(awk "NR==4" /home/orangepi/Downloads/MMDVM.ini_copia2)
sed -i "4c $timeou" /home/orangepi/MMDVMHost/MMDVM.ini_copia2

#Duplex
var=`grep -n -m 1 '\<Duplex\>' /home/orangepi/Downloads/MMDVM.ini_copia2`
var1=`grep -m 1 '\<Duplex\>' /home/orangepi/Downloads/MMDVM.ini_copia2`
buscar=":"
largo_linea=`expr index $var $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea=`expr substr $var 1 $largo_linea`
Dvar=`grep -n -m 1 '\<Duplex\>' /home/orangepi/MMDVMHost/MMDVM.ini_copia2`
buscar=":"
Dlargo_linea=`expr index $Dvar $buscar`
Dlargo_linea=`expr $Dlargo_linea - 1`
Dnumero_linea=`expr substr $Dvar 1 $Dlargo_linea`
Dletra=c
Dlinea_sed=$Dnumero_linea$Dletra
sed -i "$Dlinea_sed $var1" /home/orangepi/MMDVMHost/MMDVM.ini_copia2

#RFModeHang
var=`grep -n -m 1 '\<RFModeHang\>' /home/orangepi/Downloads/MMDVM.ini_copia2`
var1=`grep -m 1 '\<RFModeHang\>' /home/orangepi/Downloads/MMDVM.ini_copia2`
buscar=":"
largo_linea=`expr index $var $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea=`expr substr $var 1 $largo_linea`
Rvar=`grep -n -m 1 '\<RFModeHang\>' /home/orangepi/MMDVMHost/MMDVM.ini_copia2`
buscar=":"
Rlargo_linea=`expr index $Rvar $buscar`
Rlargo_linea=`expr $Rlargo_linea - 1`
Rnumero_linea=`expr substr $Rvar 1 $Rlargo_linea`
Rletra=c
Rlinea_sed=$Rnumero_linea$Rletra
sed -i "$Rlinea_sed $var1" /home/orangepi/MMDVMHost/MMDVM.ini_copia2

#Display
var=`grep -n -m 1 '\<Display\>' /home/orangepi/Downloads/MMDVM.ini_copia2`
var1=`grep -m 1 '\<Display\>' /home/orangepi/Downloads/MMDVM.ini_copia2`
buscar=":"
largo_linea=`expr index $var $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea=`expr substr $var 1 $largo_linea`
Dvar=`grep -n -m 1 '\<Display\>' /home/orangepi/MMDVMHost/MMDVM.ini_copia2`
buscar=":"
Dlargo_linea=`expr index $Dvar $buscar`
Dlargo_linea=`expr $Dlargo_linea - 1`
Dnumero_linea=`expr substr $Dvar 1 $Dlargo_linea`
Dletra=c
Dlinea_sed=$Dnumero_linea$Dletra
sed -i "$Dlinea_sed $var1" /home/orangepi/MMDVMHost/MMDVM.ini_copia2

#RXFrequency
var=`grep -n -m 1 '\<RXFrequency\>' /home/orangepi/Downloads/MMDVM.ini_copia2`
var1=`grep -m 1 '\<RXFrequency\>' /home/orangepi/Downloads/MMDVM.ini_copia2`
buscar=":"
largo_linea=`expr index $var $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea=`expr substr $var 1 $largo_linea`
Xvar=`grep -n -m 1 '\<RXFrequency\>' /home/orangepi/MMDVMHost/MMDVM.ini_copia2`
buscar=":"
Xlargo_linea=`expr index $Xvar $buscar`
Xlargo_linea=`expr $Xlargo_linea - 1`
Xnumero_linea=`expr substr $Xvar 1 $Xlargo_linea`
Xletra=c
Xlinea_sed=$Xnumero_linea$Xletra
sed -i "$Xlinea_sed $var1" /home/orangepi/MMDVMHost/MMDVM.ini_copia2

#TXFrequency
var=`grep -n -m 1 '\<TXFrequency\>' /home/orangepi/Downloads/MMDVM.ini_copia2`
var1=`grep -m 1 '\<TXFrequency\>' /home/orangepi/Downloads/MMDVM.ini_copia2`
buscar=":"
largo_linea=`expr index $var $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea=`expr substr $var 1 $largo_linea`
Tvar=`grep -n -m 1 '\<TXFrequency\>' /home/orangepi/MMDVMHost/MMDVM.ini_copia2`
buscar=":"
Tlargo_linea=`expr index $Tvar $buscar`
Tlargo_linea=`expr $Tlargo_linea - 1`
Tnumero_linea=`expr substr $Tvar 1 $Tlargo_linea`
Tletra=c
Tlinea_sed=$Tnumero_linea$Tletra
sed -i "$Tlinea_sed $var1" /home/orangepi/MMDVMHost/MMDVM.ini_copia2

#Latitude
var=`grep -n -m 1 '\<Latitude\>' /home/orangepi/Downloads/MMDVM.ini_copia2`
var1=`grep -m 1 '\<Latitude\>' /home/orangepi/Downloads/MMDVM.ini_copia2`
buscar=":"
largo_linea=`expr index $var $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea=`expr substr $var 1 $largo_linea`
Lvar=`grep -n -m 1 '\<Latitude\>' /home/orangepi/MMDVMHost/MMDVM.ini_copia2`
buscar=":"
Llargo_linea=`expr index $Lvar $buscar`
Llargo_linea=`expr $Llargo_linea - 1`
Lnumero_linea=`expr substr $Lvar 1 $Llargo_linea`
Lletra=c
Llinea_sed=$Lnumero_linea$Lletra
sed -i "$Llinea_sed $var1" /home/orangepi/MMDVMHost/MMDVM.ini_copia2

#Longitude
var=`grep -n -m 1 '\<Longitude\>' /home/orangepi/Downloads/MMDVM.ini_copia2`
var1=`grep -m 1 '\<Longitude\>' /home/orangepi/Downloads/MMDVM.ini_copia2`
buscar=":"
largo_linea=`expr index $var $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea=`expr substr $var 1 $largo_linea`
LGvar=`grep -n -m 1 '\<Longitude\>' /home/orangepi/MMDVMHost/MMDVM.ini_copia2`
buscar=":"
LGlargo_linea=`expr index $LGvar $buscar`
LGlargo_linea=`expr $LGlargo_linea - 1`
LGnumero_linea=`expr substr $LGvar 1 $LGlargo_linea`
LGletra=c
LGlinea_sed=$LGnumero_linea$LGletra
sed -i "$LGlinea_sed $var1" /home/orangepi/MMDVMHost/MMDVM.ini_copia2

#Location
var=`grep -n -m 1 '\<Location\>' /home/orangepi/Downloads/MMDVM.ini_copia2`
var1=`grep -m 1 '\<Location\>' /home/orangepi/Downloads/MMDVM.ini_copia2`
buscar=":"
largo_linea=`expr index $var $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea=`expr substr $var 1 $largo_linea`
LOvar=`grep -n -m 1 '\<Location\>' /home/orangepi/MMDVMHost/MMDVM.ini_copia2`
buscar=":"
LOlargo_linea=`expr index $LOvar $buscar`
LOlargo_linea=`expr $LOlargo_linea - 1`
LOnumero_linea=`expr substr $LOvar 1 $LOlargo_linea`
LOletra=c
LOlinea_sed=$LOnumero_linea$LOletra
sed -i "$LOlinea_sed $var1" /home/orangepi/MMDVMHost/MMDVM.ini_copia2

#URL
var=`grep -n -m 1 '\<URL\>' /home/orangepi/Downloads/MMDVM.ini_copia2`
var1=`grep -m 1 '\<URL\>' /home/orangepi/Downloads/MMDVM.ini_copia2`
buscar=":"
largo_linea=`expr index $var $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea_url=`expr substr $var 1 $largo_linea`
Uvar=`grep -n -m 1 '\<URL\>' /home/orangepi/MMDVMHost/MMDVM.ini_copia2`
Ubuscar=":"
Ulargo_linea=`expr index $Uvar $buscar`
Ulargo_linea=`expr $Ulargo_linea - 1`
Unumero_linea_url=`expr substr $Uvar 1 $largo_linea`
Uletra=c
Ulinea_sed=$Unumero_linea_url$Uletra
sed -i "$Ulinea_sed $var1" /home/orangepi/MMDVMHost/MMDVM.ini_copia2

#Baliza 
var1=`grep -n -m 1 "\[CW Id\]" /home/orangepi/Downloads/MMDVM.ini_copia2`
var2=`echo "$var1" | tr -d '[[:space:]]'`
buscar=":"
largo_linea=`expr index $var2 $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea=`expr substr $var2 1 $largo_linea`
numero_linea=`expr $numero_linea + 1`
CWvar1=`grep -n -m 1 "\[CW Id\]" /home/orangepi/MMDVMHost/MMDVM.ini_copia2`
CWvar2=`echo "$CWvar1" | tr -d '[[:space:]]'`
buscar=":"
CWlargo_linea=`expr index $CWvar2 $buscar`
CWlargo_linea=`expr $CWlargo_linea - 1`
CWnumero_linea=`expr substr $CWvar2 1 $CWlargo_linea`
CWnumero_linea=`expr $CWnumero_linea + 1`
CWCW=$(awk "NR==$CWnumero_linea" /home/orangepi/Downloads/MMDVM.ini_copia2)
CWletra=c
CWlinea_sed=$CWnumero_linea$CWletra
sed -i "$CWlinea_sed $CWCW" /home/orangepi/MMDVMHost/MMDVM.ini_copia2

#RXLevel
var=`grep -n -m 1 '\<RXLevel\>' /home/orangepi/Downloads/MMDVM.ini_copia2`
var1=`grep -m 1 '\<RXLevel\>' /home/orangepi/Downloads/MMDVM.ini_copia2`
buscar=":"
largo_linea=`expr index $var $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea=`expr substr $var 1 $largo_linea`
RLvar=`grep -n -m 1 '\<RXLevel\>' /home/orangepi/MMDVMHost/MMDVM.ini_copia2`
buscar=":"
RLlargo_linea=`expr index $RLvar $buscar`
RLlargo_linea=`expr $RLlargo_linea - 1`
RLnumero_linea=`expr substr $RLvar 1 $RLlargo_linea`
RLletra=c
RLlinea_sed=$RLnumero_linea$RLletra
sed -i "$RLlinea_sed $var1" /home/orangepi/MMDVMHost/MMDVM.ini_copia2

#TXLevel
var=`grep -n -m 1 '\<TXLevel\>' /home/orangepi/Downloads/MMDVM.ini_copia2`
var1=`grep -m 1 '\<TXLevel\>' /home/orangepi/Downloads/MMDVM.ini_copia2`
buscar=":"
largo_linea=`expr index $var $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea=`expr substr $var 1 $largo_linea`
TLvar=`grep -n -m 1 '\<TXLevel\>' /home/orangepi/MMDVMHost/MMDVM.ini_copia2`
buscar=":"
TLlargo_linea=`expr index $TLvar $buscar`
TLlargo_linea=`expr $TLlargo_linea - 1`
TLnumero_linea=`expr substr $TLvar 1 $TLlargo_linea`
TLletra=c
TLlinea_sed=$TLnumero_linea$TLletra
sed -i "$TLlinea_sed $var1" /home/orangepi/MMDVMHost/MMDVM.ini_copia2

#Module
var=`grep -n -m 1 '\<Module\>' /home/orangepi/Downloads/MMDVM.ini_copia2`
var1=`grep -m 1 '\<Module\>' /home/orangepi/Downloads/MMDVM.ini_copia2`
buscar=":"
largo_linea=`expr index $var $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea=`expr substr $var 1 $largo_linea`
MOvar=`grep -n -m 1 '\<Module\>' /home/orangepi/MMDVMHost/MMDVM.ini_copia2`
buscar=":"
MOlargo_linea=`expr index $MOvar $buscar`
MOlargo_linea=`expr $MOlargo_linea - 1`
MOnumero_linea=`expr substr $MOvar 1 $MOlargo_linea`
MOletra=c
MOlinea_sed=$MOnumero_linea$MOletra
sed -i "$MOlinea_sed $var1" /home/orangepi/MMDVMHost/MMDVM.ini_copia2

#Txinvert
var=`grep -n -m 1 '\<TXInvert\>' /home/orangepi/Downloads/MMDVM.ini_copia2`
var1=`grep -m 1 '\<TXInvert\>' /home/orangepi/Downloads/MMDVM.ini_copia2`
buscar=":"
largo_linea=`expr index $var $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea=`expr substr $var 1 $largo_linea`
TIvar=`grep -n -m 1 '\<TXInvert\>' /home/orangepi/MMDVMHost/MMDVM.ini_copia2`
buscar=":"
TIlargo_linea=`expr index $TIvar $buscar`
TIlargo_linea=`expr $TIlargo_linea - 1`
TInumero_linea=`expr substr $TIvar 1 $TIlargo_linea`
TIletra=c
TIlinea_sed=$TInumero_linea$TIletra
sed -i "$TIlinea_sed $var1" /home/orangepi/MMDVMHost/MMDVM.ini_copia2

#Modem capturado de la linea txinvert -1
numero_linea_MODEM=`expr $numero_linea - 1` # Downloads
MOnumero_linea_MODEM=`expr $TInumero_linea - 1` # MMDVMHost
modem=$(awk "NR==$numero_linea_MODEM" /home/orangepi/Downloads/MMDVM.ini_copia2)
TIletra=c
TIlinea_sed=$MOnumero_linea_MODEM$TIletra
sed -i "$TIlinea_sed $modem" /home/orangepi/MMDVMHost/MMDVM.ini_copia2

#Address
var=`grep -n -m 1 '\<Address\>' /home/orangepi/Downloads/MMDVM.ini_copia2`
var1=`grep -m 1 '\<Address\>' /home/orangepi/Downloads/MMDVM.ini_copia2`
buscar=":"
largo_linea=`expr index $var $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea_Address=`expr substr $var 1 $largo_linea`
ADvar=`grep -n -m 1 '\<Address\>' /home/orangepi/MMDVMHost/MMDVM.ini_copia2`
buscar=":"
ADlargo_linea=`expr index $ADvar $buscar`
ADlargo_linea=`expr $ADlargo_linea - 1`
ADnumero_linea_Address=`expr substr $ADvar 1 $ADlargo_linea`
ADletra=c
ADlinea_sed=$ADnumero_linea_Address$ADletra
sed -i "$ADlinea_sed $var1" /home/orangepi/MMDVMHost/MMDVM.ini_copia2

#Port captura de la linea Address +1
numero_linea_Address=`expr $numero_linea_Address + 1` # Downloads
ADnumero_linea_Address=`expr $ADnumero_linea_Address + 1` # MMDVMHost
port=$(awk "NR==$numero_linea_Address" /home/orangepi/Downloads/MMDVM.ini_copia2)
ADletra=c
ADlinea_sed=$ADnumero_linea_Address$ADletra
sed -i "$ADlinea_sed $port" /home/orangepi/MMDVMHost/MMDVM.ini_copia2

#Password
var=`grep -n -m 1 '\<Password\>' /home/orangepi/Downloads/MMDVM.ini_copia2`
var1=`grep -m 1 '\<Password\>' /home/orangepi/Downloads/MMDVM.ini_copia2`
buscar=":"
largo_linea=`expr index $var $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea_password=`expr substr $var 1 $largo_linea`
PWvar=`grep -n -m 1 '\<Password\>' /home/orangepi/MMDVMHost/MMDVM.ini_copia2`
buscar=":"
PWlargo_linea=`expr index $PWvar $buscar`
PWlargo_linea=`expr $PWlargo_linea - 1`
PWnumero_linea_password=`expr substr $PWvar 1 $PWlargo_linea`
PWletra=c
PWlinea_sed=$PWnumero_linea_password$PWletra
sed -i "$PWlinea_sed $var1" /home/orangepi/MMDVMHost/MMDVM.ini_copia2

#Options linea password  +1
numero_linea_password=`expr $numero_linea_password + 1` # Downloads
PWnumero_linea_password=`expr $PWnumero_linea_password + 1` # MMDVMHost
option=$(awk "NR==$numero_linea_password" /home/orangepi/Downloads/MMDVM.ini_copia2)
PWletra=c
PWlinea_sed=$PWnumero_linea_password$PWletra
sed -i "$PWlinea_sed $option" /home/orangepi/MMDVMHost/MMDVM.ini_copia2

#ScreenLayout
var=`grep -n -m 1 '\<ScreenLayout\>' /home/orangepi/Downloads/MMDVM.ini_copia2`
var1=`grep -m 1 '\<ScreenLayout\>' /home/orangepi/Downloads/MMDVM.ini_copia2`
buscar=":"
largo_linea=`expr index $var $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea=`expr substr $var 1 $largo_linea`
SCvar=`grep -n -m 1 '\<ScreenLayout\>' /home/orangepi/MMDVMHost/MMDVM.ini_copia2`
buscar=":"
SClargo_linea=`expr index $SCvar $buscar`
SClargo_linea=`expr $SClargo_linea - 1`
SCnumero_linea=`expr substr $SCvar 1 $SClargo_linea`
SCletra=c
SClinea_sed=$SCnumero_linea$SCletra
sed -i "$SClinea_sed $var1" /home/orangepi/MMDVMHost/MMDVM.ini_copia2

#Brightness
var=`grep -n -m 1 '\<Brightness\>' /home/orangepi/Downloads/MMDVM.ini_copia2`
var1=`grep -m 1 '\<Brightness\>' /home/orangepi/Downloads/MMDVM.ini_copia2`
buscar=":"
largo_linea=`expr index $var $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea=`expr substr $var 1 $largo_linea`
BRvar=`grep -n -m 1 '\<Brightness\>' /home/orangepi/MMDVMHost/MMDVM.ini_copia2`
buscar=":"
BRlargo_linea=`expr index $BRvar $buscar`
BRlargo_linea=`expr $BRlargo_linea - 1`
BRnumero_linea=`expr substr $BRvar 1 $BRlargo_linea`
BRletra=c
BRlinea_sed=$BRnumero_linea$BRletra
sed -i "$BRlinea_sed $var1" /home/orangepi/MMDVMHost/MMDVM.ini_copia2

#Slot1
var=`grep -n -m 1 '\<Slot1\>' /home/orangepi/Downloads/MMDVM.ini_copia2`
var1=`grep -m 1 '\<Slot1\>' /home/orangepi/Downloads/MMDVM.ini_copia2`
buscar=":"
largo_linea=`expr index $var $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea=`expr substr $var 1 $largo_linea`
SLvar=`grep -n -m 1 '\<Slot1\>' /home/orangepi/MMDVMHost/MMDVM.ini_copia2`
buscar=":"
SLlargo_linea=`expr index $SLvar $buscar`
SLlargo_linea=`expr $SLlargo_linea - 1`
SLnumero_linea=`expr substr $SLvar 1 $SLlargo_linea`
SLletra=c
SLlinea_sed=$SLnumero_linea$SLletra
sed -i "$SLlinea_sed $var1" /home/orangepi/MMDVMHost/MMDVM.ini_copia2

#DisplayLevel
var=`grep -n -m 1 '\<DisplayLevel\>' /home/orangepi/Downloads/MMDVM.ini_copia2`
var1=`grep -m 1 '\<DisplayLevel\>' /home/orangepi/Downloads/MMDVM.ini_copia2`
buscar=":"
largo_linea=`expr index $var $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea=`expr substr $var 1 $largo_linea`
DIvar=`grep -n -m 1 '\<DisplayLevel\>' /home/orangepi/MMDVMHost/MMDVM.ini_copia2`
buscar=":"
DIlargo_linea=`expr index $DIvar $buscar`
DIlargo_linea=`expr $DIlargo_linea - 1`
DInumero_linea=`expr substr $DIvar 1 $DIlargo_linea`
DIletra=c
DIlinea_sed=$DInumero_linea$DIletra
sed -i "$DIlinea_sed $var1" /home/orangepi/MMDVMHost/MMDVM.ini_copia2

#TXHang
var=`grep -n -m 1 '\<TXHang\>' /home/orangepi/Downloads/MMDVM.ini_copia2`
var1=`grep -m 1 '\<TXHang\>' /home/orangepi/Downloads/MMDVM.ini_copia2`
buscar=":"
largo_linea=`expr index $var $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea=`expr substr $var 1 $largo_linea`
THvar=`grep -n -m 1 '\<TXHang\>' /home/orangepi/MMDVMHost/MMDVM.ini_copia2`
buscar=":"
THlargo_linea=`expr index $THvar $buscar`
THlargo_linea=`expr $THlargo_linea - 1`
THnumero_linea=`expr substr $THvar 1 $THlargo_linea`
THletra=c
THlinea_sed=$THnumero_linea$THletra
sed -i "$THlinea_sed $var1" /home/orangepi/MMDVMHost/MMDVM.ini_copia2

#D-Star
var=`grep -n -m 1 "\[D-Star\]" /home/orangepi/Downloads/MMDVM.ini_copia2` 
var1=`grep -m 1 "\[D-Star\]" /home/orangepi/Downloads/MMDVM.ini_copia2`
buscar=":"
largo_linea=`expr index $var $buscar` 
largo_linea=`expr $largo_linea - 1` 
numero_linea=`expr substr $var 1 $largo_linea` 
numero_linea_dstar=`expr $numero_linea + 1` 
DSvar=`grep -n -m 1 "\[D-Star\]" /home/orangepi/MMDVMHost/MMDVM.ini_copia2` 
DSvar1=`grep -m 1 "\[D-Star\]" /home/orangepi/MMDVMHost/MMDVM.ini_copia2`
buscar=":"
DSlargo_linea=`expr index $DSvar $buscar` 
DSlargo_linea=`expr $DSlargo_linea - 1` 
DSnumero_linea=`expr substr $DSvar 1 $DSlargo_linea` 
DSnumero_linea_dstar=`expr $DSnumero_linea + 1`
DSDS=$(awk "NR==$numero_linea_dstar" /home/orangepi/Downloads/MMDVM.ini_copia2) 
DSletrac=c
DSlinea_sed=$DSnumero_linea_dstar$DSletrac
sed -i "$DSlinea_sed $DSDS" /home/orangepi/MMDVMHost/MMDVM.ini_copia2

#DMR
var=`grep -n -m 1 "\[DMR\]" /home/orangepi/Downloads/MMDVM.ini_copia2` 
var1=`grep -m 1 "\[DMR\]" /home/orangepi/Downloads/MMDVM.ini_copia2`
buscar=":"
largo_linea=`expr index $var $buscar` 
largo_linea=`expr $largo_linea - 1` 
numero_linea=`expr substr $var 1 $largo_linea` 
numero_linea_dmr=`expr $numero_linea + 1` 
DMvar=`grep -n "\[DMR\]" /home/orangepi/MMDVMHost/MMDVM.ini_copia2` 
DMvar1=`grep -n -m 1 "\[DMR\]" /home/orangepi/MMDVMHost/MMDVM.ini_copia2`
buscar=":"
DMlargo_linea=`expr index $DMvar $buscar` 
DMlargo_linea=`expr $DMlargo_linea - 1` 
DMnumero_linea=`expr substr $DMvar 1 $DMlargo_linea` 
DMnumero_linea_dmr=`expr $DMnumero_linea + 1` 
DMDM=$(awk "NR==$numero_linea_dmr" /home/orangepi/Downloads/MMDVM.ini_copia2)
DMletrac=c
DMlinea_sed=$DMnumero_linea_dmr$DMletrac 
sed -i "$DMlinea_sed $DMDM" /home/orangepi/MMDVMHost/MMDVM.ini_copia2

#P25
var=`grep -n -m 1 "\[P25\]" /home/orangepi/Downloads/MMDVM.ini_copia2` 
var1=`grep -m 1 "\[P25\]" /home/orangepi/Downloads/MMDVM.ini_copia2`
buscar=":"
largo_linea=`expr index $var $buscar` 
largo_linea=`expr $largo_linea - 1` 
numero_linea=`expr substr $var 1 $largo_linea` 
numero_linea_p25=`expr $numero_linea + 1` 
P2var=`grep -n -m 1 "\[P25\]" /home/orangepi/MMDVMHost/MMDVM.ini_copia2` 
P2var1=`grep -n "\[P25\]" /home/orangepi/MMDVMHost/MMDVM.ini_copia2`
buscar=":"
P2largo_linea=`expr index $P2var $buscar` 
P2largo_linea=`expr $P2largo_linea - 1` 
P2numero_linea=`expr substr $P2var 1 $P2largo_linea` 
P2numero_linea_p25=`expr $P2numero_linea + 1` 
P2P2=$(awk "NR==$numero_linea_p25" /home/orangepi/Downloads/MMDVM.ini_copia2)
P2letrac=c
P2linea_sed=$P2numero_linea_p25$P2letrac
sed -i "$P2linea_sed $P2P2" /home/orangepi/MMDVMHost/MMDVM.ini_copia2

#FUSION
var1=`grep -n -m 1 "\[System Fusion\]" /home/orangepi/Downloads/MMDVM.ini_copia2`
var2=`echo "$var1" | tr -d '[[:space:]]'`
buscar=":"
largo_linea=`expr index $var2 $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea=`expr substr $var2 1 $largo_linea`
numero_linea=`expr $numero_linea + 1`
CWvar1=`grep -n -m 1 "\[System Fusion\]" /home/orangepi/MMDVMHost/MMDVM.ini_copia2`
CWvar2=`echo "$CWvar1" | tr -d '[[:space:]]'`
buscar=":"
CWlargo_linea=`expr index $CWvar2 $buscar`
CWlargo_linea=`expr $CWlargo_linea - 1`
CWnumero_linea=`expr substr $CWvar2 1 $CWlargo_linea`
CWnumero_linea=`expr $CWnumero_linea + 1`
CWCW=$(awk "NR==$CWnumero_linea" /home/orangepi/Downloads/MMDVM.ini_copia2)
CWletra=c
CWlinea_sed=$CWnumero_linea$CWletra
sed -i "$CWlinea_sed $CWCW" /home/orangepi/MMDVMHost/MMDVM.ini_copia2

#Nextion
var=`grep -n -m 1 "\[Nextion\]" /home/orangepi/Downloads/MMDVM.ini_copia2` 
var1=`grep -m 1 "\[Nextion\]" /home/orangepi/Downloads/MMDVM.ini_copia2`
buscar=":"
largo_linea=`expr index $var $buscar` 
largo_linea=`expr $largo_linea - 1` 
numero_linea=`expr substr $var 1 $largo_linea` 
numero_linea_p25=`expr $numero_linea + 2` 
P2var=`grep -n -m 1 "\[Nextion\]" /home/orangepi/MMDVMHost/MMDVM.ini_copia2` 
P2var1=`grep -n "\[Nextion\]" /home/orangepi/MMDVMHost/MMDVM.ini_copia2`
buscar=":"
P2largo_linea=`expr index $P2var $buscar` 
P2largo_linea=`expr $P2largo_linea - 1` 
P2numero_linea=`expr substr $P2var 1 $P2largo_linea` 
P2numero_linea_p25=`expr $P2numero_linea + 2` 
P2P2=$(awk "NR==$numero_linea_p25" /home/orangepi/Downloads/MMDVM.ini_copia2)
P2letrac=c
P2linea_sed=$P2numero_linea_p25$P2letrac
sed -i "$P2linea_sed $P2P2" /home/orangepi/MMDVMHost/MMDVM.ini_copia2
#======================= MMDVM.ini_copia3   ============================
#******************************************************************
# Callsign 
var=`grep -n -m 1 '\<Callsign\>' /home/orangepi/Downloads/MMDVM.ini_copia3` # 2:Callsign=EA3EIZ
var1=`grep -m 1 '\<Callsign\>' /home/orangepi/Downloads/MMDVM.ini_copia3` # Callsign=EA3EIZ
buscar=":"
largo_linea=`expr index $var $buscar` #comprueba el largo incluyendo los dos puntos (:)
largo_linea=`expr $largo_linea - 1` #comprueba el largo quitando los dos puntos (:)
numero_linea=`expr substr $var 1 $largo_linea` # recoge numero linea Downloads
Hvar=`grep -n -m 1 '\<Callsign\>' /home/orangepi/MMDVMHost/MMDVM.ini_copia3` # 2:Callsign=EA3EIZ
buscar=":"
Hlargo_linea=`expr index $Hvar $buscar` 
Hlargo_linea=`expr $Hlargo_linea - 1` 
Hnumero_linea=`expr substr $Hvar 1 $Hlargo_linea` # recoge numero linea MMDXVMHost
Hletra=c
Hlinea_sed=$Hnumero_linea$Hletra
sed -i "$Hlinea_sed $var1" /home/orangepi/MMDVMHost/MMDVM.ini_copia3

#Id capturado de la linea 3
Id=$(awk "NR==3" /home/orangepi/Downloads/MMDVM.ini_copia3)
sed -i "3c $Id" /home/orangepi/MMDVMHost/MMDVM.ini_copia3

#Timeout capturado de la linea 4
timeou=$(awk "NR==4" /home/orangepi/Downloads/MMDVM.ini_copia3)
sed -i "4c $timeou" /home/orangepi/MMDVMHost/MMDVM.ini_copia3

#Duplex
var=`grep -n -m 1 '\<Duplex\>' /home/orangepi/Downloads/MMDVM.ini_copia3`
var1=`grep -m 1 '\<Duplex\>' /home/orangepi/Downloads/MMDVM.ini_copia3`
buscar=":"
largo_linea=`expr index $var $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea=`expr substr $var 1 $largo_linea`
Dvar=`grep -n -m 1 '\<Duplex\>' /home/orangepi/MMDVMHost/MMDVM.ini_copia3`
buscar=":"
Dlargo_linea=`expr index $Dvar $buscar`
Dlargo_linea=`expr $Dlargo_linea - 1`
Dnumero_linea=`expr substr $Dvar 1 $Dlargo_linea`
Dletra=c
Dlinea_sed=$Dnumero_linea$Dletra
sed -i "$Dlinea_sed $var1" /home/orangepi/MMDVMHost/MMDVM.ini_copia3

#RFModeHang
var=`grep -n -m 1 '\<RFModeHang\>' /home/orangepi/Downloads/MMDVM.ini_copia3`
var1=`grep -m 1 '\<RFModeHang\>' /home/orangepi/Downloads/MMDVM.ini_copia3`
buscar=":"
largo_linea=`expr index $var $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea=`expr substr $var 1 $largo_linea`
Rvar=`grep -n -m 1 '\<RFModeHang\>' /home/orangepi/MMDVMHost/MMDVM.ini_copia3`
buscar=":"
Rlargo_linea=`expr index $Rvar $buscar`
Rlargo_linea=`expr $Rlargo_linea - 1`
Rnumero_linea=`expr substr $Rvar 1 $Rlargo_linea`
Rletra=c
Rlinea_sed=$Rnumero_linea$Rletra
sed -i "$Rlinea_sed $var1" /home/orangepi/MMDVMHost/MMDVM.ini_copia3

#Display
var=`grep -n -m 1 '\<Display\>' /home/orangepi/Downloads/MMDVM.ini_copia3`
var1=`grep -m 1 '\<Display\>' /home/orangepi/Downloads/MMDVM.ini_copia3`
buscar=":"
largo_linea=`expr index $var $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea=`expr substr $var 1 $largo_linea`
Dvar=`grep -n -m 1 '\<Display\>' /home/orangepi/MMDVMHost/MMDVM.ini_copia3`
buscar=":"
Dlargo_linea=`expr index $Dvar $buscar`
Dlargo_linea=`expr $Dlargo_linea - 1`
Dnumero_linea=`expr substr $Dvar 1 $Dlargo_linea`
Dletra=c
Dlinea_sed=$Dnumero_linea$Dletra
sed -i "$Dlinea_sed $var1" /home/orangepi/MMDVMHost/MMDVM.ini_copia3

#RXFrequency
var=`grep -n -m 1 '\<RXFrequency\>' /home/orangepi/Downloads/MMDVM.ini_copia3`
var1=`grep -m 1 '\<RXFrequency\>' /home/orangepi/Downloads/MMDVM.ini_copia3`
buscar=":"
largo_linea=`expr index $var $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea=`expr substr $var 1 $largo_linea`
Xvar=`grep -n -m 1 '\<RXFrequency\>' /home/orangepi/MMDVMHost/MMDVM.ini_copia3`
buscar=":"
Xlargo_linea=`expr index $Xvar $buscar`
Xlargo_linea=`expr $Xlargo_linea - 1`
Xnumero_linea=`expr substr $Xvar 1 $Xlargo_linea`
Xletra=c
Xlinea_sed=$Xnumero_linea$Xletra
sed -i "$Xlinea_sed $var1" /home/orangepi/MMDVMHost/MMDVM.ini_copia3

#TXFrequency
var=`grep -n -m 1 '\<TXFrequency\>' /home/orangepi/Downloads/MMDVM.ini_copia3`
var1=`grep -m 1 '\<TXFrequency\>' /home/orangepi/Downloads/MMDVM.ini_copia3`
buscar=":"
largo_linea=`expr index $var $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea=`expr substr $var 1 $largo_linea`
Tvar=`grep -n -m 1 '\<TXFrequency\>' /home/orangepi/MMDVMHost/MMDVM.ini_copia3`
buscar=":"
Tlargo_linea=`expr index $Tvar $buscar`
Tlargo_linea=`expr $Tlargo_linea - 1`
Tnumero_linea=`expr substr $Tvar 1 $Tlargo_linea`
Tletra=c
Tlinea_sed=$Tnumero_linea$Tletra
sed -i "$Tlinea_sed $var1" /home/orangepi/MMDVMHost/MMDVM.ini_copia3

#Latitude
var=`grep -n -m 1 '\<Latitude\>' /home/orangepi/Downloads/MMDVM.ini_copia3`
var1=`grep -m 1 '\<Latitude\>' /home/orangepi/Downloads/MMDVM.ini_copia3`
buscar=":"
largo_linea=`expr index $var $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea=`expr substr $var 1 $largo_linea`
Lvar=`grep -n -m 1 '\<Latitude\>' /home/orangepi/MMDVMHost/MMDVM.ini_copia3`
buscar=":"
Llargo_linea=`expr index $Lvar $buscar`
Llargo_linea=`expr $Llargo_linea - 1`
Lnumero_linea=`expr substr $Lvar 1 $Llargo_linea`
Lletra=c
Llinea_sed=$Lnumero_linea$Lletra
sed -i "$Llinea_sed $var1" /home/orangepi/MMDVMHost/MMDVM.ini_copia3

#Longitude
var=`grep -n -m 1 '\<Longitude\>' /home/orangepi/Downloads/MMDVM.ini_copia3`
var1=`grep -m 1 '\<Longitude\>' /home/orangepi/Downloads/MMDVM.ini_copia3`
buscar=":"
largo_linea=`expr index $var $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea=`expr substr $var 1 $largo_linea`
LGvar=`grep -n -m 1 '\<Longitude\>' /home/orangepi/MMDVMHost/MMDVM.ini_copia3`
buscar=":"
LGlargo_linea=`expr index $LGvar $buscar`
LGlargo_linea=`expr $LGlargo_linea - 1`
LGnumero_linea=`expr substr $LGvar 1 $LGlargo_linea`
LGletra=c
LGlinea_sed=$LGnumero_linea$LGletra
sed -i "$LGlinea_sed $var1" /home/orangepi/MMDVMHost/MMDVM.ini_copia3

#Location
var=`grep -n -m 1 '\<Location\>' /home/orangepi/Downloads/MMDVM.ini_copia3`
var1=`grep -m 1 '\<Location\>' /home/orangepi/Downloads/MMDVM.ini_copia3`
buscar=":"
largo_linea=`expr index $var $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea=`expr substr $var 1 $largo_linea`
LOvar=`grep -n -m 1 '\<Location\>' /home/orangepi/MMDVMHost/MMDVM.ini_copia3`
buscar=":"
LOlargo_linea=`expr index $LOvar $buscar`
LOlargo_linea=`expr $LOlargo_linea - 1`
LOnumero_linea=`expr substr $LOvar 1 $LOlargo_linea`
LOletra=c
LOlinea_sed=$LOnumero_linea$LOletra
sed -i "$LOlinea_sed $var1" /home/orangepi/MMDVMHost/MMDVM.ini_copia3

#URL
var=`grep -n -m 1 '\<URL\>' /home/orangepi/Downloads/MMDVM.ini_copia3`
var1=`grep -m 1 '\<URL\>' /home/orangepi/Downloads/MMDVM.ini_copia3`
buscar=":"
largo_linea=`expr index $var $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea_url=`expr substr $var 1 $largo_linea`
Uvar=`grep -n -m 1 '\<URL\>' /home/orangepi/MMDVMHost/MMDVM.ini_copia3`
Ubuscar=":"
Ulargo_linea=`expr index $Uvar $buscar`
Ulargo_linea=`expr $Ulargo_linea - 1`
Unumero_linea_url=`expr substr $Uvar 1 $largo_linea`
Uletra=c
Ulinea_sed=$Unumero_linea_url$Uletra
sed -i "$Ulinea_sed $var1" /home/orangepi/MMDVMHost/MMDVM.ini_copia3

#Baliza 
var1=`grep -n -m 1 "\[CW Id\]" /home/orangepi/Downloads/MMDVM.ini_copia3`
var2=`echo "$var1" | tr -d '[[:space:]]'`
buscar=":"
largo_linea=`expr index $var2 $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea=`expr substr $var2 1 $largo_linea`
numero_linea=`expr $numero_linea + 1`
CWvar1=`grep -n -m 1 "\[CW Id\]" /home/orangepi/MMDVMHost/MMDVM.ini_copia3`
CWvar2=`echo "$CWvar1" | tr -d '[[:space:]]'`
buscar=":"
CWlargo_linea=`expr index $CWvar2 $buscar`
CWlargo_linea=`expr $CWlargo_linea - 1`
CWnumero_linea=`expr substr $CWvar2 1 $CWlargo_linea`
CWnumero_linea=`expr $CWnumero_linea + 1`
CWCW=$(awk "NR==$CWnumero_linea" /home/orangepi/Downloads/MMDVM.ini_copia3)
CWletra=c
CWlinea_sed=$CWnumero_linea$CWletra
sed -i "$CWlinea_sed $CWCW" /home/orangepi/MMDVMHost/MMDVM.ini_copia3

#RXLevel
var=`grep -n -m 1 '\<RXLevel\>' /home/orangepi/Downloads/MMDVM.ini_copia3`
var1=`grep -m 1 '\<RXLevel\>' /home/orangepi/Downloads/MMDVM.ini_copia3`
buscar=":"
largo_linea=`expr index $var $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea=`expr substr $var 1 $largo_linea`
RLvar=`grep -n -m 1 '\<RXLevel\>' /home/orangepi/MMDVMHost/MMDVM.ini_copia3`
buscar=":"
RLlargo_linea=`expr index $RLvar $buscar`
RLlargo_linea=`expr $RLlargo_linea - 1`
RLnumero_linea=`expr substr $RLvar 1 $RLlargo_linea`
RLletra=c
RLlinea_sed=$RLnumero_linea$RLletra
sed -i "$RLlinea_sed $var1" /home/orangepi/MMDVMHost/MMDVM.ini_copia3

#TXLevel
var=`grep -n -m 1 '\<TXLevel\>' /home/orangepi/Downloads/MMDVM.ini_copia3`
var1=`grep -m 1 '\<TXLevel\>' /home/orangepi/Downloads/MMDVM.ini_copia3`
buscar=":"
largo_linea=`expr index $var $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea=`expr substr $var 1 $largo_linea`
TLvar=`grep -n -m 1 '\<TXLevel\>' /home/orangepi/MMDVMHost/MMDVM.ini_copia3`
buscar=":"
TLlargo_linea=`expr index $TLvar $buscar`
TLlargo_linea=`expr $TLlargo_linea - 1`
TLnumero_linea=`expr substr $TLvar 1 $TLlargo_linea`
TLletra=c
TLlinea_sed=$TLnumero_linea$TLletra
sed -i "$TLlinea_sed $var1" /home/orangepi/MMDVMHost/MMDVM.ini_copia3

#Module
var=`grep -n -m 1 '\<Module\>' /home/orangepi/Downloads/MMDVM.ini_copia3`
var1=`grep -m 1 '\<Module\>' /home/orangepi/Downloads/MMDVM.ini_copia3`
buscar=":"
largo_linea=`expr index $var $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea=`expr substr $var 1 $largo_linea`
MOvar=`grep -n -m 1 '\<Module\>' /home/orangepi/MMDVMHost/MMDVM.ini_copia3`
buscar=":"
MOlargo_linea=`expr index $MOvar $buscar`
MOlargo_linea=`expr $MOlargo_linea - 1`
MOnumero_linea=`expr substr $MOvar 1 $MOlargo_linea`
MOletra=c
MOlinea_sed=$MOnumero_linea$MOletra
sed -i "$MOlinea_sed $var1" /home/orangepi/MMDVMHost/MMDVM.ini_copia3

#Txinvert
var=`grep -n -m 1 '\<TXInvert\>' /home/orangepi/Downloads/MMDVM.ini_copia3`
var1=`grep -m 1 '\<TXInvert\>' /home/orangepi/Downloads/MMDVM.ini_copia3`
buscar=":"
largo_linea=`expr index $var $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea=`expr substr $var 1 $largo_linea`
TIvar=`grep -n -m 1 '\<TXInvert\>' /home/orangepi/MMDVMHost/MMDVM.ini_copia3`
buscar=":"
TIlargo_linea=`expr index $TIvar $buscar`
TIlargo_linea=`expr $TIlargo_linea - 1`
TInumero_linea=`expr substr $TIvar 1 $TIlargo_linea`
TIletra=c
TIlinea_sed=$TInumero_linea$TIletra
sed -i "$TIlinea_sed $var1" /home/orangepi/MMDVMHost/MMDVM.ini_copia3

#Modem capturado de la linea txinvert -1
numero_linea_MODEM=`expr $numero_linea - 1` # Downloads
MOnumero_linea_MODEM=`expr $TInumero_linea - 1` # MMDVMHost
modem=$(awk "NR==$numero_linea_MODEM" /home/orangepi/Downloads/MMDVM.ini_copia3)
TIletra=c
TIlinea_sed=$MOnumero_linea_MODEM$TIletra
sed -i "$TIlinea_sed $modem" /home/orangepi/MMDVMHost/MMDVM.ini_copia3

#Address
var=`grep -n -m 1 '\<Address\>' /home/orangepi/Downloads/MMDVM.ini_copia3`
var1=`grep -m 1 '\<Address\>' /home/orangepi/Downloads/MMDVM.ini_copia3`
buscar=":"
largo_linea=`expr index $var $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea_Address=`expr substr $var 1 $largo_linea`
ADvar=`grep -n -m 1 '\<Address\>' /home/orangepi/MMDVMHost/MMDVM.ini_copia3`
buscar=":"
ADlargo_linea=`expr index $ADvar $buscar`
ADlargo_linea=`expr $ADlargo_linea - 1`
ADnumero_linea_Address=`expr substr $ADvar 1 $ADlargo_linea`
ADletra=c
ADlinea_sed=$ADnumero_linea_Address$ADletra
sed -i "$ADlinea_sed $var1" /home/orangepi/MMDVMHost/MMDVM.ini_copia3

#Port captura de la linea Address +1
numero_linea_Address=`expr $numero_linea_Address + 1` # Downloads
ADnumero_linea_Address=`expr $ADnumero_linea_Address + 1` # MMDVMHost
port=$(awk "NR==$numero_linea_Address" /home/orangepi/Downloads/MMDVM.ini_copia3)
ADletra=c
ADlinea_sed=$ADnumero_linea_Address$ADletra
sed -i "$ADlinea_sed $port" /home/orangepi/MMDVMHost/MMDVM.ini_copia3

#Password
var=`grep -n -m 1 '\<Password\>' /home/orangepi/Downloads/MMDVM.ini_copia3`
var1=`grep -m 1 '\<Password\>' /home/orangepi/Downloads/MMDVM.ini_copia3`
buscar=":"
largo_linea=`expr index $var $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea_password=`expr substr $var 1 $largo_linea`
PWvar=`grep -n -m 1 '\<Password\>' /home/orangepi/MMDVMHost/MMDVM.ini_copia3`
buscar=":"
PWlargo_linea=`expr index $PWvar $buscar`
PWlargo_linea=`expr $PWlargo_linea - 1`
PWnumero_linea_password=`expr substr $PWvar 1 $PWlargo_linea`
PWletra=c
PWlinea_sed=$PWnumero_linea_password$PWletra
sed -i "$PWlinea_sed $var1" /home/orangepi/MMDVMHost/MMDVM.ini_copia3

#Options linea password  +1
numero_linea_password=`expr $numero_linea_password + 1` # Downloads
PWnumero_linea_password=`expr $PWnumero_linea_password + 1` # MMDVMHost
option=$(awk "NR==$numero_linea_password" /home/orangepi/Downloads/MMDVM.ini_copia3)
PWletra=c
PWlinea_sed=$PWnumero_linea_password$PWletra
sed -i "$PWlinea_sed $option" /home/orangepi/MMDVMHost/MMDVM.ini_copia3

#ScreenLayout
var=`grep -n -m 1 '\<ScreenLayout\>' /home/orangepi/Downloads/MMDVM.ini_copia3`
var1=`grep -m 1 '\<ScreenLayout\>' /home/orangepi/Downloads/MMDVM.ini_copia3`
buscar=":"
largo_linea=`expr index $var $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea=`expr substr $var 1 $largo_linea`
SCvar=`grep -n -m 1 '\<ScreenLayout\>' /home/orangepi/MMDVMHost/MMDVM.ini_copia3`
buscar=":"
SClargo_linea=`expr index $SCvar $buscar`
SClargo_linea=`expr $SClargo_linea - 1`
SCnumero_linea=`expr substr $SCvar 1 $SClargo_linea`
SCletra=c
SClinea_sed=$SCnumero_linea$SCletra
sed -i "$SClinea_sed $var1" /home/orangepi/MMDVMHost/MMDVM.ini_copia3

#Brightness
var=`grep -n -m 1 '\<Brightness\>' /home/orangepi/Downloads/MMDVM.ini_copia3`
var1=`grep -m 1 '\<Brightness\>' /home/orangepi/Downloads/MMDVM.ini_copia3`
buscar=":"
largo_linea=`expr index $var $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea=`expr substr $var 1 $largo_linea`
BRvar=`grep -n -m 1 '\<Brightness\>' /home/orangepi/MMDVMHost/MMDVM.ini_copia3`
buscar=":"
BRlargo_linea=`expr index $BRvar $buscar`
BRlargo_linea=`expr $BRlargo_linea - 1`
BRnumero_linea=`expr substr $BRvar 1 $BRlargo_linea`
BRletra=c
BRlinea_sed=$BRnumero_linea$BRletra
sed -i "$BRlinea_sed $var1" /home/orangepi/MMDVMHost/MMDVM.ini_copia3

#Slot1
var=`grep -n -m 1 '\<Slot1\>' /home/orangepi/Downloads/MMDVM.ini_copia3`
var1=`grep -m 1 '\<Slot1\>' /home/orangepi/Downloads/MMDVM.ini_copia3`
buscar=":"
largo_linea=`expr index $var $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea=`expr substr $var 1 $largo_linea`
SLvar=`grep -n -m 1 '\<Slot1\>' /home/orangepi/MMDVMHost/MMDVM.ini_copia3`
buscar=":"
SLlargo_linea=`expr index $SLvar $buscar`
SLlargo_linea=`expr $SLlargo_linea - 1`
SLnumero_linea=`expr substr $SLvar 1 $SLlargo_linea`
SLletra=c
SLlinea_sed=$SLnumero_linea$SLletra
sed -i "$SLlinea_sed $var1" /home/orangepi/MMDVMHost/MMDVM.ini_copia3

#DisplayLevel
var=`grep -n -m 1 '\<DisplayLevel\>' /home/orangepi/Downloads/MMDVM.ini_copia3`
var1=`grep -m 1 '\<DisplayLevel\>' /home/orangepi/Downloads/MMDVM.ini_copia3`
buscar=":"
largo_linea=`expr index $var $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea=`expr substr $var 1 $largo_linea`
DIvar=`grep -n -m 1 '\<DisplayLevel\>' /home/orangepi/MMDVMHost/MMDVM.ini_copia3`
buscar=":"
DIlargo_linea=`expr index $DIvar $buscar`
DIlargo_linea=`expr $DIlargo_linea - 1`
DInumero_linea=`expr substr $DIvar 1 $DIlargo_linea`
DIletra=c
DIlinea_sed=$DInumero_linea$DIletra
sed -i "$DIlinea_sed $var1" /home/orangepi/MMDVMHost/MMDVM.ini_copia3

#TXHang
var=`grep -n -m 1 '\<TXHang\>' /home/orangepi/Downloads/MMDVM.ini_copia3`
var1=`grep -m 1 '\<TXHang\>' /home/orangepi/Downloads/MMDVM.ini_copia3`
buscar=":"
largo_linea=`expr index $var $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea=`expr substr $var 1 $largo_linea`
THvar=`grep -n -m 1 '\<TXHang\>' /home/orangepi/MMDVMHost/MMDVM.ini_copia3`
buscar=":"
THlargo_linea=`expr index $THvar $buscar`
THlargo_linea=`expr $THlargo_linea - 1`
THnumero_linea=`expr substr $THvar 1 $THlargo_linea`
THletra=c
THlinea_sed=$THnumero_linea$THletra
sed -i "$THlinea_sed $var1" /home/orangepi/MMDVMHost/MMDVM.ini_copia3

#D-Star
var=`grep -n -m 1 "\[D-Star\]" /home/orangepi/Downloads/MMDVM.ini_copia3` 
var1=`grep -m 1 "\[D-Star\]" /home/orangepi/Downloads/MMDVM.ini_copia3`
buscar=":"
largo_linea=`expr index $var $buscar` 
largo_linea=`expr $largo_linea - 1` 
numero_linea=`expr substr $var 1 $largo_linea` 
numero_linea_dstar=`expr $numero_linea + 1` 
DSvar=`grep -n -m 1 "\[D-Star\]" /home/orangepi/MMDVMHost/MMDVM.ini_copia3` 
DSvar1=`grep -m 1 "\[D-Star\]" /home/orangepi/MMDVMHost/MMDVM.ini_copia3`
buscar=":"
DSlargo_linea=`expr index $DSvar $buscar` 
DSlargo_linea=`expr $DSlargo_linea - 1` 
DSnumero_linea=`expr substr $DSvar 1 $DSlargo_linea` 
DSnumero_linea_dstar=`expr $DSnumero_linea + 1`
DSDS=$(awk "NR==$numero_linea_dstar" /home/orangepi/Downloads/MMDVM.ini_copia3) 
DSletrac=c
DSlinea_sed=$DSnumero_linea_dstar$DSletrac
sed -i "$DSlinea_sed $DSDS" /home/orangepi/MMDVMHost/MMDVM.ini_copia3

#DMR
var=`grep -n -m 1 "\[DMR\]" /home/orangepi/Downloads/MMDVM.ini_copia3` 
var1=`grep -m 1 "\[DMR\]" /home/orangepi/Downloads/MMDVM.ini_copia3`
buscar=":"
largo_linea=`expr index $var $buscar` 
largo_linea=`expr $largo_linea - 1` 
numero_linea=`expr substr $var 1 $largo_linea` 
numero_linea_dmr=`expr $numero_linea + 1` 
DMvar=`grep -n "\[DMR\]" /home/orangepi/MMDVMHost/MMDVM.ini_copia3` 
DMvar1=`grep -n -m 1 "\[DMR\]" /home/orangepi/MMDVMHost/MMDVM.ini_copia3`
buscar=":"
DMlargo_linea=`expr index $DMvar $buscar` 
DMlargo_linea=`expr $DMlargo_linea - 1` 
DMnumero_linea=`expr substr $DMvar 1 $DMlargo_linea` 
DMnumero_linea_dmr=`expr $DMnumero_linea + 1` 
DMDM=$(awk "NR==$numero_linea_dmr" /home/orangepi/Downloads/MMDVM.ini_copia3)
DMletrac=c
DMlinea_sed=$DMnumero_linea_dmr$DMletrac 
sed -i "$DMlinea_sed $DMDM" /home/orangepi/MMDVMHost/MMDVM.ini_copia3

#P25
var=`grep -n -m 1 "\[P25\]" /home/orangepi/Downloads/MMDVM.ini_copia3` 
var1=`grep -m 1 "\[P25\]" /home/orangepi/Downloads/MMDVM.ini_copia3`
buscar=":"
largo_linea=`expr index $var $buscar` 
largo_linea=`expr $largo_linea - 1` 
numero_linea=`expr substr $var 1 $largo_linea` 
numero_linea_p25=`expr $numero_linea + 1` 
P2var=`grep -n -m 1 "\[P25\]" /home/orangepi/MMDVMHost/MMDVM.ini_copia3` 
P2var1=`grep -n "\[P25\]" /home/orangepi/MMDVMHost/MMDVM.ini_copia3`
buscar=":"
P2largo_linea=`expr index $P2var $buscar` 
P2largo_linea=`expr $P2largo_linea - 1` 
P2numero_linea=`expr substr $P2var 1 $P2largo_linea` 
P2numero_linea_p25=`expr $P2numero_linea + 1` 
P2P2=$(awk "NR==$numero_linea_p25" /home/orangepi/Downloads/MMDVM.ini_copia3)
P2letrac=c
P2linea_sed=$P2numero_linea_p25$P2letrac
sed -i "$P2linea_sed $P2P2" /home/orangepi/MMDVMHost/MMDVM.ini_copia3

#FUSION
var1=`grep -n -m 1 "\[System Fusion\]" /home/orangepi/Downloads/MMDVM.ini_copia3`
var2=`echo "$var1" | tr -d '[[:space:]]'`
buscar=":"
largo_linea=`expr index $var2 $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea=`expr substr $var2 1 $largo_linea`
numero_linea=`expr $numero_linea + 1`
CWvar1=`grep -n -m 1 "\[System Fusion\]" /home/orangepi/MMDVMHost/MMDVM.ini_copia3`
CWvar2=`echo "$CWvar1" | tr -d '[[:space:]]'`
buscar=":"
CWlargo_linea=`expr index $CWvar2 $buscar`
CWlargo_linea=`expr $CWlargo_linea - 1`
CWnumero_linea=`expr substr $CWvar2 1 $CWlargo_linea`
CWnumero_linea=`expr $CWnumero_linea + 1`
CWCW=$(awk "NR==$CWnumero_linea" /home/orangepi/Downloads/MMDVM.ini_copia3)
CWletra=c
CWlinea_sed=$CWnumero_linea$CWletra
sed -i "$CWlinea_sed $CWCW" /home/orangepi/MMDVMHost/MMDVM.ini_copia3

#Nextion
var=`grep -n -m 1 "\[Nextion\]" /home/orangepi/Downloads/MMDVM.ini_copia3` 
var1=`grep -m 1 "\[Nextion\]" /home/orangepi/Downloads/MMDVM.ini_copia3`
buscar=":"
largo_linea=`expr index $var $buscar` 
largo_linea=`expr $largo_linea - 1` 
numero_linea=`expr substr $var 1 $largo_linea` 
numero_linea_p25=`expr $numero_linea + 2` 
P2var=`grep -n -m 1 "\[Nextion\]" /home/orangepi/MMDVMHost/MMDVM.ini_copia3` 
P2var1=`grep -n "\[Nextion\]" /home/orangepi/MMDVMHost/MMDVM.ini_copia3`
buscar=":"
P2largo_linea=`expr index $P2var $buscar` 
P2largo_linea=`expr $P2largo_linea - 1` 
P2numero_linea=`expr substr $P2var 1 $P2largo_linea` 
P2numero_linea_p25=`expr $P2numero_linea + 2` 
P2P2=$(awk "NR==$numero_linea_p25" /home/orangepi/Downloads/MMDVM.ini_copia3)
P2letrac=c
P2linea_sed=$P2numero_linea_p25$P2letrac
sed -i "$P2linea_sed $P2P2" /home/orangepi/MMDVMHost/MMDVM.ini_copia3
#======================= MMDVMBM.ini   ============================
#******************************************************************
# Callsign 
var=`grep -n -m 1 '\<Callsign\>' /home/orangepi/Downloads/MMDVMBM.ini` # 2:Callsign=EA3EIZ
var1=`grep -m 1 '\<Callsign\>' /home/orangepi/Downloads/MMDVMBM.ini` # Callsign=EA3EIZ
buscar=":"
largo_linea=`expr index $var $buscar` #comprueba el largo incluyendo los dos puntos (:)
largo_linea=`expr $largo_linea - 1` #comprueba el largo quitando los dos puntos (:)
numero_linea=`expr substr $var 1 $largo_linea` # recoge numero linea Downloads
Hvar=`grep -n -m 1 '\<Callsign\>' /home/orangepi/MMDVMHost/MMDVMBM.ini` # 2:Callsign=EA3EIZ
buscar=":"
Hlargo_linea=`expr index $Hvar $buscar` 
Hlargo_linea=`expr $Hlargo_linea - 1` 
Hnumero_linea=`expr substr $Hvar 1 $Hlargo_linea` # recoge numero linea MMDXVMHost
Hletra=c
Hlinea_sed=$Hnumero_linea$Hletra
sed -i "$Hlinea_sed $var1" /home/orangepi/MMDVMHost/MMDVMBM.ini

#Id capturado de la linea 3
Id=$(awk "NR==3" /home/orangepi/Downloads/MMDVMBM.ini)
sed -i "3c $Id" /home/orangepi/MMDVMHost/MMDVMBM.ini

#Timeout capturado de la linea 4
timeou=$(awk "NR==4" /home/orangepi/Downloads/MMDVMBM.ini)
sed -i "4c $timeou" /home/orangepi/MMDVMHost/MMDVMBM.ini

#Duplex
var=`grep -n -m 1 '\<Duplex\>' /home/orangepi/Downloads/MMDVMBM.ini`
var1=`grep -m 1 '\<Duplex\>' /home/orangepi/Downloads/MMDVMBM.ini`
buscar=":"
largo_linea=`expr index $var $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea=`expr substr $var 1 $largo_linea`
Dvar=`grep -n -m 1 '\<Duplex\>' /home/orangepi/MMDVMHost/MMDVMBM.ini`
buscar=":"
Dlargo_linea=`expr index $Dvar $buscar`
Dlargo_linea=`expr $Dlargo_linea - 1`
Dnumero_linea=`expr substr $Dvar 1 $Dlargo_linea`
Dletra=c
Dlinea_sed=$Dnumero_linea$Dletra
sed -i "$Dlinea_sed $var1" /home/orangepi/MMDVMHost/MMDVMBM.ini

#RFModeHang
var=`grep -n -m 1 '\<RFModeHang\>' /home/orangepi/Downloads/MMDVMBM.ini`
var1=`grep -m 1 '\<RFModeHang\>' /home/orangepi/Downloads/MMDVMBM.ini`
buscar=":"
largo_linea=`expr index $var $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea=`expr substr $var 1 $largo_linea`
Rvar=`grep -n -m 1 '\<RFModeHang\>' /home/orangepi/MMDVMHost/MMDVMBM.ini`
buscar=":"
Rlargo_linea=`expr index $Rvar $buscar`
Rlargo_linea=`expr $Rlargo_linea - 1`
Rnumero_linea=`expr substr $Rvar 1 $Rlargo_linea`
Rletra=c
Rlinea_sed=$Rnumero_linea$Rletra
sed -i "$Rlinea_sed $var1" /home/orangepi/MMDVMHost/MMDVMBM.ini

#Display
var=`grep -n -m 1 '\<Display\>' /home/orangepi/Downloads/MMDVMBM.ini`
var1=`grep -m 1 '\<Display\>' /home/orangepi/Downloads/MMDVMBM.ini`
buscar=":"
largo_linea=`expr index $var $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea=`expr substr $var 1 $largo_linea`
Dvar=`grep -n -m 1 '\<Display\>' /home/orangepi/MMDVMHost/MMDVMBM.ini`
buscar=":"
Dlargo_linea=`expr index $Dvar $buscar`
Dlargo_linea=`expr $Dlargo_linea - 1`
Dnumero_linea=`expr substr $Dvar 1 $Dlargo_linea`
Dletra=c
Dlinea_sed=$Dnumero_linea$Dletra
sed -i "$Dlinea_sed $var1" /home/orangepi/MMDVMHost/MMDVMBM.ini

#RXFrequency
var=`grep -n -m 1 '\<RXFrequency\>' /home/orangepi/Downloads/MMDVMBM.ini`
var1=`grep -m 1 '\<RXFrequency\>' /home/orangepi/Downloads/MMDVMBM.ini`
buscar=":"
largo_linea=`expr index $var $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea=`expr substr $var 1 $largo_linea`
Xvar=`grep -n -m 1 '\<RXFrequency\>' /home/orangepi/MMDVMHost/MMDVMBM.ini`
buscar=":"
Xlargo_linea=`expr index $Xvar $buscar`
Xlargo_linea=`expr $Xlargo_linea - 1`
Xnumero_linea=`expr substr $Xvar 1 $Xlargo_linea`
Xletra=c
Xlinea_sed=$Xnumero_linea$Xletra
sed -i "$Xlinea_sed $var1" /home/orangepi/MMDVMHost/MMDVMBM.ini

#TXFrequency
var=`grep -n -m 1 '\<TXFrequency\>' /home/orangepi/Downloads/MMDVMBM.ini`
var1=`grep -m 1 '\<TXFrequency\>' /home/orangepi/Downloads/MMDVMBM.ini`
buscar=":"
largo_linea=`expr index $var $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea=`expr substr $var 1 $largo_linea`
Tvar=`grep -n -m 1 '\<TXFrequency\>' /home/orangepi/MMDVMHost/MMDVMBM.ini`
buscar=":"
Tlargo_linea=`expr index $Tvar $buscar`
Tlargo_linea=`expr $Tlargo_linea - 1`
Tnumero_linea=`expr substr $Tvar 1 $Tlargo_linea`
Tletra=c
Tlinea_sed=$Tnumero_linea$Tletra
sed -i "$Tlinea_sed $var1" /home/orangepi/MMDVMHost/MMDVMBM.ini

#Latitude
var=`grep -n -m 1 '\<Latitude\>' /home/orangepi/Downloads/MMDVMBM.ini`
var1=`grep -m 1 '\<Latitude\>' /home/orangepi/Downloads/MMDVMBM.ini`
buscar=":"
largo_linea=`expr index $var $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea=`expr substr $var 1 $largo_linea`
Lvar=`grep -n -m 1 '\<Latitude\>' /home/orangepi/MMDVMHost/MMDVMBM.ini`
buscar=":"
Llargo_linea=`expr index $Lvar $buscar`
Llargo_linea=`expr $Llargo_linea - 1`
Lnumero_linea=`expr substr $Lvar 1 $Llargo_linea`
Lletra=c
Llinea_sed=$Lnumero_linea$Lletra
sed -i "$Llinea_sed $var1" /home/orangepi/MMDVMHost/MMDVMBM.ini

#Longitude
var=`grep -n -m 1 '\<Longitude\>' /home/orangepi/Downloads/MMDVMBM.ini`
var1=`grep -m 1 '\<Longitude\>' /home/orangepi/Downloads/MMDVMBM.ini`
buscar=":"
largo_linea=`expr index $var $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea=`expr substr $var 1 $largo_linea`
LGvar=`grep -n -m 1 '\<Longitude\>' /home/orangepi/MMDVMHost/MMDVMBM.ini`
buscar=":"
LGlargo_linea=`expr index $LGvar $buscar`
LGlargo_linea=`expr $LGlargo_linea - 1`
LGnumero_linea=`expr substr $LGvar 1 $LGlargo_linea`
LGletra=c
LGlinea_sed=$LGnumero_linea$LGletra
sed -i "$LGlinea_sed $var1" /home/orangepi/MMDVMHost/MMDVMBM.ini

#Location
var=`grep -n -m 1 '\<Location\>' /home/orangepi/Downloads/MMDVMBM.ini`
var1=`grep -m 1 '\<Location\>' /home/orangepi/Downloads/MMDVMBM.ini`
buscar=":"
largo_linea=`expr index $var $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea=`expr substr $var 1 $largo_linea`
LOvar=`grep -n -m 1 '\<Location\>' /home/orangepi/MMDVMHost/MMDVMBM.ini`
buscar=":"
LOlargo_linea=`expr index $LOvar $buscar`
LOlargo_linea=`expr $LOlargo_linea - 1`
LOnumero_linea=`expr substr $LOvar 1 $LOlargo_linea`
LOletra=c
LOlinea_sed=$LOnumero_linea$LOletra
sed -i "$LOlinea_sed $var1" /home/orangepi/MMDVMHost/MMDVMBM.ini

#URL
var=`grep -n -m 1 '\<URL\>' /home/orangepi/Downloads/MMDVMBM.ini`
var1=`grep -m 1 '\<URL\>' /home/orangepi/Downloads/MMDVMBM.ini`
buscar=":"
largo_linea=`expr index $var $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea_url=`expr substr $var 1 $largo_linea`
Uvar=`grep -n -m 1 '\<URL\>' /home/orangepi/MMDVMHost/MMDVMBM.ini`
Ubuscar=":"
Ulargo_linea=`expr index $Uvar $buscar`
Ulargo_linea=`expr $Ulargo_linea - 1`
Unumero_linea_url=`expr substr $Uvar 1 $largo_linea`
Uletra=c
Ulinea_sed=$Unumero_linea_url$Uletra
sed -i "$Ulinea_sed $var1" /home/orangepi/MMDVMHost/MMDVMBM.ini

#Baliza 
var1=`grep -n -m 1 "\[CW Id\]" /home/orangepi/Downloads/MMDVMBM.ini`
var2=`echo "$var1" | tr -d '[[:space:]]'`
buscar=":"
largo_linea=`expr index $var2 $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea=`expr substr $var2 1 $largo_linea`
numero_linea=`expr $numero_linea + 1`
CWvar1=`grep -n -m 1 "\[CW Id\]" /home/orangepi/MMDVMHost/MMDVMBM.ini`
CWvar2=`echo "$CWvar1" | tr -d '[[:space:]]'`
buscar=":"
CWlargo_linea=`expr index $CWvar2 $buscar`
CWlargo_linea=`expr $CWlargo_linea - 1`
CWnumero_linea=`expr substr $CWvar2 1 $CWlargo_linea`
CWnumero_linea=`expr $CWnumero_linea + 1`
CWCW=$(awk "NR==$CWnumero_linea" /home/orangepi/Downloads/MMDVMBM.ini)
CWletra=c
CWlinea_sed=$CWnumero_linea$CWletra
sed -i "$CWlinea_sed $CWCW" /home/orangepi/MMDVMHost/MMDVMBM.ini

#RXLevel
var=`grep -n -m 1 '\<RXLevel\>' /home/orangepi/Downloads/MMDVMBM.ini`
var1=`grep -m 1 '\<RXLevel\>' /home/orangepi/Downloads/MMDVMBM.ini`
buscar=":"
largo_linea=`expr index $var $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea=`expr substr $var 1 $largo_linea`
RLvar=`grep -n -m 1 '\<RXLevel\>' /home/orangepi/MMDVMHost/MMDVMBM.ini`
buscar=":"
RLlargo_linea=`expr index $RLvar $buscar`
RLlargo_linea=`expr $RLlargo_linea - 1`
RLnumero_linea=`expr substr $RLvar 1 $RLlargo_linea`
RLletra=c
RLlinea_sed=$RLnumero_linea$RLletra
sed -i "$RLlinea_sed $var1" /home/orangepi/MMDVMHost/MMDVMBM.ini

#TXLevel
var=`grep -n -m 1 '\<TXLevel\>' /home/orangepi/Downloads/MMDVMBM.ini`
var1=`grep -m 1 '\<TXLevel\>' /home/orangepi/Downloads/MMDVMBM.ini`
buscar=":"
largo_linea=`expr index $var $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea=`expr substr $var 1 $largo_linea`
TLvar=`grep -n -m 1 '\<TXLevel\>' /home/orangepi/MMDVMHost/MMDVMBM.ini`
buscar=":"
TLlargo_linea=`expr index $TLvar $buscar`
TLlargo_linea=`expr $TLlargo_linea - 1`
TLnumero_linea=`expr substr $TLvar 1 $TLlargo_linea`
TLletra=c
TLlinea_sed=$TLnumero_linea$TLletra
sed -i "$TLlinea_sed $var1" /home/orangepi/MMDVMHost/MMDVMBM.ini

#Module
var=`grep -n -m 1 '\<Module\>' /home/orangepi/Downloads/MMDVMBM.ini`
var1=`grep -m 1 '\<Module\>' /home/orangepi/Downloads/MMDVMBM.ini`
buscar=":"
largo_linea=`expr index $var $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea=`expr substr $var 1 $largo_linea`
MOvar=`grep -n -m 1 '\<Module\>' /home/orangepi/MMDVMHost/MMDVMBM.ini`
buscar=":"
MOlargo_linea=`expr index $MOvar $buscar`
MOlargo_linea=`expr $MOlargo_linea - 1`
MOnumero_linea=`expr substr $MOvar 1 $MOlargo_linea`
MOletra=c
MOlinea_sed=$MOnumero_linea$MOletra
sed -i "$MOlinea_sed $var1" /home/orangepi/MMDVMHost/MMDVMBM.ini

#Txinvert
var=`grep -n -m 1 '\<TXInvert\>' /home/orangepi/Downloads/MMDVMBM.ini`
var1=`grep -m 1 '\<TXInvert\>' /home/orangepi/Downloads/MMDVMBM.ini`
buscar=":"
largo_linea=`expr index $var $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea=`expr substr $var 1 $largo_linea`
TIvar=`grep -n -m 1 '\<TXInvert\>' /home/orangepi/MMDVMHost/MMDVMBM.ini`
buscar=":"
TIlargo_linea=`expr index $TIvar $buscar`
TIlargo_linea=`expr $TIlargo_linea - 1`
TInumero_linea=`expr substr $TIvar 1 $TIlargo_linea`
TIletra=c
TIlinea_sed=$TInumero_linea$TIletra
sed -i "$TIlinea_sed $var1" /home/orangepi/MMDVMHost/MMDVMBM.ini

#Modem capturado de la linea txinvert -1
numero_linea_MODEM=`expr $numero_linea - 1` # Downloads
MOnumero_linea_MODEM=`expr $TInumero_linea - 1` # MMDVMHost
modem=$(awk "NR==$numero_linea_MODEM" /home/orangepi/Downloads/MMDVMBM.ini)
TIletra=c
TIlinea_sed=$MOnumero_linea_MODEM$TIletra
sed -i "$TIlinea_sed $modem" /home/orangepi/MMDVMHost/MMDVMBM.ini

#Address
var=`grep -n -m 1 '\<Address\>' /home/orangepi/Downloads/MMDVMBM.ini`
var1=`grep -m 1 '\<Address\>' /home/orangepi/Downloads/MMDVMBM.ini`
buscar=":"
largo_linea=`expr index $var $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea_Address=`expr substr $var 1 $largo_linea`
ADvar=`grep -n -m 1 '\<Address\>' /home/orangepi/MMDVMHost/MMDVMBM.ini`
buscar=":"
ADlargo_linea=`expr index $ADvar $buscar`
ADlargo_linea=`expr $ADlargo_linea - 1`
ADnumero_linea_Address=`expr substr $ADvar 1 $ADlargo_linea`
ADletra=c
ADlinea_sed=$ADnumero_linea_Address$ADletra
sed -i "$ADlinea_sed $var1" /home/orangepi/MMDVMHost/MMDVMBM.ini

#Port captura de la linea Address +1
numero_linea_Address=`expr $numero_linea_Address + 1` # Downloads
ADnumero_linea_Address=`expr $ADnumero_linea_Address + 1` # MMDVMHost
port=$(awk "NR==$numero_linea_Address" /home/orangepi/Downloads/MMDVMBM.ini)
ADletra=c
ADlinea_sed=$ADnumero_linea_Address$ADletra
sed -i "$ADlinea_sed $port" /home/orangepi/MMDVMHost/MMDVMBM.ini

#Password
var=`grep -n -m 1 '\<Password\>' /home/orangepi/Downloads/MMDVMBM.ini`
var1=`grep -m 1 '\<Password\>' /home/orangepi/Downloads/MMDVMBM.ini`
buscar=":"
largo_linea=`expr index $var $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea_password=`expr substr $var 1 $largo_linea`
PWvar=`grep -n -m 1 '\<Password\>' /home/orangepi/MMDVMHost/MMDVMBM.ini`
buscar=":"
PWlargo_linea=`expr index $PWvar $buscar`
PWlargo_linea=`expr $PWlargo_linea - 1`
PWnumero_linea_password=`expr substr $PWvar 1 $PWlargo_linea`
PWletra=c
PWlinea_sed=$PWnumero_linea_password$PWletra
sed -i "$PWlinea_sed $var1" /home/orangepi/MMDVMHost/MMDVMBM.ini

#Options linea password  +1
numero_linea_password=`expr $numero_linea_password + 1` # Downloads
PWnumero_linea_password=`expr $PWnumero_linea_password + 1` # MMDVMHost
option=$(awk "NR==$numero_linea_password" /home/orangepi/Downloads/MMDVMBM.ini)
PWletra=c
PWlinea_sed=$PWnumero_linea_password$PWletra
sed -i "$PWlinea_sed $option" /home/orangepi/MMDVMHost/MMDVMBM.ini

#ScreenLayout
var=`grep -n -m 1 '\<ScreenLayout\>' /home/orangepi/Downloads/MMDVMBM.ini`
var1=`grep -m 1 '\<ScreenLayout\>' /home/orangepi/Downloads/MMDVMBM.ini`
buscar=":"
largo_linea=`expr index $var $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea=`expr substr $var 1 $largo_linea`
SCvar=`grep -n -m 1 '\<ScreenLayout\>' /home/orangepi/MMDVMHost/MMDVMBM.ini`
buscar=":"
SClargo_linea=`expr index $SCvar $buscar`
SClargo_linea=`expr $SClargo_linea - 1`
SCnumero_linea=`expr substr $SCvar 1 $SClargo_linea`
SCletra=c
SClinea_sed=$SCnumero_linea$SCletra
sed -i "$SClinea_sed $var1" /home/orangepi/MMDVMHost/MMDVMBM.ini

#Brightness
var=`grep -n -m 1 '\<Brightness\>' /home/orangepi/Downloads/MMDVMBM.ini`
var1=`grep -m 1 '\<Brightness\>' /home/orangepi/Downloads/MMDVMBM.ini`
buscar=":"
largo_linea=`expr index $var $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea=`expr substr $var 1 $largo_linea`
BRvar=`grep -n -m 1 '\<Brightness\>' /home/orangepi/MMDVMHost/MMDVMBM.ini`
buscar=":"
BRlargo_linea=`expr index $BRvar $buscar`
BRlargo_linea=`expr $BRlargo_linea - 1`
BRnumero_linea=`expr substr $BRvar 1 $BRlargo_linea`
BRletra=c
BRlinea_sed=$BRnumero_linea$BRletra
sed -i "$BRlinea_sed $var1" /home/orangepi/MMDVMHost/MMDVMBM.ini

#Slot1
var=`grep -n -m 1 '\<Slot1\>' /home/orangepi/Downloads/MMDVMBM.ini`
var1=`grep -m 1 '\<Slot1\>' /home/orangepi/Downloads/MMDVMBM.ini`
buscar=":"
largo_linea=`expr index $var $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea=`expr substr $var 1 $largo_linea`
SLvar=`grep -n -m 1 '\<Slot1\>' /home/orangepi/MMDVMHost/MMDVMBM.ini`
buscar=":"
SLlargo_linea=`expr index $SLvar $buscar`
SLlargo_linea=`expr $SLlargo_linea - 1`
SLnumero_linea=`expr substr $SLvar 1 $SLlargo_linea`
SLletra=c
SLlinea_sed=$SLnumero_linea$SLletra
sed -i "$SLlinea_sed $var1" /home/orangepi/MMDVMHost/MMDVMBM.ini

#DisplayLevel
var=`grep -n -m 1 '\<DisplayLevel\>' /home/orangepi/Downloads/MMDVMBM.ini`
var1=`grep -m 1 '\<DisplayLevel\>' /home/orangepi/Downloads/MMDVMBM.ini`
buscar=":"
largo_linea=`expr index $var $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea=`expr substr $var 1 $largo_linea`
DIvar=`grep -n -m 1 '\<DisplayLevel\>' /home/orangepi/MMDVMHost/MMDVMBM.ini`
buscar=":"
DIlargo_linea=`expr index $DIvar $buscar`
DIlargo_linea=`expr $DIlargo_linea - 1`
DInumero_linea=`expr substr $DIvar 1 $DIlargo_linea`
DIletra=c
DIlinea_sed=$DInumero_linea$DIletra
sed -i "$DIlinea_sed $var1" /home/orangepi/MMDVMHost/MMDVMBM.ini

#TXHang
var=`grep -n -m 1 '\<TXHang\>' /home/orangepi/Downloads/MMDVMBM.ini`
var1=`grep -m 1 '\<TXHang\>' /home/orangepi/Downloads/MMDVMBM.ini`
buscar=":"
largo_linea=`expr index $var $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea=`expr substr $var 1 $largo_linea`
THvar=`grep -n -m 1 '\<TXHang\>' /home/orangepi/MMDVMHost/MMDVMBM.ini`
buscar=":"
THlargo_linea=`expr index $THvar $buscar`
THlargo_linea=`expr $THlargo_linea - 1`
THnumero_linea=`expr substr $THvar 1 $THlargo_linea`
THletra=c
THlinea_sed=$THnumero_linea$THletra
sed -i "$THlinea_sed $var1" /home/orangepi/MMDVMHost/MMDVMBM.ini

#D-Star
var=`grep -n -m 1 "\[D-Star\]" /home/orangepi/Downloads/MMDVMBM.ini` 
var1=`grep -m 1 "\[D-Star\]" /home/orangepi/Downloads/MMDVMBM.ini`
buscar=":"
largo_linea=`expr index $var $buscar` 
largo_linea=`expr $largo_linea - 1` 
numero_linea=`expr substr $var 1 $largo_linea` 
numero_linea_dstar=`expr $numero_linea + 1` 
DSvar=`grep -n -m 1 "\[D-Star\]" /home/orangepi/MMDVMHost/MMDVMBM.ini` 
DSvar1=`grep -m 1 "\[D-Star\]" /home/orangepi/MMDVMHost/MMDVMBM.ini`
buscar=":"
DSlargo_linea=`expr index $DSvar $buscar` 
DSlargo_linea=`expr $DSlargo_linea - 1` 
DSnumero_linea=`expr substr $DSvar 1 $DSlargo_linea` 
DSnumero_linea_dstar=`expr $DSnumero_linea + 1`
DSDS=$(awk "NR==$numero_linea_dstar" /home/orangepi/Downloads/MMDVMBM.ini) 
DSletrac=c
DSlinea_sed=$DSnumero_linea_dstar$DSletrac
sed -i "$DSlinea_sed $DSDS" /home/orangepi/MMDVMHost/MMDVMBM.ini

#DMR
var=`grep -n -m 1 "\[DMR\]" /home/orangepi/Downloads/MMDVMBM.ini` 
var1=`grep -m 1 "\[DMR\]" /home/orangepi/Downloads/MMDVMBM.ini`
buscar=":"
largo_linea=`expr index $var $buscar` 
largo_linea=`expr $largo_linea - 1` 
numero_linea=`expr substr $var 1 $largo_linea` 
numero_linea_dmr=`expr $numero_linea + 1` 
DMvar=`grep -n "\[DMR\]" /home/orangepi/MMDVMHost/MMDVMBM.ini` 
DMvar1=`grep -n -m 1 "\[DMR\]" /home/orangepi/MMDVMHost/MMDVMBM.ini`
buscar=":"
DMlargo_linea=`expr index $DMvar $buscar` 
DMlargo_linea=`expr $DMlargo_linea - 1` 
DMnumero_linea=`expr substr $DMvar 1 $DMlargo_linea` 
DMnumero_linea_dmr=`expr $DMnumero_linea + 1` 
DMDM=$(awk "NR==$numero_linea_dmr" /home/orangepi/Downloads/MMDVMBM.ini)
DMletrac=c
DMlinea_sed=$DMnumero_linea_dmr$DMletrac 
sed -i "$DMlinea_sed $DMDM" /home/orangepi/MMDVMHost/MMDVMBM.ini

#P25
var=`grep -n -m 1 "\[P25\]" /home/orangepi/Downloads/MMDVMBM.ini` 
var1=`grep -m 1 "\[P25\]" /home/orangepi/Downloads/MMDVMBM.ini`
buscar=":"
largo_linea=`expr index $var $buscar` 
largo_linea=`expr $largo_linea - 1` 
numero_linea=`expr substr $var 1 $largo_linea` 
numero_linea_p25=`expr $numero_linea + 1` 
P2var=`grep -n -m 1 "\[P25\]" /home/orangepi/MMDVMHost/MMDVMBM.ini` 
P2var1=`grep -n "\[P25\]" /home/orangepi/MMDVMHost/MMDVMBM.ini`
buscar=":"
P2largo_linea=`expr index $P2var $buscar` 
P2largo_linea=`expr $P2largo_linea - 1` 
P2numero_linea=`expr substr $P2var 1 $P2largo_linea` 
P2numero_linea_p25=`expr $P2numero_linea + 1` 
P2P2=$(awk "NR==$numero_linea_p25" /home/orangepi/Downloads/MMDVMBM.ini)
P2letrac=c
P2linea_sed=$P2numero_linea_p25$P2letrac
sed -i "$P2linea_sed $P2P2" /home/orangepi/MMDVMHost/MMDVMBM.ini

#FUSION
var1=`grep -n -m 1 "\[System Fusion\]" /home/orangepi/Downloads/MMDVMBM.ini`
var2=`echo "$var1" | tr -d '[[:space:]]'`
buscar=":"
largo_linea=`expr index $var2 $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea=`expr substr $var2 1 $largo_linea`
numero_linea=`expr $numero_linea + 1`
CWvar1=`grep -n -m 1 "\[System Fusion\]" /home/orangepi/MMDVMHost/MMDVMBM.ini`
CWvar2=`echo "$CWvar1" | tr -d '[[:space:]]'`
buscar=":"
CWlargo_linea=`expr index $CWvar2 $buscar`
CWlargo_linea=`expr $CWlargo_linea - 1`
CWnumero_linea=`expr substr $CWvar2 1 $CWlargo_linea`
CWnumero_linea=`expr $CWnumero_linea + 1`
CWCW=$(awk "NR==$CWnumero_linea" /home/orangepi/Downloads/MMDVMBM.ini)
CWletra=c
CWlinea_sed=$CWnumero_linea$CWletra
sed -i "$CWlinea_sed $CWCW" /home/orangepi/MMDVMHost/MMDVMBM.ini

#Nextion
var=`grep -n -m 1 "\[Nextion\]" /home/orangepi/Downloads/MMDVMBM.ini` 
var1=`grep -m 1 "\[Nextion\]" /home/orangepi/Downloads/MMDVMBM.ini`
buscar=":"
largo_linea=`expr index $var $buscar` 
largo_linea=`expr $largo_linea - 1` 
numero_linea=`expr substr $var 1 $largo_linea` 
numero_linea_p25=`expr $numero_linea + 2` 
P2var=`grep -n -m 1 "\[Nextion\]" /home/orangepi/MMDVMHost/MMDVMBM.ini` 
P2var1=`grep -n "\[Nextion\]" /home/orangepi/MMDVMHost/MMDVMBM.ini`
buscar=":"
P2largo_linea=`expr index $P2var $buscar` 
P2largo_linea=`expr $P2largo_linea - 1` 
P2numero_linea=`expr substr $P2var 1 $P2largo_linea` 
P2numero_linea_p25=`expr $P2numero_linea + 2` 
P2P2=$(awk "NR==$numero_linea_p25" /home/orangepi/Downloads/MMDVMBM.ini)
P2letrac=c
P2linea_sed=$P2numero_linea_p25$P2letrac
sed -i "$P2linea_sed $P2P2" /home/orangepi/MMDVMHost/MMDVMBM.ini
#======================= MMDVMBM.ini_copia   ============================
#******************************************************************
# Callsign 
var=`grep -n -m 1 '\<Callsign\>' /home/orangepi/Downloads/MMDVMBM.ini_copia` # 2:Callsign=EA3EIZ
var1=`grep -m 1 '\<Callsign\>' /home/orangepi/Downloads/MMDVMBM.ini_copia` # Callsign=EA3EIZ
buscar=":"
largo_linea=`expr index $var $buscar` #comprueba el largo incluyendo los dos puntos (:)
largo_linea=`expr $largo_linea - 1` #comprueba el largo quitando los dos puntos (:)
numero_linea=`expr substr $var 1 $largo_linea` # recoge numero linea Downloads
Hvar=`grep -n -m 1 '\<Callsign\>' /home/orangepi/MMDVMHost/MMDVMBM.ini_copia` # 2:Callsign=EA3EIZ
buscar=":"
Hlargo_linea=`expr index $Hvar $buscar` 
Hlargo_linea=`expr $Hlargo_linea - 1` 
Hnumero_linea=`expr substr $Hvar 1 $Hlargo_linea` # recoge numero linea MMDXVMHost
Hletra=c
Hlinea_sed=$Hnumero_linea$Hletra
sed -i "$Hlinea_sed $var1" /home/orangepi/MMDVMHost/MMDVMBM.ini_copia

#Id capturado de la linea 3
Id=$(awk "NR==3" /home/orangepi/Downloads/MMDVMBM.ini_copia)
sed -i "3c $Id" /home/orangepi/MMDVMHost/MMDVMBM.ini_copia

#Timeout capturado de la linea 4
timeou=$(awk "NR==4" /home/orangepi/Downloads/MMDVMBM.ini_copia)
sed -i "4c $timeou" /home/orangepi/MMDVMHost/MMDVMBM.ini_copia

#Duplex
var=`grep -n -m 1 '\<Duplex\>' /home/orangepi/Downloads/MMDVMBM.ini_copia`
var1=`grep -m 1 '\<Duplex\>' /home/orangepi/Downloads/MMDVMBM.ini_copia`
buscar=":"
largo_linea=`expr index $var $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea=`expr substr $var 1 $largo_linea`
Dvar=`grep -n -m 1 '\<Duplex\>' /home/orangepi/MMDVMHost/MMDVMBM.ini_copia`
buscar=":"
Dlargo_linea=`expr index $Dvar $buscar`
Dlargo_linea=`expr $Dlargo_linea - 1`
Dnumero_linea=`expr substr $Dvar 1 $Dlargo_linea`
Dletra=c
Dlinea_sed=$Dnumero_linea$Dletra
sed -i "$Dlinea_sed $var1" /home/orangepi/MMDVMHost/MMDVMBM.ini_copia

#RFModeHang
var=`grep -n -m 1 '\<RFModeHang\>' /home/orangepi/Downloads/MMDVMBM.ini_copia`
var1=`grep -m 1 '\<RFModeHang\>' /home/orangepi/Downloads/MMDVMBM.ini_copia`
buscar=":"
largo_linea=`expr index $var $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea=`expr substr $var 1 $largo_linea`
Rvar=`grep -n -m 1 '\<RFModeHang\>' /home/orangepi/MMDVMHost/MMDVMBM.ini_copia`
buscar=":"
Rlargo_linea=`expr index $Rvar $buscar`
Rlargo_linea=`expr $Rlargo_linea - 1`
Rnumero_linea=`expr substr $Rvar 1 $Rlargo_linea`
Rletra=c
Rlinea_sed=$Rnumero_linea$Rletra
sed -i "$Rlinea_sed $var1" /home/orangepi/MMDVMHost/MMDVMBM.ini_copia

#Display
var=`grep -n -m 1 '\<Display\>' /home/orangepi/Downloads/MMDVMBM.ini_copia`
var1=`grep -m 1 '\<Display\>' /home/orangepi/Downloads/MMDVMBM.ini_copia`
buscar=":"
largo_linea=`expr index $var $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea=`expr substr $var 1 $largo_linea`
Dvar=`grep -n -m 1 '\<Display\>' /home/orangepi/MMDVMHost/MMDVMBM.ini_copia`
buscar=":"
Dlargo_linea=`expr index $Dvar $buscar`
Dlargo_linea=`expr $Dlargo_linea - 1`
Dnumero_linea=`expr substr $Dvar 1 $Dlargo_linea`
Dletra=c
Dlinea_sed=$Dnumero_linea$Dletra
sed -i "$Dlinea_sed $var1" /home/orangepi/MMDVMHost/MMDVMBM.ini_copia

#RXFrequency
var=`grep -n -m 1 '\<RXFrequency\>' /home/orangepi/Downloads/MMDVMBM.ini_copia`
var1=`grep -m 1 '\<RXFrequency\>' /home/orangepi/Downloads/MMDVMBM.ini_copia`
buscar=":"
largo_linea=`expr index $var $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea=`expr substr $var 1 $largo_linea`
Xvar=`grep -n -m 1 '\<RXFrequency\>' /home/orangepi/MMDVMHost/MMDVMBM.ini_copia`
buscar=":"
Xlargo_linea=`expr index $Xvar $buscar`
Xlargo_linea=`expr $Xlargo_linea - 1`
Xnumero_linea=`expr substr $Xvar 1 $Xlargo_linea`
Xletra=c
Xlinea_sed=$Xnumero_linea$Xletra
sed -i "$Xlinea_sed $var1" /home/orangepi/MMDVMHost/MMDVMBM.ini_copia

#TXFrequency
var=`grep -n -m 1 '\<TXFrequency\>' /home/orangepi/Downloads/MMDVMBM.ini_copia`
var1=`grep -m 1 '\<TXFrequency\>' /home/orangepi/Downloads/MMDVMBM.ini_copia`
buscar=":"
largo_linea=`expr index $var $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea=`expr substr $var 1 $largo_linea`
Tvar=`grep -n -m 1 '\<TXFrequency\>' /home/orangepi/MMDVMHost/MMDVMBM.ini_copia`
buscar=":"
Tlargo_linea=`expr index $Tvar $buscar`
Tlargo_linea=`expr $Tlargo_linea - 1`
Tnumero_linea=`expr substr $Tvar 1 $Tlargo_linea`
Tletra=c
Tlinea_sed=$Tnumero_linea$Tletra
sed -i "$Tlinea_sed $var1" /home/orangepi/MMDVMHost/MMDVMBM.ini_copia

#Latitude
var=`grep -n -m 1 '\<Latitude\>' /home/orangepi/Downloads/MMDVMBM.ini_copia`
var1=`grep -m 1 '\<Latitude\>' /home/orangepi/Downloads/MMDVMBM.ini_copia`
buscar=":"
largo_linea=`expr index $var $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea=`expr substr $var 1 $largo_linea`
Lvar=`grep -n -m 1 '\<Latitude\>' /home/orangepi/MMDVMHost/MMDVMBM.ini_copia`
buscar=":"
Llargo_linea=`expr index $Lvar $buscar`
Llargo_linea=`expr $Llargo_linea - 1`
Lnumero_linea=`expr substr $Lvar 1 $Llargo_linea`
Lletra=c
Llinea_sed=$Lnumero_linea$Lletra
sed -i "$Llinea_sed $var1" /home/orangepi/MMDVMHost/MMDVMBM.ini_copia

#Longitude
var=`grep -n -m 1 '\<Longitude\>' /home/orangepi/Downloads/MMDVMBM.ini_copia`
var1=`grep -m 1 '\<Longitude\>' /home/orangepi/Downloads/MMDVMBM.ini_copia`
buscar=":"
largo_linea=`expr index $var $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea=`expr substr $var 1 $largo_linea`
LGvar=`grep -n -m 1 '\<Longitude\>' /home/orangepi/MMDVMHost/MMDVMBM.ini_copia`
buscar=":"
LGlargo_linea=`expr index $LGvar $buscar`
LGlargo_linea=`expr $LGlargo_linea - 1`
LGnumero_linea=`expr substr $LGvar 1 $LGlargo_linea`
LGletra=c
LGlinea_sed=$LGnumero_linea$LGletra
sed -i "$LGlinea_sed $var1" /home/orangepi/MMDVMHost/MMDVMBM.ini_copia

#Location
var=`grep -n -m 1 '\<Location\>' /home/orangepi/Downloads/MMDVMBM.ini_copia`
var1=`grep -m 1 '\<Location\>' /home/orangepi/Downloads/MMDVMBM.ini_copia`
buscar=":"
largo_linea=`expr index $var $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea=`expr substr $var 1 $largo_linea`
LOvar=`grep -n -m 1 '\<Location\>' /home/orangepi/MMDVMHost/MMDVMBM.ini_copia`
buscar=":"
LOlargo_linea=`expr index $LOvar $buscar`
LOlargo_linea=`expr $LOlargo_linea - 1`
LOnumero_linea=`expr substr $LOvar 1 $LOlargo_linea`
LOletra=c
LOlinea_sed=$LOnumero_linea$LOletra
sed -i "$LOlinea_sed $var1" /home/orangepi/MMDVMHost/MMDVMBM.ini_copia

#URL
var=`grep -n -m 1 '\<URL\>' /home/orangepi/Downloads/MMDVMBM.ini_copia`
var1=`grep -m 1 '\<URL\>' /home/orangepi/Downloads/MMDVMBM.ini_copia`
buscar=":"
largo_linea=`expr index $var $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea_url=`expr substr $var 1 $largo_linea`
Uvar=`grep -n -m 1 '\<URL\>' /home/orangepi/MMDVMHost/MMDVMBM.ini_copia`
Ubuscar=":"
Ulargo_linea=`expr index $Uvar $buscar`
Ulargo_linea=`expr $Ulargo_linea - 1`
Unumero_linea_url=`expr substr $Uvar 1 $largo_linea`
Uletra=c
Ulinea_sed=$Unumero_linea_url$Uletra
sed -i "$Ulinea_sed $var1" /home/orangepi/MMDVMHost/MMDVMBM.ini_copia

#Baliza 
var1=`grep -n -m 1 "\[CW Id\]" /home/orangepi/Downloads/MMDVMBM.ini_copia`
var2=`echo "$var1" | tr -d '[[:space:]]'`
buscar=":"
largo_linea=`expr index $var2 $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea=`expr substr $var2 1 $largo_linea`
numero_linea=`expr $numero_linea + 1`
CWvar1=`grep -n -m 1 "\[CW Id\]" /home/orangepi/MMDVMHost/MMDVMBM.ini_copia`
CWvar2=`echo "$CWvar1" | tr -d '[[:space:]]'`
buscar=":"
CWlargo_linea=`expr index $CWvar2 $buscar`
CWlargo_linea=`expr $CWlargo_linea - 1`
CWnumero_linea=`expr substr $CWvar2 1 $CWlargo_linea`
CWnumero_linea=`expr $CWnumero_linea + 1`
CWCW=$(awk "NR==$CWnumero_linea" /home/orangepi/Downloads/MMDVMBM.ini_copia)
CWletra=c
CWlinea_sed=$CWnumero_linea$CWletra
sed -i "$CWlinea_sed $CWCW" /home/orangepi/MMDVMHost/MMDVMBM.ini_copia

#RXLevel
var=`grep -n -m 1 '\<RXLevel\>' /home/orangepi/Downloads/MMDVMBM.ini_copia`
var1=`grep -m 1 '\<RXLevel\>' /home/orangepi/Downloads/MMDVMBM.ini_copia`
buscar=":"
largo_linea=`expr index $var $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea=`expr substr $var 1 $largo_linea`
RLvar=`grep -n -m 1 '\<RXLevel\>' /home/orangepi/MMDVMHost/MMDVMBM.ini_copia`
buscar=":"
RLlargo_linea=`expr index $RLvar $buscar`
RLlargo_linea=`expr $RLlargo_linea - 1`
RLnumero_linea=`expr substr $RLvar 1 $RLlargo_linea`
RLletra=c
RLlinea_sed=$RLnumero_linea$RLletra
sed -i "$RLlinea_sed $var1" /home/orangepi/MMDVMHost/MMDVMBM.ini_copia

#TXLevel
var=`grep -n -m 1 '\<TXLevel\>' /home/orangepi/Downloads/MMDVMBM.ini_copia`
var1=`grep -m 1 '\<TXLevel\>' /home/orangepi/Downloads/MMDVMBM.ini_copia`
buscar=":"
largo_linea=`expr index $var $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea=`expr substr $var 1 $largo_linea`
TLvar=`grep -n -m 1 '\<TXLevel\>' /home/orangepi/MMDVMHost/MMDVMBM.ini_copia`
buscar=":"
TLlargo_linea=`expr index $TLvar $buscar`
TLlargo_linea=`expr $TLlargo_linea - 1`
TLnumero_linea=`expr substr $TLvar 1 $TLlargo_linea`
TLletra=c
TLlinea_sed=$TLnumero_linea$TLletra
sed -i "$TLlinea_sed $var1" /home/orangepi/MMDVMHost/MMDVMBM.ini_copia

#Module
var=`grep -n -m 1 '\<Module\>' /home/orangepi/Downloads/MMDVMBM.ini_copia`
var1=`grep -m 1 '\<Module\>' /home/orangepi/Downloads/MMDVMBM.ini_copia`
buscar=":"
largo_linea=`expr index $var $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea=`expr substr $var 1 $largo_linea`
MOvar=`grep -n -m 1 '\<Module\>' /home/orangepi/MMDVMHost/MMDVMBM.ini_copia`
buscar=":"
MOlargo_linea=`expr index $MOvar $buscar`
MOlargo_linea=`expr $MOlargo_linea - 1`
MOnumero_linea=`expr substr $MOvar 1 $MOlargo_linea`
MOletra=c
MOlinea_sed=$MOnumero_linea$MOletra
sed -i "$MOlinea_sed $var1" /home/orangepi/MMDVMHost/MMDVMBM.ini_copia

#Txinvert
var=`grep -n -m 1 '\<TXInvert\>' /home/orangepi/Downloads/MMDVMBM.ini_copia`
var1=`grep -m 1 '\<TXInvert\>' /home/orangepi/Downloads/MMDVMBM.ini_copia`
buscar=":"
largo_linea=`expr index $var $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea=`expr substr $var 1 $largo_linea`
TIvar=`grep -n -m 1 '\<TXInvert\>' /home/orangepi/MMDVMHost/MMDVMBM.ini_copia`
buscar=":"
TIlargo_linea=`expr index $TIvar $buscar`
TIlargo_linea=`expr $TIlargo_linea - 1`
TInumero_linea=`expr substr $TIvar 1 $TIlargo_linea`
TIletra=c
TIlinea_sed=$TInumero_linea$TIletra
sed -i "$TIlinea_sed $var1" /home/orangepi/MMDVMHost/MMDVMBM.ini_copia

#Modem capturado de la linea txinvert -1
numero_linea_MODEM=`expr $numero_linea - 1` # Downloads
MOnumero_linea_MODEM=`expr $TInumero_linea - 1` # MMDVMHost
modem=$(awk "NR==$numero_linea_MODEM" /home/orangepi/Downloads/MMDVMBM.ini_copia)
TIletra=c
TIlinea_sed=$MOnumero_linea_MODEM$TIletra
sed -i "$TIlinea_sed $modem" /home/orangepi/MMDVMHost/MMDVMBM.ini_copia

#Address
var=`grep -n -m 1 '\<Address\>' /home/orangepi/Downloads/MMDVMBM.ini_copia`
var1=`grep -m 1 '\<Address\>' /home/orangepi/Downloads/MMDVMBM.ini_copia`
buscar=":"
largo_linea=`expr index $var $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea_Address=`expr substr $var 1 $largo_linea`
ADvar=`grep -n -m 1 '\<Address\>' /home/orangepi/MMDVMHost/MMDVMBM.ini_copia`
buscar=":"
ADlargo_linea=`expr index $ADvar $buscar`
ADlargo_linea=`expr $ADlargo_linea - 1`
ADnumero_linea_Address=`expr substr $ADvar 1 $ADlargo_linea`
ADletra=c
ADlinea_sed=$ADnumero_linea_Address$ADletra
sed -i "$ADlinea_sed $var1" /home/orangepi/MMDVMHost/MMDVMBM.ini_copia

#Port captura de la linea Address +1
numero_linea_Address=`expr $numero_linea_Address + 1` # Downloads
ADnumero_linea_Address=`expr $ADnumero_linea_Address + 1` # MMDVMHost
port=$(awk "NR==$numero_linea_Address" /home/orangepi/Downloads/MMDVMBM.ini_copia)
ADletra=c
ADlinea_sed=$ADnumero_linea_Address$ADletra
sed -i "$ADlinea_sed $port" /home/orangepi/MMDVMHost/MMDVMBM.ini_copia

#Password
var=`grep -n -m 1 '\<Password\>' /home/orangepi/Downloads/MMDVMBM.ini_copia`
var1=`grep -m 1 '\<Password\>' /home/orangepi/Downloads/MMDVMBM.ini_copia`
buscar=":"
largo_linea=`expr index $var $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea_password=`expr substr $var 1 $largo_linea`
PWvar=`grep -n -m 1 '\<Password\>' /home/orangepi/MMDVMHost/MMDVMBM.ini_copia`
buscar=":"
PWlargo_linea=`expr index $PWvar $buscar`
PWlargo_linea=`expr $PWlargo_linea - 1`
PWnumero_linea_password=`expr substr $PWvar 1 $PWlargo_linea`
PWletra=c
PWlinea_sed=$PWnumero_linea_password$PWletra
sed -i "$PWlinea_sed $var1" /home/orangepi/MMDVMHost/MMDVMBM.ini_copia

#Options linea password  +1
numero_linea_password=`expr $numero_linea_password + 1` # Downloads
PWnumero_linea_password=`expr $PWnumero_linea_password + 1` # MMDVMHost
option=$(awk "NR==$numero_linea_password" /home/orangepi/Downloads/MMDVMBM.ini_copia)
PWletra=c
PWlinea_sed=$PWnumero_linea_password$PWletra
sed -i "$PWlinea_sed $option" /home/orangepi/MMDVMHost/MMDVMBM.ini_copia

#ScreenLayout
var=`grep -n -m 1 '\<ScreenLayout\>' /home/orangepi/Downloads/MMDVMBM.ini_copia`
var1=`grep -m 1 '\<ScreenLayout\>' /home/orangepi/Downloads/MMDVMBM.ini_copia`
buscar=":"
largo_linea=`expr index $var $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea=`expr substr $var 1 $largo_linea`
SCvar=`grep -n -m 1 '\<ScreenLayout\>' /home/orangepi/MMDVMHost/MMDVMBM.ini_copia`
buscar=":"
SClargo_linea=`expr index $SCvar $buscar`
SClargo_linea=`expr $SClargo_linea - 1`
SCnumero_linea=`expr substr $SCvar 1 $SClargo_linea`
SCletra=c
SClinea_sed=$SCnumero_linea$SCletra
sed -i "$SClinea_sed $var1" /home/orangepi/MMDVMHost/MMDVMBM.ini_copia

#Brightness
var=`grep -n -m 1 '\<Brightness\>' /home/orangepi/Downloads/MMDVMBM.ini_copia`
var1=`grep -m 1 '\<Brightness\>' /home/orangepi/Downloads/MMDVMBM.ini_copia`
buscar=":"
largo_linea=`expr index $var $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea=`expr substr $var 1 $largo_linea`
BRvar=`grep -n -m 1 '\<Brightness\>' /home/orangepi/MMDVMHost/MMDVMBM.ini_copia`
buscar=":"
BRlargo_linea=`expr index $BRvar $buscar`
BRlargo_linea=`expr $BRlargo_linea - 1`
BRnumero_linea=`expr substr $BRvar 1 $BRlargo_linea`
BRletra=c
BRlinea_sed=$BRnumero_linea$BRletra
sed -i "$BRlinea_sed $var1" /home/orangepi/MMDVMHost/MMDVMBM.ini_copia

#Slot1
var=`grep -n -m 1 '\<Slot1\>' /home/orangepi/Downloads/MMDVMBM.ini_copia`
var1=`grep -m 1 '\<Slot1\>' /home/orangepi/Downloads/MMDVMBM.ini_copia`
buscar=":"
largo_linea=`expr index $var $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea=`expr substr $var 1 $largo_linea`
SLvar=`grep -n -m 1 '\<Slot1\>' /home/orangepi/MMDVMHost/MMDVMBM.ini_copia`
buscar=":"
SLlargo_linea=`expr index $SLvar $buscar`
SLlargo_linea=`expr $SLlargo_linea - 1`
SLnumero_linea=`expr substr $SLvar 1 $SLlargo_linea`
SLletra=c
SLlinea_sed=$SLnumero_linea$SLletra
sed -i "$SLlinea_sed $var1" /home/orangepi/MMDVMHost/MMDVMBM.ini_copia

#DisplayLevel
var=`grep -n -m 1 '\<DisplayLevel\>' /home/orangepi/Downloads/MMDVMBM.ini_copia`
var1=`grep -m 1 '\<DisplayLevel\>' /home/orangepi/Downloads/MMDVMBM.ini_copia`
buscar=":"
largo_linea=`expr index $var $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea=`expr substr $var 1 $largo_linea`
DIvar=`grep -n -m 1 '\<DisplayLevel\>' /home/orangepi/MMDVMHost/MMDVMBM.ini_copia`
buscar=":"
DIlargo_linea=`expr index $DIvar $buscar`
DIlargo_linea=`expr $DIlargo_linea - 1`
DInumero_linea=`expr substr $DIvar 1 $DIlargo_linea`
DIletra=c
DIlinea_sed=$DInumero_linea$DIletra
sed -i "$DIlinea_sed $var1" /home/orangepi/MMDVMHost/MMDVMBM.ini_copia

#TXHang
var=`grep -n -m 1 '\<TXHang\>' /home/orangepi/Downloads/MMDVMBM.ini_copia`
var1=`grep -m 1 '\<TXHang\>' /home/orangepi/Downloads/MMDVMBM.ini_copia`
buscar=":"
largo_linea=`expr index $var $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea=`expr substr $var 1 $largo_linea`
THvar=`grep -n -m 1 '\<TXHang\>' /home/orangepi/MMDVMHost/MMDVMBM.ini_copia`
buscar=":"
THlargo_linea=`expr index $THvar $buscar`
THlargo_linea=`expr $THlargo_linea - 1`
THnumero_linea=`expr substr $THvar 1 $THlargo_linea`
THletra=c
THlinea_sed=$THnumero_linea$THletra
sed -i "$THlinea_sed $var1" /home/orangepi/MMDVMHost/MMDVMBM.ini_copia

#D-Star
var=`grep -n -m 1 "\[D-Star\]" /home/orangepi/Downloads/MMDVMBM.ini_copia` 
var1=`grep -m 1 "\[D-Star\]" /home/orangepi/Downloads/MMDVMBM.ini_copia`
buscar=":"
largo_linea=`expr index $var $buscar` 
largo_linea=`expr $largo_linea - 1` 
numero_linea=`expr substr $var 1 $largo_linea` 
numero_linea_dstar=`expr $numero_linea + 1` 
DSvar=`grep -n -m 1 "\[D-Star\]" /home/orangepi/MMDVMHost/MMDVMBM.ini_copia` 
DSvar1=`grep -m 1 "\[D-Star\]" /home/orangepi/MMDVMHost/MMDVMBM.ini_copia`
buscar=":"
DSlargo_linea=`expr index $DSvar $buscar` 
DSlargo_linea=`expr $DSlargo_linea - 1` 
DSnumero_linea=`expr substr $DSvar 1 $DSlargo_linea` 
DSnumero_linea_dstar=`expr $DSnumero_linea + 1`
DSDS=$(awk "NR==$numero_linea_dstar" /home/orangepi/Downloads/MMDVMBM.ini_copia) 
DSletrac=c
DSlinea_sed=$DSnumero_linea_dstar$DSletrac
sed -i "$DSlinea_sed $DSDS" /home/orangepi/MMDVMHost/MMDVMBM.ini_copia

#DMR
var=`grep -n -m 1 "\[DMR\]" /home/orangepi/Downloads/MMDVMBM.ini_copia` 
var1=`grep -m 1 "\[DMR\]" /home/orangepi/Downloads/MMDVMBM.ini_copia`
buscar=":"
largo_linea=`expr index $var $buscar` 
largo_linea=`expr $largo_linea - 1` 
numero_linea=`expr substr $var 1 $largo_linea` 
numero_linea_dmr=`expr $numero_linea + 1` 
DMvar=`grep -n "\[DMR\]" /home/orangepi/MMDVMHost/MMDVMBM.ini_copia` 
DMvar1=`grep -n -m 1 "\[DMR\]" /home/orangepi/MMDVMHost/MMDVMBM.ini_copia`
buscar=":"
DMlargo_linea=`expr index $DMvar $buscar` 
DMlargo_linea=`expr $DMlargo_linea - 1` 
DMnumero_linea=`expr substr $DMvar 1 $DMlargo_linea` 
DMnumero_linea_dmr=`expr $DMnumero_linea + 1` 
DMDM=$(awk "NR==$numero_linea_dmr" /home/orangepi/Downloads/MMDVMBM.ini_copia)
DMletrac=c
DMlinea_sed=$DMnumero_linea_dmr$DMletrac 
sed -i "$DMlinea_sed $DMDM" /home/orangepi/MMDVMHost/MMDVMBM.ini_copia

#P25
var=`grep -n -m 1 "\[P25\]" /home/orangepi/Downloads/MMDVMBM.ini_copia` 
var1=`grep -m 1 "\[P25\]" /home/orangepi/Downloads/MMDVMBM.ini_copia`
buscar=":"
largo_linea=`expr index $var $buscar` 
largo_linea=`expr $largo_linea - 1` 
numero_linea=`expr substr $var 1 $largo_linea` 
numero_linea_p25=`expr $numero_linea + 1` 
P2var=`grep -n -m 1 "\[P25\]" /home/orangepi/MMDVMHost/MMDVMBM.ini_copia` 
P2var1=`grep -n "\[P25\]" /home/orangepi/MMDVMHost/MMDVMBM.ini_copia`
buscar=":"
P2largo_linea=`expr index $P2var $buscar` 
P2largo_linea=`expr $P2largo_linea - 1` 
P2numero_linea=`expr substr $P2var 1 $P2largo_linea` 
P2numero_linea_p25=`expr $P2numero_linea + 1` 
P2P2=$(awk "NR==$numero_linea_p25" /home/orangepi/Downloads/MMDVMBM.ini_copia)
P2letrac=c
P2linea_sed=$P2numero_linea_p25$P2letrac
sed -i "$P2linea_sed $P2P2" /home/orangepi/MMDVMHost/MMDVMBM.ini_copia

#FUSION
var1=`grep -n -m 1 "\[System Fusion\]" /home/orangepi/Downloads/MMDVMBM.ini_copia`
var2=`echo "$var1" | tr -d '[[:space:]]'`
buscar=":"
largo_linea=`expr index $var2 $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea=`expr substr $var2 1 $largo_linea`
numero_linea=`expr $numero_linea + 1`
CWvar1=`grep -n -m 1 "\[System Fusion\]" /home/orangepi/MMDVMHost/MMDVMBM.ini_copia`
CWvar2=`echo "$CWvar1" | tr -d '[[:space:]]'`
buscar=":"
CWlargo_linea=`expr index $CWvar2 $buscar`
CWlargo_linea=`expr $CWlargo_linea - 1`
CWnumero_linea=`expr substr $CWvar2 1 $CWlargo_linea`
CWnumero_linea=`expr $CWnumero_linea + 1`
CWCW=$(awk "NR==$CWnumero_linea" /home/orangepi/Downloads/MMDVMBM.ini_copia)
CWletra=c
CWlinea_sed=$CWnumero_linea$CWletra
sed -i "$CWlinea_sed $CWCW" /home/orangepi/MMDVMHost/MMDVMBM.ini_copia

#Nextion
var=`grep -n -m 1 "\[Nextion\]" /home/orangepi/Downloads/MMDVMBM.ini_copia` 
var1=`grep -m 1 "\[Nextion\]" /home/orangepi/Downloads/MMDVMBM.ini_copia`
buscar=":"
largo_linea=`expr index $var $buscar` 
largo_linea=`expr $largo_linea - 1` 
numero_linea=`expr substr $var 1 $largo_linea` 
numero_linea_p25=`expr $numero_linea + 2` 
P2var=`grep -n -m 1 "\[Nextion\]" /home/orangepi/MMDVMHost/MMDVMBM.ini_copia` 
P2var1=`grep -n "\[Nextion\]" /home/orangepi/MMDVMHost/MMDVMBM.ini_copia`
buscar=":"
P2largo_linea=`expr index $P2var $buscar` 
P2largo_linea=`expr $P2largo_linea - 1` 
P2numero_linea=`expr substr $P2var 1 $P2largo_linea` 
P2numero_linea_p25=`expr $P2numero_linea + 2` 
P2P2=$(awk "NR==$numero_linea_p25" /home/orangepi/Downloads/MMDVMBM.ini_copia)
P2letrac=c
P2linea_sed=$P2numero_linea_p25$P2letrac
sed -i "$P2linea_sed $P2P2" /home/orangepi/MMDVMHost/MMDVMBM.ini_copia
#======================= MMDVMBM.ini_copia2   ============================
#******************************************************************
# Callsign 
var=`grep -n -m 1 '\<Callsign\>' /home/orangepi/Downloads/MMDVMBM.ini_copia2` # 2:Callsign=EA3EIZ
var1=`grep -m 1 '\<Callsign\>' /home/orangepi/Downloads/MMDVMBM.ini_copia2` # Callsign=EA3EIZ
buscar=":"
largo_linea=`expr index $var $buscar` #comprueba el largo incluyendo los dos puntos (:)
largo_linea=`expr $largo_linea - 1` #comprueba el largo quitando los dos puntos (:)
numero_linea=`expr substr $var 1 $largo_linea` # recoge numero linea Downloads
Hvar=`grep -n -m 1 '\<Callsign\>' /home/orangepi/MMDVMHost/MMDVMBM.ini_copia2` # 2:Callsign=EA3EIZ
buscar=":"
Hlargo_linea=`expr index $Hvar $buscar` 
Hlargo_linea=`expr $Hlargo_linea - 1` 
Hnumero_linea=`expr substr $Hvar 1 $Hlargo_linea` # recoge numero linea MMDXVMHost
Hletra=c
Hlinea_sed=$Hnumero_linea$Hletra
sed -i "$Hlinea_sed $var1" /home/orangepi/MMDVMHost/MMDVMBM.ini_copia2

#Id capturado de la linea 3
Id=$(awk "NR==3" /home/orangepi/Downloads/MMDVMBM.ini_copia2)
sed -i "3c $Id" /home/orangepi/MMDVMHost/MMDVMBM.ini_copia2

#Timeout capturado de la linea 4
timeou=$(awk "NR==4" /home/orangepi/Downloads/MMDVMBM.ini_copia2)
sed -i "4c $timeou" /home/orangepi/MMDVMHost/MMDVMBM.ini_copia2

#Duplex
var=`grep -n -m 1 '\<Duplex\>' /home/orangepi/Downloads/MMDVMBM.ini_copia2`
var1=`grep -m 1 '\<Duplex\>' /home/orangepi/Downloads/MMDVMBM.ini_copia2`
buscar=":"
largo_linea=`expr index $var $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea=`expr substr $var 1 $largo_linea`
Dvar=`grep -n -m 1 '\<Duplex\>' /home/orangepi/MMDVMHost/MMDVMBM.ini_copia2`
buscar=":"
Dlargo_linea=`expr index $Dvar $buscar`
Dlargo_linea=`expr $Dlargo_linea - 1`
Dnumero_linea=`expr substr $Dvar 1 $Dlargo_linea`
Dletra=c
Dlinea_sed=$Dnumero_linea$Dletra
sed -i "$Dlinea_sed $var1" /home/orangepi/MMDVMHost/MMDVMBM.ini_copia2

#RFModeHang
var=`grep -n -m 1 '\<RFModeHang\>' /home/orangepi/Downloads/MMDVMBM.ini_copia2`
var1=`grep -m 1 '\<RFModeHang\>' /home/orangepi/Downloads/MMDVMBM.ini_copia2`
buscar=":"
largo_linea=`expr index $var $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea=`expr substr $var 1 $largo_linea`
Rvar=`grep -n -m 1 '\<RFModeHang\>' /home/orangepi/MMDVMHost/MMDVMBM.ini_copia2`
buscar=":"
Rlargo_linea=`expr index $Rvar $buscar`
Rlargo_linea=`expr $Rlargo_linea - 1`
Rnumero_linea=`expr substr $Rvar 1 $Rlargo_linea`
Rletra=c
Rlinea_sed=$Rnumero_linea$Rletra
sed -i "$Rlinea_sed $var1" /home/orangepi/MMDVMHost/MMDVMBM.ini_copia2

#Display
var=`grep -n -m 1 '\<Display\>' /home/orangepi/Downloads/MMDVMBM.ini_copia2`
var1=`grep -m 1 '\<Display\>' /home/orangepi/Downloads/MMDVMBM.ini_copia2`
buscar=":"
largo_linea=`expr index $var $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea=`expr substr $var 1 $largo_linea`
Dvar=`grep -n -m 1 '\<Display\>' /home/orangepi/MMDVMHost/MMDVMBM.ini_copia2`
buscar=":"
Dlargo_linea=`expr index $Dvar $buscar`
Dlargo_linea=`expr $Dlargo_linea - 1`
Dnumero_linea=`expr substr $Dvar 1 $Dlargo_linea`
Dletra=c
Dlinea_sed=$Dnumero_linea$Dletra
sed -i "$Dlinea_sed $var1" /home/orangepi/MMDVMHost/MMDVMBM.ini_copia2

#RXFrequency
var=`grep -n -m 1 '\<RXFrequency\>' /home/orangepi/Downloads/MMDVMBM.ini_copia2`
var1=`grep -m 1 '\<RXFrequency\>' /home/orangepi/Downloads/MMDVMBM.ini_copia2`
buscar=":"
largo_linea=`expr index $var $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea=`expr substr $var 1 $largo_linea`
Xvar=`grep -n -m 1 '\<RXFrequency\>' /home/orangepi/MMDVMHost/MMDVMBM.ini_copia2`
buscar=":"
Xlargo_linea=`expr index $Xvar $buscar`
Xlargo_linea=`expr $Xlargo_linea - 1`
Xnumero_linea=`expr substr $Xvar 1 $Xlargo_linea`
Xletra=c
Xlinea_sed=$Xnumero_linea$Xletra
sed -i "$Xlinea_sed $var1" /home/orangepi/MMDVMHost/MMDVMBM.ini_copia2

#TXFrequency
var=`grep -n -m 1 '\<TXFrequency\>' /home/orangepi/Downloads/MMDVMBM.ini_copia2`
var1=`grep -m 1 '\<TXFrequency\>' /home/orangepi/Downloads/MMDVMBM.ini_copia2`
buscar=":"
largo_linea=`expr index $var $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea=`expr substr $var 1 $largo_linea`
Tvar=`grep -n -m 1 '\<TXFrequency\>' /home/orangepi/MMDVMHost/MMDVMBM.ini_copia2`
buscar=":"
Tlargo_linea=`expr index $Tvar $buscar`
Tlargo_linea=`expr $Tlargo_linea - 1`
Tnumero_linea=`expr substr $Tvar 1 $Tlargo_linea`
Tletra=c
Tlinea_sed=$Tnumero_linea$Tletra
sed -i "$Tlinea_sed $var1" /home/orangepi/MMDVMHost/MMDVMBM.ini_copia2

#Latitude
var=`grep -n -m 1 '\<Latitude\>' /home/orangepi/Downloads/MMDVMBM.ini_copia2`
var1=`grep -m 1 '\<Latitude\>' /home/orangepi/Downloads/MMDVMBM.ini_copia2`
buscar=":"
largo_linea=`expr index $var $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea=`expr substr $var 1 $largo_linea`
Lvar=`grep -n -m 1 '\<Latitude\>' /home/orangepi/MMDVMHost/MMDVMBM.ini_copia2`
buscar=":"
Llargo_linea=`expr index $Lvar $buscar`
Llargo_linea=`expr $Llargo_linea - 1`
Lnumero_linea=`expr substr $Lvar 1 $Llargo_linea`
Lletra=c
Llinea_sed=$Lnumero_linea$Lletra
sed -i "$Llinea_sed $var1" /home/orangepi/MMDVMHost/MMDVMBM.ini_copia2

#Longitude
var=`grep -n -m 1 '\<Longitude\>' /home/orangepi/Downloads/MMDVMBM.ini_copia2`
var1=`grep -m 1 '\<Longitude\>' /home/orangepi/Downloads/MMDVMBM.ini_copia2`
buscar=":"
largo_linea=`expr index $var $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea=`expr substr $var 1 $largo_linea`
LGvar=`grep -n -m 1 '\<Longitude\>' /home/orangepi/MMDVMHost/MMDVMBM.ini_copia2`
buscar=":"
LGlargo_linea=`expr index $LGvar $buscar`
LGlargo_linea=`expr $LGlargo_linea - 1`
LGnumero_linea=`expr substr $LGvar 1 $LGlargo_linea`
LGletra=c
LGlinea_sed=$LGnumero_linea$LGletra
sed -i "$LGlinea_sed $var1" /home/orangepi/MMDVMHost/MMDVMBM.ini_copia2

#Location
var=`grep -n -m 1 '\<Location\>' /home/orangepi/Downloads/MMDVMBM.ini_copia2`
var1=`grep -m 1 '\<Location\>' /home/orangepi/Downloads/MMDVMBM.ini_copia2`
buscar=":"
largo_linea=`expr index $var $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea=`expr substr $var 1 $largo_linea`
LOvar=`grep -n -m 1 '\<Location\>' /home/orangepi/MMDVMHost/MMDVMBM.ini_copia2`
buscar=":"
LOlargo_linea=`expr index $LOvar $buscar`
LOlargo_linea=`expr $LOlargo_linea - 1`
LOnumero_linea=`expr substr $LOvar 1 $LOlargo_linea`
LOletra=c
LOlinea_sed=$LOnumero_linea$LOletra
sed -i "$LOlinea_sed $var1" /home/orangepi/MMDVMHost/MMDVMBM.ini_copia2

#URL
var=`grep -n -m 1 '\<URL\>' /home/orangepi/Downloads/MMDVMBM.ini_copia2`
var1=`grep -m 1 '\<URL\>' /home/orangepi/Downloads/MMDVMBM.ini_copia2`
buscar=":"
largo_linea=`expr index $var $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea_url=`expr substr $var 1 $largo_linea`
Uvar=`grep -n -m 1 '\<URL\>' /home/orangepi/MMDVMHost/MMDVMBM.ini_copia2`
Ubuscar=":"
Ulargo_linea=`expr index $Uvar $buscar`
Ulargo_linea=`expr $Ulargo_linea - 1`
Unumero_linea_url=`expr substr $Uvar 1 $largo_linea`
Uletra=c
Ulinea_sed=$Unumero_linea_url$Uletra
sed -i "$Ulinea_sed $var1" /home/orangepi/MMDVMHost/MMDVMBM.ini_copia2

#Baliza 
var1=`grep -n -m 1 "\[CW Id\]" /home/orangepi/Downloads/MMDVMBM.ini_copia2`
var2=`echo "$var1" | tr -d '[[:space:]]'`
buscar=":"
largo_linea=`expr index $var2 $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea=`expr substr $var2 1 $largo_linea`
numero_linea=`expr $numero_linea + 1`
CWvar1=`grep -n -m 1 "\[CW Id\]" /home/orangepi/MMDVMHost/MMDVMBM.ini_copia2`
CWvar2=`echo "$CWvar1" | tr -d '[[:space:]]'`
buscar=":"
CWlargo_linea=`expr index $CWvar2 $buscar`
CWlargo_linea=`expr $CWlargo_linea - 1`
CWnumero_linea=`expr substr $CWvar2 1 $CWlargo_linea`
CWnumero_linea=`expr $CWnumero_linea + 1`
CWCW=$(awk "NR==$CWnumero_linea" /home/orangepi/Downloads/MMDVMBM.ini_copia2)
CWletra=c
CWlinea_sed=$CWnumero_linea$CWletra
sed -i "$CWlinea_sed $CWCW" /home/orangepi/MMDVMHost/MMDVMBM.ini_copia2

#RXLevel
var=`grep -n -m 1 '\<RXLevel\>' /home/orangepi/Downloads/MMDVMBM.ini_copia2`
var1=`grep -m 1 '\<RXLevel\>' /home/orangepi/Downloads/MMDVMBM.ini_copia2`
buscar=":"
largo_linea=`expr index $var $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea=`expr substr $var 1 $largo_linea`
RLvar=`grep -n -m 1 '\<RXLevel\>' /home/orangepi/MMDVMHost/MMDVMBM.ini_copia2`
buscar=":"
RLlargo_linea=`expr index $RLvar $buscar`
RLlargo_linea=`expr $RLlargo_linea - 1`
RLnumero_linea=`expr substr $RLvar 1 $RLlargo_linea`
RLletra=c
RLlinea_sed=$RLnumero_linea$RLletra
sed -i "$RLlinea_sed $var1" /home/orangepi/MMDVMHost/MMDVMBM.ini_copia2

#TXLevel
var=`grep -n -m 1 '\<TXLevel\>' /home/orangepi/Downloads/MMDVMBM.ini_copia2`
var1=`grep -m 1 '\<TXLevel\>' /home/orangepi/Downloads/MMDVMBM.ini_copia2`
buscar=":"
largo_linea=`expr index $var $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea=`expr substr $var 1 $largo_linea`
TLvar=`grep -n -m 1 '\<TXLevel\>' /home/orangepi/MMDVMHost/MMDVMBM.ini_copia2`
buscar=":"
TLlargo_linea=`expr index $TLvar $buscar`
TLlargo_linea=`expr $TLlargo_linea - 1`
TLnumero_linea=`expr substr $TLvar 1 $TLlargo_linea`
TLletra=c
TLlinea_sed=$TLnumero_linea$TLletra
sed -i "$TLlinea_sed $var1" /home/orangepi/MMDVMHost/MMDVMBM.ini_copia2

#Module
var=`grep -n -m 1 '\<Module\>' /home/orangepi/Downloads/MMDVMBM.ini_copia2`
var1=`grep -m 1 '\<Module\>' /home/orangepi/Downloads/MMDVMBM.ini_copia2`
buscar=":"
largo_linea=`expr index $var $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea=`expr substr $var 1 $largo_linea`
MOvar=`grep -n -m 1 '\<Module\>' /home/orangepi/MMDVMHost/MMDVMBM.ini_copia2`
buscar=":"
MOlargo_linea=`expr index $MOvar $buscar`
MOlargo_linea=`expr $MOlargo_linea - 1`
MOnumero_linea=`expr substr $MOvar 1 $MOlargo_linea`
MOletra=c
MOlinea_sed=$MOnumero_linea$MOletra
sed -i "$MOlinea_sed $var1" /home/orangepi/MMDVMHost/MMDVMBM.ini_copia2

#Txinvert
var=`grep -n -m 1 '\<TXInvert\>' /home/orangepi/Downloads/MMDVMBM.ini_copia2`
var1=`grep -m 1 '\<TXInvert\>' /home/orangepi/Downloads/MMDVMBM.ini_copia2`
buscar=":"
largo_linea=`expr index $var $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea=`expr substr $var 1 $largo_linea`
TIvar=`grep -n -m 1 '\<TXInvert\>' /home/orangepi/MMDVMHost/MMDVMBM.ini_copia2`
buscar=":"
TIlargo_linea=`expr index $TIvar $buscar`
TIlargo_linea=`expr $TIlargo_linea - 1`
TInumero_linea=`expr substr $TIvar 1 $TIlargo_linea`
TIletra=c
TIlinea_sed=$TInumero_linea$TIletra
sed -i "$TIlinea_sed $var1" /home/orangepi/MMDVMHost/MMDVMBM.ini_copia2

#Modem capturado de la linea txinvert -1
numero_linea_MODEM=`expr $numero_linea - 1` # Downloads
MOnumero_linea_MODEM=`expr $TInumero_linea - 1` # MMDVMHost
modem=$(awk "NR==$numero_linea_MODEM" /home/orangepi/Downloads/MMDVMBM.ini_copia2)
TIletra=c
TIlinea_sed=$MOnumero_linea_MODEM$TIletra
sed -i "$TIlinea_sed $modem" /home/orangepi/MMDVMHost/MMDVMBM.ini_copia2

#Address
var=`grep -n -m 1 '\<Address\>' /home/orangepi/Downloads/MMDVMBM.ini_copia2`
var1=`grep -m 1 '\<Address\>' /home/orangepi/Downloads/MMDVMBM.ini_copia2`
buscar=":"
largo_linea=`expr index $var $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea_Address=`expr substr $var 1 $largo_linea`
ADvar=`grep -n -m 1 '\<Address\>' /home/orangepi/MMDVMHost/MMDVMBM.ini_copia2`
buscar=":"
ADlargo_linea=`expr index $ADvar $buscar`
ADlargo_linea=`expr $ADlargo_linea - 1`
ADnumero_linea_Address=`expr substr $ADvar 1 $ADlargo_linea`
ADletra=c
ADlinea_sed=$ADnumero_linea_Address$ADletra
sed -i "$ADlinea_sed $var1" /home/orangepi/MMDVMHost/MMDVMBM.ini_copia2

#Port captura de la linea Address +1
numero_linea_Address=`expr $numero_linea_Address + 1` # Downloads
ADnumero_linea_Address=`expr $ADnumero_linea_Address + 1` # MMDVMHost
port=$(awk "NR==$numero_linea_Address" /home/orangepi/Downloads/MMDVMBM.ini_copia2)
ADletra=c
ADlinea_sed=$ADnumero_linea_Address$ADletra
sed -i "$ADlinea_sed $port" /home/orangepi/MMDVMHost/MMDVMBM.ini_copia2

#Password
var=`grep -n -m 1 '\<Password\>' /home/orangepi/Downloads/MMDVMBM.ini_copia2`
var1=`grep -m 1 '\<Password\>' /home/orangepi/Downloads/MMDVMBM.ini_copia2`
buscar=":"
largo_linea=`expr index $var $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea_password=`expr substr $var 1 $largo_linea`
PWvar=`grep -n -m 1 '\<Password\>' /home/orangepi/MMDVMHost/MMDVMBM.ini_copia2`
buscar=":"
PWlargo_linea=`expr index $PWvar $buscar`
PWlargo_linea=`expr $PWlargo_linea - 1`
PWnumero_linea_password=`expr substr $PWvar 1 $PWlargo_linea`
PWletra=c
PWlinea_sed=$PWnumero_linea_password$PWletra
sed -i "$PWlinea_sed $var1" /home/orangepi/MMDVMHost/MMDVMBM.ini_copia2

#Options linea password  +1
numero_linea_password=`expr $numero_linea_password + 1` # Downloads
PWnumero_linea_password=`expr $PWnumero_linea_password + 1` # MMDVMHost
option=$(awk "NR==$numero_linea_password" /home/orangepi/Downloads/MMDVMBM.ini_copia2)
PWletra=c
PWlinea_sed=$PWnumero_linea_password$PWletra
sed -i "$PWlinea_sed $option" /home/orangepi/MMDVMHost/MMDVMBM.ini_copia2

#ScreenLayout
var=`grep -n -m 1 '\<ScreenLayout\>' /home/orangepi/Downloads/MMDVMBM.ini_copia2`
var1=`grep -m 1 '\<ScreenLayout\>' /home/orangepi/Downloads/MMDVMBM.ini_copia2`
buscar=":"
largo_linea=`expr index $var $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea=`expr substr $var 1 $largo_linea`
SCvar=`grep -n -m 1 '\<ScreenLayout\>' /home/orangepi/MMDVMHost/MMDVMBM.ini_copia2`
buscar=":"
SClargo_linea=`expr index $SCvar $buscar`
SClargo_linea=`expr $SClargo_linea - 1`
SCnumero_linea=`expr substr $SCvar 1 $SClargo_linea`
SCletra=c
SClinea_sed=$SCnumero_linea$SCletra
sed -i "$SClinea_sed $var1" /home/orangepi/MMDVMHost/MMDVMBM.ini_copia2

#Brightness
var=`grep -n -m 1 '\<Brightness\>' /home/orangepi/Downloads/MMDVMBM.ini_copia2`
var1=`grep -m 1 '\<Brightness\>' /home/orangepi/Downloads/MMDVMBM.ini_copia2`
buscar=":"
largo_linea=`expr index $var $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea=`expr substr $var 1 $largo_linea`
BRvar=`grep -n -m 1 '\<Brightness\>' /home/orangepi/MMDVMHost/MMDVMBM.ini_copia2`
buscar=":"
BRlargo_linea=`expr index $BRvar $buscar`
BRlargo_linea=`expr $BRlargo_linea - 1`
BRnumero_linea=`expr substr $BRvar 1 $BRlargo_linea`
BRletra=c
BRlinea_sed=$BRnumero_linea$BRletra
sed -i "$BRlinea_sed $var1" /home/orangepi/MMDVMHost/MMDVMBM.ini_copia2

#Slot1
var=`grep -n -m 1 '\<Slot1\>' /home/orangepi/Downloads/MMDVMBM.ini_copia2`
var1=`grep -m 1 '\<Slot1\>' /home/orangepi/Downloads/MMDVMBM.ini_copia2`
buscar=":"
largo_linea=`expr index $var $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea=`expr substr $var 1 $largo_linea`
SLvar=`grep -n -m 1 '\<Slot1\>' /home/orangepi/MMDVMHost/MMDVMBM.ini_copia2`
buscar=":"
SLlargo_linea=`expr index $SLvar $buscar`
SLlargo_linea=`expr $SLlargo_linea - 1`
SLnumero_linea=`expr substr $SLvar 1 $SLlargo_linea`
SLletra=c
SLlinea_sed=$SLnumero_linea$SLletra
sed -i "$SLlinea_sed $var1" /home/orangepi/MMDVMHost/MMDVMBM.ini_copia2

#DisplayLevel
var=`grep -n -m 1 '\<DisplayLevel\>' /home/orangepi/Downloads/MMDVMBM.ini_copia2`
var1=`grep -m 1 '\<DisplayLevel\>' /home/orangepi/Downloads/MMDVMBM.ini_copia2`
buscar=":"
largo_linea=`expr index $var $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea=`expr substr $var 1 $largo_linea`
DIvar=`grep -n -m 1 '\<DisplayLevel\>' /home/orangepi/MMDVMHost/MMDVMBM.ini_copia2`
buscar=":"
DIlargo_linea=`expr index $DIvar $buscar`
DIlargo_linea=`expr $DIlargo_linea - 1`
DInumero_linea=`expr substr $DIvar 1 $DIlargo_linea`
DIletra=c
DIlinea_sed=$DInumero_linea$DIletra
sed -i "$DIlinea_sed $var1" /home/orangepi/MMDVMHost/MMDVMBM.ini_copia2

#TXHang
var=`grep -n -m 1 '\<TXHang\>' /home/orangepi/Downloads/MMDVMBM.ini_copia2`
var1=`grep -m 1 '\<TXHang\>' /home/orangepi/Downloads/MMDVMBM.ini_copia2`
buscar=":"
largo_linea=`expr index $var $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea=`expr substr $var 1 $largo_linea`
THvar=`grep -n -m 1 '\<TXHang\>' /home/orangepi/MMDVMHost/MMDVMBM.ini_copia2`
buscar=":"
THlargo_linea=`expr index $THvar $buscar`
THlargo_linea=`expr $THlargo_linea - 1`
THnumero_linea=`expr substr $THvar 1 $THlargo_linea`
THletra=c
THlinea_sed=$THnumero_linea$THletra
sed -i "$THlinea_sed $var1" /home/orangepi/MMDVMHost/MMDVMBM.ini_copia2

#D-Star
var=`grep -n -m 1 "\[D-Star\]" /home/orangepi/Downloads/MMDVMBM.ini_copia2` 
var1=`grep -m 1 "\[D-Star\]" /home/orangepi/Downloads/MMDVMBM.ini_copia2`
buscar=":"
largo_linea=`expr index $var $buscar` 
largo_linea=`expr $largo_linea - 1` 
numero_linea=`expr substr $var 1 $largo_linea` 
numero_linea_dstar=`expr $numero_linea + 1` 
DSvar=`grep -n -m 1 "\[D-Star\]" /home/orangepi/MMDVMHost/MMDVMBM.ini_copia2` 
DSvar1=`grep -m 1 "\[D-Star\]" /home/orangepi/MMDVMHost/MMDVMBM.ini_copia2`
buscar=":"
DSlargo_linea=`expr index $DSvar $buscar` 
DSlargo_linea=`expr $DSlargo_linea - 1` 
DSnumero_linea=`expr substr $DSvar 1 $DSlargo_linea` 
DSnumero_linea_dstar=`expr $DSnumero_linea + 1`
DSDS=$(awk "NR==$numero_linea_dstar" /home/orangepi/Downloads/MMDVMBM.ini_copia2) 
DSletrac=c
DSlinea_sed=$DSnumero_linea_dstar$DSletrac
sed -i "$DSlinea_sed $DSDS" /home/orangepi/MMDVMHost/MMDVMBM.ini_copia2

#DMR
var=`grep -n -m 1 "\[DMR\]" /home/orangepi/Downloads/MMDVMBM.ini_copia2` 
var1=`grep -m 1 "\[DMR\]" /home/orangepi/Downloads/MMDVMBM.ini_copia2`
buscar=":"
largo_linea=`expr index $var $buscar` 
largo_linea=`expr $largo_linea - 1` 
numero_linea=`expr substr $var 1 $largo_linea` 
numero_linea_dmr=`expr $numero_linea + 1` 
DMvar=`grep -n "\[DMR\]" /home/orangepi/MMDVMHost/MMDVMBM.ini_copia2` 
DMvar1=`grep -n -m 1 "\[DMR\]" /home/orangepi/MMDVMHost/MMDVMBM.ini_copia2`
buscar=":"
DMlargo_linea=`expr index $DMvar $buscar` 
DMlargo_linea=`expr $DMlargo_linea - 1` 
DMnumero_linea=`expr substr $DMvar 1 $DMlargo_linea` 
DMnumero_linea_dmr=`expr $DMnumero_linea + 1` 
DMDM=$(awk "NR==$numero_linea_dmr" /home/orangepi/Downloads/MMDVMBM.ini_copia2)
DMletrac=c
DMlinea_sed=$DMnumero_linea_dmr$DMletrac 
sed -i "$DMlinea_sed $DMDM" /home/orangepi/MMDVMHost/MMDVMBM.ini_copia2

#P25
var=`grep -n -m 1 "\[P25\]" /home/orangepi/Downloads/MMDVMBM.ini_copia2` 
var1=`grep -m 1 "\[P25\]" /home/orangepi/Downloads/MMDVMBM.ini_copia2`
buscar=":"
largo_linea=`expr index $var $buscar` 
largo_linea=`expr $largo_linea - 1` 
numero_linea=`expr substr $var 1 $largo_linea` 
numero_linea_p25=`expr $numero_linea + 1` 
P2var=`grep -n -m 1 "\[P25\]" /home/orangepi/MMDVMHost/MMDVMBM.ini_copia2` 
P2var1=`grep -n "\[P25\]" /home/orangepi/MMDVMHost/MMDVMBM.ini_copia2`
buscar=":"
P2largo_linea=`expr index $P2var $buscar` 
P2largo_linea=`expr $P2largo_linea - 1` 
P2numero_linea=`expr substr $P2var 1 $P2largo_linea` 
P2numero_linea_p25=`expr $P2numero_linea + 1` 
P2P2=$(awk "NR==$numero_linea_p25" /home/orangepi/Downloads/MMDVMBM.ini_copia2)
P2letrac=c
P2linea_sed=$P2numero_linea_p25$P2letrac
sed -i "$P2linea_sed $P2P2" /home/orangepi/MMDVMHost/MMDVMBM.ini_copia2

#FUSION
var1=`grep -n -m 1 "\[System Fusion\]" /home/orangepi/Downloads/MMDVMBM.ini_copia2`
var2=`echo "$var1" | tr -d '[[:space:]]'`
buscar=":"
largo_linea=`expr index $var2 $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea=`expr substr $var2 1 $largo_linea`
numero_linea=`expr $numero_linea + 1`
CWvar1=`grep -n -m 1 "\[System Fusion\]" /home/orangepi/MMDVMHost/MMDVMBM.ini_copia2`
CWvar2=`echo "$CWvar1" | tr -d '[[:space:]]'`
buscar=":"
CWlargo_linea=`expr index $CWvar2 $buscar`
CWlargo_linea=`expr $CWlargo_linea - 1`
CWnumero_linea=`expr substr $CWvar2 1 $CWlargo_linea`
CWnumero_linea=`expr $CWnumero_linea + 1`
CWCW=$(awk "NR==$CWnumero_linea" /home/orangepi/Downloads/MMDVMBM.ini_copia2)
CWletra=c
CWlinea_sed=$CWnumero_linea$CWletra
sed -i "$CWlinea_sed $CWCW" /home/orangepi/MMDVMHost/MMDVMBM.ini_copia2

#Nextion
var=`grep -n -m 1 "\[Nextion\]" /home/orangepi/Downloads/MMDVMBM.ini_copia2` 
var1=`grep -m 1 "\[Nextion\]" /home/orangepi/Downloads/MMDVMBM.ini_copia2`
buscar=":"
largo_linea=`expr index $var $buscar` 
largo_linea=`expr $largo_linea - 1` 
numero_linea=`expr substr $var 1 $largo_linea` 
numero_linea_p25=`expr $numero_linea + 2` 
P2var=`grep -n -m 1 "\[Nextion\]" /home/orangepi/MMDVMHost/MMDVMBM.ini_copia2` 
P2var1=`grep -n "\[Nextion\]" /home/orangepi/MMDVMHost/MMDVMBM.ini_copia2`
buscar=":"
P2largo_linea=`expr index $P2var $buscar` 
P2largo_linea=`expr $P2largo_linea - 1` 
P2numero_linea=`expr substr $P2var 1 $P2largo_linea` 
P2numero_linea_p25=`expr $P2numero_linea + 2` 
P2P2=$(awk "NR==$numero_linea_p25" /home/orangepi/Downloads/MMDVMBM.ini_copia2)
P2letrac=c
P2linea_sed=$P2numero_linea_p25$P2letrac
sed -i "$P2linea_sed $P2P2" /home/orangepi/MMDVMHost/MMDVMBM.ini_copia2
#======================= MMDVMBM.ini_copia3   ============================
#******************************************************************
# Callsign 
var=`grep -n -m 1 '\<Callsign\>' /home/orangepi/Downloads/MMDVMBM.ini_copia3` # 2:Callsign=EA3EIZ
var1=`grep -m 1 '\<Callsign\>' /home/orangepi/Downloads/MMDVMBM.ini_copia3` # Callsign=EA3EIZ
buscar=":"
largo_linea=`expr index $var $buscar` #comprueba el largo incluyendo los dos puntos (:)
largo_linea=`expr $largo_linea - 1` #comprueba el largo quitando los dos puntos (:)
numero_linea=`expr substr $var 1 $largo_linea` # recoge numero linea Downloads
Hvar=`grep -n -m 1 '\<Callsign\>' /home/orangepi/MMDVMHost/MMDVMBM.ini_copia3` # 2:Callsign=EA3EIZ
buscar=":"
Hlargo_linea=`expr index $Hvar $buscar` 
Hlargo_linea=`expr $Hlargo_linea - 1` 
Hnumero_linea=`expr substr $Hvar 1 $Hlargo_linea` # recoge numero linea MMDXVMHost
Hletra=c
Hlinea_sed=$Hnumero_linea$Hletra
sed -i "$Hlinea_sed $var1" /home/orangepi/MMDVMHost/MMDVMBM.ini_copia3

#Id capturado de la linea 3
Id=$(awk "NR==3" /home/orangepi/Downloads/MMDVMBM.ini_copia3)
sed -i "3c $Id" /home/orangepi/MMDVMHost/MMDVMBM.ini_copia3

#Timeout capturado de la linea 4
timeou=$(awk "NR==4" /home/orangepi/Downloads/MMDVMBM.ini_copia3)
sed -i "4c $timeou" /home/orangepi/MMDVMHost/MMDVMBM.ini_copia3

#Duplex
var=`grep -n -m 1 '\<Duplex\>' /home/orangepi/Downloads/MMDVMBM.ini_copia3`
var1=`grep -m 1 '\<Duplex\>' /home/orangepi/Downloads/MMDVMBM.ini_copia3`
buscar=":"
largo_linea=`expr index $var $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea=`expr substr $var 1 $largo_linea`
Dvar=`grep -n -m 1 '\<Duplex\>' /home/orangepi/MMDVMHost/MMDVMBM.ini_copia3`
buscar=":"
Dlargo_linea=`expr index $Dvar $buscar`
Dlargo_linea=`expr $Dlargo_linea - 1`
Dnumero_linea=`expr substr $Dvar 1 $Dlargo_linea`
Dletra=c
Dlinea_sed=$Dnumero_linea$Dletra
sed -i "$Dlinea_sed $var1" /home/orangepi/MMDVMHost/MMDVMBM.ini_copia3

#RFModeHang
var=`grep -n -m 1 '\<RFModeHang\>' /home/orangepi/Downloads/MMDVMBM.ini_copia3`
var1=`grep -m 1 '\<RFModeHang\>' /home/orangepi/Downloads/MMDVMBM.ini_copia3`
buscar=":"
largo_linea=`expr index $var $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea=`expr substr $var 1 $largo_linea`
Rvar=`grep -n -m 1 '\<RFModeHang\>' /home/orangepi/MMDVMHost/MMDVMBM.ini_copia3`
buscar=":"
Rlargo_linea=`expr index $Rvar $buscar`
Rlargo_linea=`expr $Rlargo_linea - 1`
Rnumero_linea=`expr substr $Rvar 1 $Rlargo_linea`
Rletra=c
Rlinea_sed=$Rnumero_linea$Rletra
sed -i "$Rlinea_sed $var1" /home/orangepi/MMDVMHost/MMDVMBM.ini_copia3

#Display
var=`grep -n -m 1 '\<Display\>' /home/orangepi/Downloads/MMDVMBM.ini_copia3`
var1=`grep -m 1 '\<Display\>' /home/orangepi/Downloads/MMDVMBM.ini_copia3`
buscar=":"
largo_linea=`expr index $var $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea=`expr substr $var 1 $largo_linea`
Dvar=`grep -n -m 1 '\<Display\>' /home/orangepi/MMDVMHost/MMDVMBM.ini_copia3`
buscar=":"
Dlargo_linea=`expr index $Dvar $buscar`
Dlargo_linea=`expr $Dlargo_linea - 1`
Dnumero_linea=`expr substr $Dvar 1 $Dlargo_linea`
Dletra=c
Dlinea_sed=$Dnumero_linea$Dletra
sed -i "$Dlinea_sed $var1" /home/orangepi/MMDVMHost/MMDVMBM.ini_copia3

#RXFrequency
var=`grep -n -m 1 '\<RXFrequency\>' /home/orangepi/Downloads/MMDVMBM.ini_copia3`
var1=`grep -m 1 '\<RXFrequency\>' /home/orangepi/Downloads/MMDVMBM.ini_copia3`
buscar=":"
largo_linea=`expr index $var $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea=`expr substr $var 1 $largo_linea`
Xvar=`grep -n -m 1 '\<RXFrequency\>' /home/orangepi/MMDVMHost/MMDVMBM.ini_copia3`
buscar=":"
Xlargo_linea=`expr index $Xvar $buscar`
Xlargo_linea=`expr $Xlargo_linea - 1`
Xnumero_linea=`expr substr $Xvar 1 $Xlargo_linea`
Xletra=c
Xlinea_sed=$Xnumero_linea$Xletra
sed -i "$Xlinea_sed $var1" /home/orangepi/MMDVMHost/MMDVMBM.ini_copia3

#TXFrequency
var=`grep -n -m 1 '\<TXFrequency\>' /home/orangepi/Downloads/MMDVMBM.ini_copia3`
var1=`grep -m 1 '\<TXFrequency\>' /home/orangepi/Downloads/MMDVMBM.ini_copia3`
buscar=":"
largo_linea=`expr index $var $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea=`expr substr $var 1 $largo_linea`
Tvar=`grep -n -m 1 '\<TXFrequency\>' /home/orangepi/MMDVMHost/MMDVMBM.ini_copia3`
buscar=":"
Tlargo_linea=`expr index $Tvar $buscar`
Tlargo_linea=`expr $Tlargo_linea - 1`
Tnumero_linea=`expr substr $Tvar 1 $Tlargo_linea`
Tletra=c
Tlinea_sed=$Tnumero_linea$Tletra
sed -i "$Tlinea_sed $var1" /home/orangepi/MMDVMHost/MMDVMBM.ini_copia3

#Latitude
var=`grep -n -m 1 '\<Latitude\>' /home/orangepi/Downloads/MMDVMBM.ini_copia3`
var1=`grep -m 1 '\<Latitude\>' /home/orangepi/Downloads/MMDVMBM.ini_copia3`
buscar=":"
largo_linea=`expr index $var $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea=`expr substr $var 1 $largo_linea`
Lvar=`grep -n -m 1 '\<Latitude\>' /home/orangepi/MMDVMHost/MMDVMBM.ini_copia3`
buscar=":"
Llargo_linea=`expr index $Lvar $buscar`
Llargo_linea=`expr $Llargo_linea - 1`
Lnumero_linea=`expr substr $Lvar 1 $Llargo_linea`
Lletra=c
Llinea_sed=$Lnumero_linea$Lletra
sed -i "$Llinea_sed $var1" /home/orangepi/MMDVMHost/MMDVMBM.ini_copia3

#Longitude
var=`grep -n -m 1 '\<Longitude\>' /home/orangepi/Downloads/MMDVMBM.ini_copia3`
var1=`grep -m 1 '\<Longitude\>' /home/orangepi/Downloads/MMDVMBM.ini_copia3`
buscar=":"
largo_linea=`expr index $var $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea=`expr substr $var 1 $largo_linea`
LGvar=`grep -n -m 1 '\<Longitude\>' /home/orangepi/MMDVMHost/MMDVMBM.ini_copia3`
buscar=":"
LGlargo_linea=`expr index $LGvar $buscar`
LGlargo_linea=`expr $LGlargo_linea - 1`
LGnumero_linea=`expr substr $LGvar 1 $LGlargo_linea`
LGletra=c
LGlinea_sed=$LGnumero_linea$LGletra
sed -i "$LGlinea_sed $var1" /home/orangepi/MMDVMHost/MMDVMBM.ini_copia3

#Location
var=`grep -n -m 1 '\<Location\>' /home/orangepi/Downloads/MMDVMBM.ini_copia3`
var1=`grep -m 1 '\<Location\>' /home/orangepi/Downloads/MMDVMBM.ini_copia3`
buscar=":"
largo_linea=`expr index $var $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea=`expr substr $var 1 $largo_linea`
LOvar=`grep -n -m 1 '\<Location\>' /home/orangepi/MMDVMHost/MMDVMBM.ini_copia3`
buscar=":"
LOlargo_linea=`expr index $LOvar $buscar`
LOlargo_linea=`expr $LOlargo_linea - 1`
LOnumero_linea=`expr substr $LOvar 1 $LOlargo_linea`
LOletra=c
LOlinea_sed=$LOnumero_linea$LOletra
sed -i "$LOlinea_sed $var1" /home/orangepi/MMDVMHost/MMDVMBM.ini_copia3

#URL
var=`grep -n -m 1 '\<URL\>' /home/orangepi/Downloads/MMDVMBM.ini_copia3`
var1=`grep -m 1 '\<URL\>' /home/orangepi/Downloads/MMDVMBM.ini_copia3`
buscar=":"
largo_linea=`expr index $var $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea_url=`expr substr $var 1 $largo_linea`
Uvar=`grep -n -m 1 '\<URL\>' /home/orangepi/MMDVMHost/MMDVMBM.ini_copia3`
Ubuscar=":"
Ulargo_linea=`expr index $Uvar $buscar`
Ulargo_linea=`expr $Ulargo_linea - 1`
Unumero_linea_url=`expr substr $Uvar 1 $largo_linea`
Uletra=c
Ulinea_sed=$Unumero_linea_url$Uletra
sed -i "$Ulinea_sed $var1" /home/orangepi/MMDVMHost/MMDVMBM.ini_copia3

#Baliza 
var1=`grep -n -m 1 "\[CW Id\]" /home/orangepi/Downloads/MMDVMBM.ini_copia3`
var2=`echo "$var1" | tr -d '[[:space:]]'`
buscar=":"
largo_linea=`expr index $var2 $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea=`expr substr $var2 1 $largo_linea`
numero_linea=`expr $numero_linea + 1`
CWvar1=`grep -n -m 1 "\[CW Id\]" /home/orangepi/MMDVMHost/MMDVMBM.ini_copia3`
CWvar2=`echo "$CWvar1" | tr -d '[[:space:]]'`
buscar=":"
CWlargo_linea=`expr index $CWvar2 $buscar`
CWlargo_linea=`expr $CWlargo_linea - 1`
CWnumero_linea=`expr substr $CWvar2 1 $CWlargo_linea`
CWnumero_linea=`expr $CWnumero_linea + 1`
CWCW=$(awk "NR==$CWnumero_linea" /home/orangepi/Downloads/MMDVMBM.ini_copia3)
CWletra=c
CWlinea_sed=$CWnumero_linea$CWletra
sed -i "$CWlinea_sed $CWCW" /home/orangepi/MMDVMHost/MMDVMBM.ini_copia3

#RXLevel
var=`grep -n -m 1 '\<RXLevel\>' /home/orangepi/Downloads/MMDVMBM.ini_copia3`
var1=`grep -m 1 '\<RXLevel\>' /home/orangepi/Downloads/MMDVMBM.ini_copia3`
buscar=":"
largo_linea=`expr index $var $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea=`expr substr $var 1 $largo_linea`
RLvar=`grep -n -m 1 '\<RXLevel\>' /home/orangepi/MMDVMHost/MMDVMBM.ini_copia3`
buscar=":"
RLlargo_linea=`expr index $RLvar $buscar`
RLlargo_linea=`expr $RLlargo_linea - 1`
RLnumero_linea=`expr substr $RLvar 1 $RLlargo_linea`
RLletra=c
RLlinea_sed=$RLnumero_linea$RLletra
sed -i "$RLlinea_sed $var1" /home/orangepi/MMDVMHost/MMDVMBM.ini_copia3

#TXLevel
var=`grep -n -m 1 '\<TXLevel\>' /home/orangepi/Downloads/MMDVMBM.ini_copia3`
var1=`grep -m 1 '\<TXLevel\>' /home/orangepi/Downloads/MMDVMBM.ini_copia3`
buscar=":"
largo_linea=`expr index $var $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea=`expr substr $var 1 $largo_linea`
TLvar=`grep -n -m 1 '\<TXLevel\>' /home/orangepi/MMDVMHost/MMDVMBM.ini_copia3`
buscar=":"
TLlargo_linea=`expr index $TLvar $buscar`
TLlargo_linea=`expr $TLlargo_linea - 1`
TLnumero_linea=`expr substr $TLvar 1 $TLlargo_linea`
TLletra=c
TLlinea_sed=$TLnumero_linea$TLletra
sed -i "$TLlinea_sed $var1" /home/orangepi/MMDVMHost/MMDVMBM.ini_copia3

#Module
var=`grep -n -m 1 '\<Module\>' /home/orangepi/Downloads/MMDVMBM.ini_copia3`
var1=`grep -m 1 '\<Module\>' /home/orangepi/Downloads/MMDVMBM.ini_copia3`
buscar=":"
largo_linea=`expr index $var $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea=`expr substr $var 1 $largo_linea`
MOvar=`grep -n -m 1 '\<Module\>' /home/orangepi/MMDVMHost/MMDVMBM.ini_copia3`
buscar=":"
MOlargo_linea=`expr index $MOvar $buscar`
MOlargo_linea=`expr $MOlargo_linea - 1`
MOnumero_linea=`expr substr $MOvar 1 $MOlargo_linea`
MOletra=c
MOlinea_sed=$MOnumero_linea$MOletra
sed -i "$MOlinea_sed $var1" /home/orangepi/MMDVMHost/MMDVMBM.ini_copia3

#Txinvert
var=`grep -n -m 1 '\<TXInvert\>' /home/orangepi/Downloads/MMDVMBM.ini_copia3`
var1=`grep -m 1 '\<TXInvert\>' /home/orangepi/Downloads/MMDVMBM.ini_copia3`
buscar=":"
largo_linea=`expr index $var $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea=`expr substr $var 1 $largo_linea`
TIvar=`grep -n -m 1 '\<TXInvert\>' /home/orangepi/MMDVMHost/MMDVMBM.ini_copia3`
buscar=":"
TIlargo_linea=`expr index $TIvar $buscar`
TIlargo_linea=`expr $TIlargo_linea - 1`
TInumero_linea=`expr substr $TIvar 1 $TIlargo_linea`
TIletra=c
TIlinea_sed=$TInumero_linea$TIletra
sed -i "$TIlinea_sed $var1" /home/orangepi/MMDVMHost/MMDVMBM.ini_copia3

#Modem capturado de la linea txinvert -1
numero_linea_MODEM=`expr $numero_linea - 1` # Downloads
MOnumero_linea_MODEM=`expr $TInumero_linea - 1` # MMDVMHost
modem=$(awk "NR==$numero_linea_MODEM" /home/orangepi/Downloads/MMDVMBM.ini_copia3)
TIletra=c
TIlinea_sed=$MOnumero_linea_MODEM$TIletra
sed -i "$TIlinea_sed $modem" /home/orangepi/MMDVMHost/MMDVMBM.ini_copia3

#Address
var=`grep -n -m 1 '\<Address\>' /home/orangepi/Downloads/MMDVMBM.ini_copia3`
var1=`grep -m 1 '\<Address\>' /home/orangepi/Downloads/MMDVMBM.ini_copia3`
buscar=":"
largo_linea=`expr index $var $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea_Address=`expr substr $var 1 $largo_linea`
ADvar=`grep -n -m 1 '\<Address\>' /home/orangepi/MMDVMHost/MMDVMBM.ini_copia3`
buscar=":"
ADlargo_linea=`expr index $ADvar $buscar`
ADlargo_linea=`expr $ADlargo_linea - 1`
ADnumero_linea_Address=`expr substr $ADvar 1 $ADlargo_linea`
ADletra=c
ADlinea_sed=$ADnumero_linea_Address$ADletra
sed -i "$ADlinea_sed $var1" /home/orangepi/MMDVMHost/MMDVMBM.ini_copia3

#Port captura de la linea Address +1
numero_linea_Address=`expr $numero_linea_Address + 1` # Downloads
ADnumero_linea_Address=`expr $ADnumero_linea_Address + 1` # MMDVMHost
port=$(awk "NR==$numero_linea_Address" /home/orangepi/Downloads/MMDVMBM.ini_copia3)
ADletra=c
ADlinea_sed=$ADnumero_linea_Address$ADletra
sed -i "$ADlinea_sed $port" /home/orangepi/MMDVMHost/MMDVMBM.ini_copia3

#Password
var=`grep -n -m 1 '\<Password\>' /home/orangepi/Downloads/MMDVMBM.ini_copia3`
var1=`grep -m 1 '\<Password\>' /home/orangepi/Downloads/MMDVMBM.ini_copia3`
buscar=":"
largo_linea=`expr index $var $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea_password=`expr substr $var 1 $largo_linea`
PWvar=`grep -n -m 1 '\<Password\>' /home/orangepi/MMDVMHost/MMDVMBM.ini_copia3`
buscar=":"
PWlargo_linea=`expr index $PWvar $buscar`
PWlargo_linea=`expr $PWlargo_linea - 1`
PWnumero_linea_password=`expr substr $PWvar 1 $PWlargo_linea`
PWletra=c
PWlinea_sed=$PWnumero_linea_password$PWletra
sed -i "$PWlinea_sed $var1" /home/orangepi/MMDVMHost/MMDVMBM.ini_copia3

#Options linea password  +1
numero_linea_password=`expr $numero_linea_password + 1` # Downloads
PWnumero_linea_password=`expr $PWnumero_linea_password + 1` # MMDVMHost
option=$(awk "NR==$numero_linea_password" /home/orangepi/Downloads/MMDVMBM.ini_copia3)
PWletra=c
PWlinea_sed=$PWnumero_linea_password$PWletra
sed -i "$PWlinea_sed $option" /home/orangepi/MMDVMHost/MMDVMBM.ini_copia3

#ScreenLayout
var=`grep -n -m 1 '\<ScreenLayout\>' /home/orangepi/Downloads/MMDVMBM.ini_copia3`
var1=`grep -m 1 '\<ScreenLayout\>' /home/orangepi/Downloads/MMDVMBM.ini_copia3`
buscar=":"
largo_linea=`expr index $var $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea=`expr substr $var 1 $largo_linea`
SCvar=`grep -n -m 1 '\<ScreenLayout\>' /home/orangepi/MMDVMHost/MMDVMBM.ini_copia3`
buscar=":"
SClargo_linea=`expr index $SCvar $buscar`
SClargo_linea=`expr $SClargo_linea - 1`
SCnumero_linea=`expr substr $SCvar 1 $SClargo_linea`
SCletra=c
SClinea_sed=$SCnumero_linea$SCletra
sed -i "$SClinea_sed $var1" /home/orangepi/MMDVMHost/MMDVMBM.ini_copia3

#Brightness
var=`grep -n -m 1 '\<Brightness\>' /home/orangepi/Downloads/MMDVMBM.ini_copia3`
var1=`grep -m 1 '\<Brightness\>' /home/orangepi/Downloads/MMDVMBM.ini_copia3`
buscar=":"
largo_linea=`expr index $var $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea=`expr substr $var 1 $largo_linea`
BRvar=`grep -n -m 1 '\<Brightness\>' /home/orangepi/MMDVMHost/MMDVMBM.ini_copia3`
buscar=":"
BRlargo_linea=`expr index $BRvar $buscar`
BRlargo_linea=`expr $BRlargo_linea - 1`
BRnumero_linea=`expr substr $BRvar 1 $BRlargo_linea`
BRletra=c
BRlinea_sed=$BRnumero_linea$BRletra
sed -i "$BRlinea_sed $var1" /home/orangepi/MMDVMHost/MMDVMBM.ini_copia3

#Slot1
var=`grep -n -m 1 '\<Slot1\>' /home/orangepi/Downloads/MMDVMBM.ini_copia3`
var1=`grep -m 1 '\<Slot1\>' /home/orangepi/Downloads/MMDVMBM.ini_copia3`
buscar=":"
largo_linea=`expr index $var $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea=`expr substr $var 1 $largo_linea`
SLvar=`grep -n -m 1 '\<Slot1\>' /home/orangepi/MMDVMHost/MMDVMBM.ini_copia3`
buscar=":"
SLlargo_linea=`expr index $SLvar $buscar`
SLlargo_linea=`expr $SLlargo_linea - 1`
SLnumero_linea=`expr substr $SLvar 1 $SLlargo_linea`
SLletra=c
SLlinea_sed=$SLnumero_linea$SLletra
sed -i "$SLlinea_sed $var1" /home/orangepi/MMDVMHost/MMDVMBM.ini_copia3

#DisplayLevel
var=`grep -n -m 1 '\<DisplayLevel\>' /home/orangepi/Downloads/MMDVMBM.ini_copia3`
var1=`grep -m 1 '\<DisplayLevel\>' /home/orangepi/Downloads/MMDVMBM.ini_copia3`
buscar=":"
largo_linea=`expr index $var $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea=`expr substr $var 1 $largo_linea`
DIvar=`grep -n -m 1 '\<DisplayLevel\>' /home/orangepi/MMDVMHost/MMDVMBM.ini_copia3`
buscar=":"
DIlargo_linea=`expr index $DIvar $buscar`
DIlargo_linea=`expr $DIlargo_linea - 1`
DInumero_linea=`expr substr $DIvar 1 $DIlargo_linea`
DIletra=c
DIlinea_sed=$DInumero_linea$DIletra
sed -i "$DIlinea_sed $var1" /home/orangepi/MMDVMHost/MMDVMBM.ini_copia3

#TXHang
var=`grep -n -m 1 '\<TXHang\>' /home/orangepi/Downloads/MMDVMBM.ini_copia3`
var1=`grep -m 1 '\<TXHang\>' /home/orangepi/Downloads/MMDVMBM.ini_copia3`
buscar=":"
largo_linea=`expr index $var $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea=`expr substr $var 1 $largo_linea`
THvar=`grep -n -m 1 '\<TXHang\>' /home/orangepi/MMDVMHost/MMDVMBM.ini_copia3`
buscar=":"
THlargo_linea=`expr index $THvar $buscar`
THlargo_linea=`expr $THlargo_linea - 1`
THnumero_linea=`expr substr $THvar 1 $THlargo_linea`
THletra=c
THlinea_sed=$THnumero_linea$THletra
sed -i "$THlinea_sed $var1" /home/orangepi/MMDVMHost/MMDVMBM.ini_copia3

#D-Star
var=`grep -n -m 1 "\[D-Star\]" /home/orangepi/Downloads/MMDVMBM.ini_copia3` 
var1=`grep -m 1 "\[D-Star\]" /home/orangepi/Downloads/MMDVMBM.ini_copia3`
buscar=":"
largo_linea=`expr index $var $buscar` 
largo_linea=`expr $largo_linea - 1` 
numero_linea=`expr substr $var 1 $largo_linea` 
numero_linea_dstar=`expr $numero_linea + 1` 
DSvar=`grep -n -m 1 "\[D-Star\]" /home/orangepi/MMDVMHost/MMDVMBM.ini_copia3` 
DSvar1=`grep -m 1 "\[D-Star\]" /home/orangepi/MMDVMHost/MMDVMBM.ini_copia3`
buscar=":"
DSlargo_linea=`expr index $DSvar $buscar` 
DSlargo_linea=`expr $DSlargo_linea - 1` 
DSnumero_linea=`expr substr $DSvar 1 $DSlargo_linea` 
DSnumero_linea_dstar=`expr $DSnumero_linea + 1`
DSDS=$(awk "NR==$numero_linea_dstar" /home/orangepi/Downloads/MMDVMBM.ini_copia3) 
DSletrac=c
DSlinea_sed=$DSnumero_linea_dstar$DSletrac
sed -i "$DSlinea_sed $DSDS" /home/orangepi/MMDVMHost/MMDVMBM.ini_copia3

#DMR
var=`grep -n -m 1 "\[DMR\]" /home/orangepi/Downloads/MMDVMBM.ini_copia3` 
var1=`grep -m 1 "\[DMR\]" /home/orangepi/Downloads/MMDVMBM.ini_copia3`
buscar=":"
largo_linea=`expr index $var $buscar` 
largo_linea=`expr $largo_linea - 1` 
numero_linea=`expr substr $var 1 $largo_linea` 
numero_linea_dmr=`expr $numero_linea + 1` 
DMvar=`grep -n "\[DMR\]" /home/orangepi/MMDVMHost/MMDVMBM.ini_copia3` 
DMvar1=`grep -n -m 1 "\[DMR\]" /home/orangepi/MMDVMHost/MMDVMBM.ini_copia3`
buscar=":"
DMlargo_linea=`expr index $DMvar $buscar` 
DMlargo_linea=`expr $DMlargo_linea - 1` 
DMnumero_linea=`expr substr $DMvar 1 $DMlargo_linea` 
DMnumero_linea_dmr=`expr $DMnumero_linea + 1` 
DMDM=$(awk "NR==$numero_linea_dmr" /home/orangepi/Downloads/MMDVMBM.ini_copia3)
DMletrac=c
DMlinea_sed=$DMnumero_linea_dmr$DMletrac 
sed -i "$DMlinea_sed $DMDM" /home/orangepi/MMDVMHost/MMDVMBM.ini_copia3

#P25
var=`grep -n -m 1 "\[P25\]" /home/orangepi/Downloads/MMDVMBM.ini_copia3` 
var1=`grep -m 1 "\[P25\]" /home/orangepi/Downloads/MMDVMBM.ini_copia3`
buscar=":"
largo_linea=`expr index $var $buscar` 
largo_linea=`expr $largo_linea - 1` 
numero_linea=`expr substr $var 1 $largo_linea` 
numero_linea_p25=`expr $numero_linea + 1` 
P2var=`grep -n -m 1 "\[P25\]" /home/orangepi/MMDVMHost/MMDVMBM.ini_copia3` 
P2var1=`grep -n "\[P25\]" /home/orangepi/MMDVMHost/MMDVMBM.ini_copia3`
buscar=":"
P2largo_linea=`expr index $P2var $buscar` 
P2largo_linea=`expr $P2largo_linea - 1` 
P2numero_linea=`expr substr $P2var 1 $P2largo_linea` 
P2numero_linea_p25=`expr $P2numero_linea + 1` 
P2P2=$(awk "NR==$numero_linea_p25" /home/orangepi/Downloads/MMDVMBM.ini_copia3)
P2letrac=c
P2linea_sed=$P2numero_linea_p25$P2letrac
sed -i "$P2linea_sed $P2P2" /home/orangepi/MMDVMHost/MMDVMBM.ini_copia3

#FUSION
var1=`grep -n -m 1 "\[System Fusion\]" /home/orangepi/Downloads/MMDVMBM.ini_copia3`
var2=`echo "$var1" | tr -d '[[:space:]]'`
buscar=":"
largo_linea=`expr index $var2 $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea=`expr substr $var2 1 $largo_linea`
numero_linea=`expr $numero_linea + 1`
CWvar1=`grep -n -m 1 "\[System Fusion\]" /home/orangepi/MMDVMHost/MMDVMBM.ini_copia3`
CWvar2=`echo "$CWvar1" | tr -d '[[:space:]]'`
buscar=":"
CWlargo_linea=`expr index $CWvar2 $buscar`
CWlargo_linea=`expr $CWlargo_linea - 1`
CWnumero_linea=`expr substr $CWvar2 1 $CWlargo_linea`
CWnumero_linea=`expr $CWnumero_linea + 1`
CWCW=$(awk "NR==$CWnumero_linea" /home/orangepi/Downloads/MMDVMBM.ini_copia3)
CWletra=c
CWlinea_sed=$CWnumero_linea$CWletra
sed -i "$CWlinea_sed $CWCW" /home/orangepi/MMDVMHost/MMDVMBM.ini_copia3

#Nextion
var=`grep -n -m 1 "\[Nextion\]" /home/orangepi/Downloads/MMDVMBM.ini_copia3` 
var1=`grep -m 1 "\[Nextion\]" /home/orangepi/Downloads/MMDVMBM.ini_copia3`
buscar=":"
largo_linea=`expr index $var $buscar` 
largo_linea=`expr $largo_linea - 1` 
numero_linea=`expr substr $var 1 $largo_linea` 
numero_linea_p25=`expr $numero_linea + 2` 
P2var=`grep -n -m 1 "\[Nextion\]" /home/orangepi/MMDVMHost/MMDVMBM.ini_copia3` 
P2var1=`grep -n "\[Nextion\]" /home/orangepi/MMDVMHost/MMDVMBM.ini_copia3`
buscar=":"
P2largo_linea=`expr index $P2var $buscar` 
P2largo_linea=`expr $P2largo_linea - 1` 
P2numero_linea=`expr substr $P2var 1 $P2largo_linea` 
P2numero_linea_p25=`expr $P2numero_linea + 2` 
P2P2=$(awk "NR==$numero_linea_p25" /home/orangepi/Downloads/MMDVMBM.ini_copia3)
P2letrac=c
P2linea_sed=$P2numero_linea_p25$P2letrac
sed -i "$P2linea_sed $P2P2" /home/orangepi/MMDVMHost/MMDVMBM.ini_copia3
#======================= MMDVMPLUS.ini   ============================
#******************************************************************
# Callsign 
var=`grep -n -m 1 '\<Callsign\>' /home/orangepi/Downloads/MMDVMPLUS.ini` # 2:Callsign=EA3EIZ
var1=`grep -m 1 '\<Callsign\>' /home/orangepi/Downloads/MMDVMPLUS.ini` # Callsign=EA3EIZ
buscar=":"
largo_linea=`expr index $var $buscar` #comprueba el largo incluyendo los dos puntos (:)
largo_linea=`expr $largo_linea - 1` #comprueba el largo quitando los dos puntos (:)
numero_linea=`expr substr $var 1 $largo_linea` # recoge numero linea Downloads
Hvar=`grep -n -m 1 '\<Callsign\>' /home/orangepi/MMDVMHost/MMDVMPLUS.ini` # 2:Callsign=EA3EIZ
buscar=":"
Hlargo_linea=`expr index $Hvar $buscar` 
Hlargo_linea=`expr $Hlargo_linea - 1` 
Hnumero_linea=`expr substr $Hvar 1 $Hlargo_linea` # recoge numero linea MMDXVMHost
Hletra=c
Hlinea_sed=$Hnumero_linea$Hletra
sed -i "$Hlinea_sed $var1" /home/orangepi/MMDVMHost/MMDVMPLUS.ini

#Id capturado de la linea 3
Id=$(awk "NR==3" /home/orangepi/Downloads/MMDVMPLUS.ini)
sed -i "3c $Id" /home/orangepi/MMDVMHost/MMDVMPLUS.ini

#Timeout capturado de la linea 4
timeou=$(awk "NR==4" /home/orangepi/Downloads/MMDVMPLUS.ini)
sed -i "4c $timeou" /home/orangepi/MMDVMHost/MMDVMPLUS.ini

#Duplex
var=`grep -n -m 1 '\<Duplex\>' /home/orangepi/Downloads/MMDVMPLUS.ini`
var1=`grep -m 1 '\<Duplex\>' /home/orangepi/Downloads/MMDVMPLUS.ini`
buscar=":"
largo_linea=`expr index $var $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea=`expr substr $var 1 $largo_linea`
Dvar=`grep -n -m 1 '\<Duplex\>' /home/orangepi/MMDVMHost/MMDVMPLUS.ini`
buscar=":"
Dlargo_linea=`expr index $Dvar $buscar`
Dlargo_linea=`expr $Dlargo_linea - 1`
Dnumero_linea=`expr substr $Dvar 1 $Dlargo_linea`
Dletra=c
Dlinea_sed=$Dnumero_linea$Dletra
sed -i "$Dlinea_sed $var1" /home/orangepi/MMDVMHost/MMDVMPLUS.ini

#RFModeHang
var=`grep -n -m 1 '\<RFModeHang\>' /home/orangepi/Downloads/MMDVMPLUS.ini`
var1=`grep -m 1 '\<RFModeHang\>' /home/orangepi/Downloads/MMDVMPLUS.ini`
buscar=":"
largo_linea=`expr index $var $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea=`expr substr $var 1 $largo_linea`
Rvar=`grep -n -m 1 '\<RFModeHang\>' /home/orangepi/MMDVMHost/MMDVMPLUS.ini`
buscar=":"
Rlargo_linea=`expr index $Rvar $buscar`
Rlargo_linea=`expr $Rlargo_linea - 1`
Rnumero_linea=`expr substr $Rvar 1 $Rlargo_linea`
Rletra=c
Rlinea_sed=$Rnumero_linea$Rletra
sed -i "$Rlinea_sed $var1" /home/orangepi/MMDVMHost/MMDVMPLUS.ini

#Display
var=`grep -n -m 1 '\<Display\>' /home/orangepi/Downloads/MMDVMPLUS.ini`
var1=`grep -m 1 '\<Display\>' /home/orangepi/Downloads/MMDVMPLUS.ini`
buscar=":"
largo_linea=`expr index $var $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea=`expr substr $var 1 $largo_linea`
Dvar=`grep -n -m 1 '\<Display\>' /home/orangepi/MMDVMHost/MMDVMPLUS.ini`
buscar=":"
Dlargo_linea=`expr index $Dvar $buscar`
Dlargo_linea=`expr $Dlargo_linea - 1`
Dnumero_linea=`expr substr $Dvar 1 $Dlargo_linea`
Dletra=c
Dlinea_sed=$Dnumero_linea$Dletra
sed -i "$Dlinea_sed $var1" /home/orangepi/MMDVMHost/MMDVMPLUS.ini

#RXFrequency
var=`grep -n -m 1 '\<RXFrequency\>' /home/orangepi/Downloads/MMDVMPLUS.ini`
var1=`grep -m 1 '\<RXFrequency\>' /home/orangepi/Downloads/MMDVMPLUS.ini`
buscar=":"
largo_linea=`expr index $var $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea=`expr substr $var 1 $largo_linea`
Xvar=`grep -n -m 1 '\<RXFrequency\>' /home/orangepi/MMDVMHost/MMDVMPLUS.ini`
buscar=":"
Xlargo_linea=`expr index $Xvar $buscar`
Xlargo_linea=`expr $Xlargo_linea - 1`
Xnumero_linea=`expr substr $Xvar 1 $Xlargo_linea`
Xletra=c
Xlinea_sed=$Xnumero_linea$Xletra
sed -i "$Xlinea_sed $var1" /home/orangepi/MMDVMHost/MMDVMPLUS.ini

#TXFrequency
var=`grep -n -m 1 '\<TXFrequency\>' /home/orangepi/Downloads/MMDVMPLUS.ini`
var1=`grep -m 1 '\<TXFrequency\>' /home/orangepi/Downloads/MMDVMPLUS.ini`
buscar=":"
largo_linea=`expr index $var $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea=`expr substr $var 1 $largo_linea`
Tvar=`grep -n -m 1 '\<TXFrequency\>' /home/orangepi/MMDVMHost/MMDVMPLUS.ini`
buscar=":"
Tlargo_linea=`expr index $Tvar $buscar`
Tlargo_linea=`expr $Tlargo_linea - 1`
Tnumero_linea=`expr substr $Tvar 1 $Tlargo_linea`
Tletra=c
Tlinea_sed=$Tnumero_linea$Tletra
sed -i "$Tlinea_sed $var1" /home/orangepi/MMDVMHost/MMDVMPLUS.ini

#Latitude
var=`grep -n -m 1 '\<Latitude\>' /home/orangepi/Downloads/MMDVMPLUS.ini`
var1=`grep -m 1 '\<Latitude\>' /home/orangepi/Downloads/MMDVMPLUS.ini`
buscar=":"
largo_linea=`expr index $var $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea=`expr substr $var 1 $largo_linea`
Lvar=`grep -n -m 1 '\<Latitude\>' /home/orangepi/MMDVMHost/MMDVMPLUS.ini`
buscar=":"
Llargo_linea=`expr index $Lvar $buscar`
Llargo_linea=`expr $Llargo_linea - 1`
Lnumero_linea=`expr substr $Lvar 1 $Llargo_linea`
Lletra=c
Llinea_sed=$Lnumero_linea$Lletra
sed -i "$Llinea_sed $var1" /home/orangepi/MMDVMHost/MMDVMPLUS.ini

#Longitude
var=`grep -n -m 1 '\<Longitude\>' /home/orangepi/Downloads/MMDVMPLUS.ini`
var1=`grep -m 1 '\<Longitude\>' /home/orangepi/Downloads/MMDVMPLUS.ini`
buscar=":"
largo_linea=`expr index $var $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea=`expr substr $var 1 $largo_linea`
LGvar=`grep -n -m 1 '\<Longitude\>' /home/orangepi/MMDVMHost/MMDVMPLUS.ini`
buscar=":"
LGlargo_linea=`expr index $LGvar $buscar`
LGlargo_linea=`expr $LGlargo_linea - 1`
LGnumero_linea=`expr substr $LGvar 1 $LGlargo_linea`
LGletra=c
LGlinea_sed=$LGnumero_linea$LGletra
sed -i "$LGlinea_sed $var1" /home/orangepi/MMDVMHost/MMDVMPLUS.ini

#Location
var=`grep -n -m 1 '\<Location\>' /home/orangepi/Downloads/MMDVMPLUS.ini`
var1=`grep -m 1 '\<Location\>' /home/orangepi/Downloads/MMDVMPLUS.ini`
buscar=":"
largo_linea=`expr index $var $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea=`expr substr $var 1 $largo_linea`
LOvar=`grep -n -m 1 '\<Location\>' /home/orangepi/MMDVMHost/MMDVMPLUS.ini`
buscar=":"
LOlargo_linea=`expr index $LOvar $buscar`
LOlargo_linea=`expr $LOlargo_linea - 1`
LOnumero_linea=`expr substr $LOvar 1 $LOlargo_linea`
LOletra=c
LOlinea_sed=$LOnumero_linea$LOletra
sed -i "$LOlinea_sed $var1" /home/orangepi/MMDVMHost/MMDVMPLUS.ini

#URL
var=`grep -n -m 1 '\<URL\>' /home/orangepi/Downloads/MMDVMPLUS.ini`
var1=`grep -m 1 '\<URL\>' /home/orangepi/Downloads/MMDVMPLUS.ini`
buscar=":"
largo_linea=`expr index $var $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea_url=`expr substr $var 1 $largo_linea`
Uvar=`grep -n -m 1 '\<URL\>' /home/orangepi/MMDVMHost/MMDVMPLUS.ini`
Ubuscar=":"
Ulargo_linea=`expr index $Uvar $buscar`
Ulargo_linea=`expr $Ulargo_linea - 1`
Unumero_linea_url=`expr substr $Uvar 1 $largo_linea`
Uletra=c
Ulinea_sed=$Unumero_linea_url$Uletra
sed -i "$Ulinea_sed $var1" /home/orangepi/MMDVMHost/MMDVMPLUS.ini

#Baliza 
var1=`grep -n -m 1 "\[CW Id\]" /home/orangepi/Downloads/MMDVMPLUS.ini`
var2=`echo "$var1" | tr -d '[[:space:]]'`
buscar=":"
largo_linea=`expr index $var2 $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea=`expr substr $var2 1 $largo_linea`
numero_linea=`expr $numero_linea + 1`
CWvar1=`grep -n -m 1 "\[CW Id\]" /home/orangepi/MMDVMHost/MMDVMPLUS.ini`
CWvar2=`echo "$CWvar1" | tr -d '[[:space:]]'`
buscar=":"
CWlargo_linea=`expr index $CWvar2 $buscar`
CWlargo_linea=`expr $CWlargo_linea - 1`
CWnumero_linea=`expr substr $CWvar2 1 $CWlargo_linea`
CWnumero_linea=`expr $CWnumero_linea + 1`
CWCW=$(awk "NR==$CWnumero_linea" /home/orangepi/Downloads/MMDVMPLUS.ini)
CWletra=c
CWlinea_sed=$CWnumero_linea$CWletra
sed -i "$CWlinea_sed $CWCW" /home/orangepi/MMDVMHost/MMDVMPLUS.ini

#RXLevel
var=`grep -n -m 1 '\<RXLevel\>' /home/orangepi/Downloads/MMDVMPLUS.ini`
var1=`grep -m 1 '\<RXLevel\>' /home/orangepi/Downloads/MMDVMPLUS.ini`
buscar=":"
largo_linea=`expr index $var $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea=`expr substr $var 1 $largo_linea`
RLvar=`grep -n -m 1 '\<RXLevel\>' /home/orangepi/MMDVMHost/MMDVMPLUS.ini`
buscar=":"
RLlargo_linea=`expr index $RLvar $buscar`
RLlargo_linea=`expr $RLlargo_linea - 1`
RLnumero_linea=`expr substr $RLvar 1 $RLlargo_linea`
RLletra=c
RLlinea_sed=$RLnumero_linea$RLletra
sed -i "$RLlinea_sed $var1" /home/orangepi/MMDVMHost/MMDVMPLUS.ini

#TXLevel
var=`grep -n -m 1 '\<TXLevel\>' /home/orangepi/Downloads/MMDVMPLUS.ini`
var1=`grep -m 1 '\<TXLevel\>' /home/orangepi/Downloads/MMDVMPLUS.ini`
buscar=":"
largo_linea=`expr index $var $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea=`expr substr $var 1 $largo_linea`
TLvar=`grep -n -m 1 '\<TXLevel\>' /home/orangepi/MMDVMHost/MMDVMPLUS.ini`
buscar=":"
TLlargo_linea=`expr index $TLvar $buscar`
TLlargo_linea=`expr $TLlargo_linea - 1`
TLnumero_linea=`expr substr $TLvar 1 $TLlargo_linea`
TLletra=c
TLlinea_sed=$TLnumero_linea$TLletra
sed -i "$TLlinea_sed $var1" /home/orangepi/MMDVMHost/MMDVMPLUS.ini

#Module
var=`grep -n -m 1 '\<Module\>' /home/orangepi/Downloads/MMDVMPLUS.ini`
var1=`grep -m 1 '\<Module\>' /home/orangepi/Downloads/MMDVMPLUS.ini`
buscar=":"
largo_linea=`expr index $var $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea=`expr substr $var 1 $largo_linea`
MOvar=`grep -n -m 1 '\<Module\>' /home/orangepi/MMDVMHost/MMDVMPLUS.ini`
buscar=":"
MOlargo_linea=`expr index $MOvar $buscar`
MOlargo_linea=`expr $MOlargo_linea - 1`
MOnumero_linea=`expr substr $MOvar 1 $MOlargo_linea`
MOletra=c
MOlinea_sed=$MOnumero_linea$MOletra
sed -i "$MOlinea_sed $var1" /home/orangepi/MMDVMHost/MMDVMPLUS.ini

#Txinvert
var=`grep -n -m 1 '\<TXInvert\>' /home/orangepi/Downloads/MMDVMPLUS.ini`
var1=`grep -m 1 '\<TXInvert\>' /home/orangepi/Downloads/MMDVMPLUS.ini`
buscar=":"
largo_linea=`expr index $var $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea=`expr substr $var 1 $largo_linea`
TIvar=`grep -n -m 1 '\<TXInvert\>' /home/orangepi/MMDVMHost/MMDVMPLUS.ini`
buscar=":"
TIlargo_linea=`expr index $TIvar $buscar`
TIlargo_linea=`expr $TIlargo_linea - 1`
TInumero_linea=`expr substr $TIvar 1 $TIlargo_linea`
TIletra=c
TIlinea_sed=$TInumero_linea$TIletra
sed -i "$TIlinea_sed $var1" /home/orangepi/MMDVMHost/MMDVMPLUS.ini

#Modem capturado de la linea txinvert -1
numero_linea_MODEM=`expr $numero_linea - 1` # Downloads
MOnumero_linea_MODEM=`expr $TInumero_linea - 1` # MMDVMHost
modem=$(awk "NR==$numero_linea_MODEM" /home/orangepi/Downloads/MMDVMPLUS.ini)
TIletra=c
TIlinea_sed=$MOnumero_linea_MODEM$TIletra
sed -i "$TIlinea_sed $modem" /home/orangepi/MMDVMHost/MMDVMPLUS.ini

#Address
var=`grep -n -m 1 '\<Address\>' /home/orangepi/Downloads/MMDVMPLUS.ini`
var1=`grep -m 1 '\<Address\>' /home/orangepi/Downloads/MMDVMPLUS.ini`
buscar=":"
largo_linea=`expr index $var $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea_Address=`expr substr $var 1 $largo_linea`
ADvar=`grep -n -m 1 '\<Address\>' /home/orangepi/MMDVMHost/MMDVMPLUS.ini`
buscar=":"
ADlargo_linea=`expr index $ADvar $buscar`
ADlargo_linea=`expr $ADlargo_linea - 1`
ADnumero_linea_Address=`expr substr $ADvar 1 $ADlargo_linea`
ADletra=c
ADlinea_sed=$ADnumero_linea_Address$ADletra
sed -i "$ADlinea_sed $var1" /home/orangepi/MMDVMHost/MMDVMPLUS.ini

#Port captura de la linea Address +1
numero_linea_Address=`expr $numero_linea_Address + 1` # Downloads
ADnumero_linea_Address=`expr $ADnumero_linea_Address + 1` # MMDVMHost
port=$(awk "NR==$numero_linea_Address" /home/orangepi/Downloads/MMDVMPLUS.ini)
ADletra=c
ADlinea_sed=$ADnumero_linea_Address$ADletra
sed -i "$ADlinea_sed $port" /home/orangepi/MMDVMHost/MMDVMPLUS.ini

#Password
var=`grep -n -m 1 '\<Password\>' /home/orangepi/Downloads/MMDVMPLUS.ini`
var1=`grep -m 1 '\<Password\>' /home/orangepi/Downloads/MMDVMPLUS.ini`
buscar=":"
largo_linea=`expr index $var $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea_password=`expr substr $var 1 $largo_linea`
PWvar=`grep -n -m 1 '\<Password\>' /home/orangepi/MMDVMHost/MMDVMPLUS.ini`
buscar=":"
PWlargo_linea=`expr index $PWvar $buscar`
PWlargo_linea=`expr $PWlargo_linea - 1`
PWnumero_linea_password=`expr substr $PWvar 1 $PWlargo_linea`
PWletra=c
PWlinea_sed=$PWnumero_linea_password$PWletra
sed -i "$PWlinea_sed $var1" /home/orangepi/MMDVMHost/MMDVMPLUS.ini

#Options linea password  +1
numero_linea_password=`expr $numero_linea_password + 1` # Downloads
PWnumero_linea_password=`expr $PWnumero_linea_password + 1` # MMDVMHost
option=$(awk "NR==$numero_linea_password" /home/orangepi/Downloads/MMDVMPLUS.ini)
PWletra=c
PWlinea_sed=$PWnumero_linea_password$PWletra
sed -i "$PWlinea_sed $option" /home/orangepi/MMDVMHost/MMDVMPLUS.ini

#ScreenLayout
var=`grep -n -m 1 '\<ScreenLayout\>' /home/orangepi/Downloads/MMDVMPLUS.ini`
var1=`grep -m 1 '\<ScreenLayout\>' /home/orangepi/Downloads/MMDVMPLUS.ini`
buscar=":"
largo_linea=`expr index $var $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea=`expr substr $var 1 $largo_linea`
SCvar=`grep -n -m 1 '\<ScreenLayout\>' /home/orangepi/MMDVMHost/MMDVMPLUS.ini`
buscar=":"
SClargo_linea=`expr index $SCvar $buscar`
SClargo_linea=`expr $SClargo_linea - 1`
SCnumero_linea=`expr substr $SCvar 1 $SClargo_linea`
SCletra=c
SClinea_sed=$SCnumero_linea$SCletra
sed -i "$SClinea_sed $var1" /home/orangepi/MMDVMHost/MMDVMPLUS.ini

#Brightness
var=`grep -n -m 1 '\<Brightness\>' /home/orangepi/Downloads/MMDVMPLUS.ini`
var1=`grep -m 1 '\<Brightness\>' /home/orangepi/Downloads/MMDVMPLUS.ini`
buscar=":"
largo_linea=`expr index $var $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea=`expr substr $var 1 $largo_linea`
BRvar=`grep -n -m 1 '\<Brightness\>' /home/orangepi/MMDVMHost/MMDVMPLUS.ini`
buscar=":"
BRlargo_linea=`expr index $BRvar $buscar`
BRlargo_linea=`expr $BRlargo_linea - 1`
BRnumero_linea=`expr substr $BRvar 1 $BRlargo_linea`
BRletra=c
BRlinea_sed=$BRnumero_linea$BRletra
sed -i "$BRlinea_sed $var1" /home/orangepi/MMDVMHost/MMDVMPLUS.ini

#Slot1
var=`grep -n -m 1 '\<Slot1\>' /home/orangepi/Downloads/MMDVMPLUS.ini`
var1=`grep -m 1 '\<Slot1\>' /home/orangepi/Downloads/MMDVMPLUS.ini`
buscar=":"
largo_linea=`expr index $var $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea=`expr substr $var 1 $largo_linea`
SLvar=`grep -n -m 1 '\<Slot1\>' /home/orangepi/MMDVMHost/MMDVMPLUS.ini`
buscar=":"
SLlargo_linea=`expr index $SLvar $buscar`
SLlargo_linea=`expr $SLlargo_linea - 1`
SLnumero_linea=`expr substr $SLvar 1 $SLlargo_linea`
SLletra=c
SLlinea_sed=$SLnumero_linea$SLletra
sed -i "$SLlinea_sed $var1" /home/orangepi/MMDVMHost/MMDVMPLUS.ini

#DisplayLevel
var=`grep -n -m 1 '\<DisplayLevel\>' /home/orangepi/Downloads/MMDVMPLUS.ini`
var1=`grep -m 1 '\<DisplayLevel\>' /home/orangepi/Downloads/MMDVMPLUS.ini`
buscar=":"
largo_linea=`expr index $var $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea=`expr substr $var 1 $largo_linea`
DIvar=`grep -n -m 1 '\<DisplayLevel\>' /home/orangepi/MMDVMHost/MMDVMPLUS.ini`
buscar=":"
DIlargo_linea=`expr index $DIvar $buscar`
DIlargo_linea=`expr $DIlargo_linea - 1`
DInumero_linea=`expr substr $DIvar 1 $DIlargo_linea`
DIletra=c
DIlinea_sed=$DInumero_linea$DIletra
sed -i "$DIlinea_sed $var1" /home/orangepi/MMDVMHost/MMDVMPLUS.ini

#TXHang
var=`grep -n -m 1 '\<TXHang\>' /home/orangepi/Downloads/MMDVMPLUS.ini`
var1=`grep -m 1 '\<TXHang\>' /home/orangepi/Downloads/MMDVMPLUS.ini`
buscar=":"
largo_linea=`expr index $var $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea=`expr substr $var 1 $largo_linea`
THvar=`grep -n -m 1 '\<TXHang\>' /home/orangepi/MMDVMHost/MMDVMPLUS.ini`
buscar=":"
THlargo_linea=`expr index $THvar $buscar`
THlargo_linea=`expr $THlargo_linea - 1`
THnumero_linea=`expr substr $THvar 1 $THlargo_linea`
THletra=c
THlinea_sed=$THnumero_linea$THletra
sed -i "$THlinea_sed $var1" /home/orangepi/MMDVMHost/MMDVMPLUS.ini

#D-Star
var=`grep -n -m 1 "\[D-Star\]" /home/orangepi/Downloads/MMDVMPLUS.ini` 
var1=`grep -m 1 "\[D-Star\]" /home/orangepi/Downloads/MMDVMPLUS.ini`
buscar=":"
largo_linea=`expr index $var $buscar` 
largo_linea=`expr $largo_linea - 1` 
numero_linea=`expr substr $var 1 $largo_linea` 
numero_linea_dstar=`expr $numero_linea + 1` 
DSvar=`grep -n -m 1 "\[D-Star\]" /home/orangepi/MMDVMHost/MMDVMPLUS.ini` 
DSvar1=`grep -m 1 "\[D-Star\]" /home/orangepi/MMDVMHost/MMDVMPLUS.ini`
buscar=":"
DSlargo_linea=`expr index $DSvar $buscar` 
DSlargo_linea=`expr $DSlargo_linea - 1` 
DSnumero_linea=`expr substr $DSvar 1 $DSlargo_linea` 
DSnumero_linea_dstar=`expr $DSnumero_linea + 1`
DSDS=$(awk "NR==$numero_linea_dstar" /home/orangepi/Downloads/MMDVMPLUS.ini) 
DSletrac=c
DSlinea_sed=$DSnumero_linea_dstar$DSletrac
sed -i "$DSlinea_sed $DSDS" /home/orangepi/MMDVMHost/MMDVMPLUS.ini

#DMR
var=`grep -n -m 1 "\[DMR\]" /home/orangepi/Downloads/MMDVMPLUS.ini` 
var1=`grep -m 1 "\[DMR\]" /home/orangepi/Downloads/MMDVMPLUS.ini`
buscar=":"
largo_linea=`expr index $var $buscar` 
largo_linea=`expr $largo_linea - 1` 
numero_linea=`expr substr $var 1 $largo_linea` 
numero_linea_dmr=`expr $numero_linea + 1` 
DMvar=`grep -n "\[DMR\]" /home/orangepi/MMDVMHost/MMDVMPLUS.ini` 
DMvar1=`grep -n -m 1 "\[DMR\]" /home/orangepi/MMDVMHost/MMDVMPLUS.ini`
buscar=":"
DMlargo_linea=`expr index $DMvar $buscar` 
DMlargo_linea=`expr $DMlargo_linea - 1` 
DMnumero_linea=`expr substr $DMvar 1 $DMlargo_linea` 
DMnumero_linea_dmr=`expr $DMnumero_linea + 1` 
DMDM=$(awk "NR==$numero_linea_dmr" /home/orangepi/Downloads/MMDVMPLUS.ini)
DMletrac=c
DMlinea_sed=$DMnumero_linea_dmr$DMletrac 
sed -i "$DMlinea_sed $DMDM" /home/orangepi/MMDVMHost/MMDVMPLUS.ini

#P25
var=`grep -n -m 1 "\[P25\]" /home/orangepi/Downloads/MMDVMPLUS.ini` 
var1=`grep -m 1 "\[P25\]" /home/orangepi/Downloads/MMDVMPLUS.ini`
buscar=":"
largo_linea=`expr index $var $buscar` 
largo_linea=`expr $largo_linea - 1` 
numero_linea=`expr substr $var 1 $largo_linea` 
numero_linea_p25=`expr $numero_linea + 1` 
P2var=`grep -n -m 1 "\[P25\]" /home/orangepi/MMDVMHost/MMDVMPLUS.ini` 
P2var1=`grep -n "\[P25\]" /home/orangepi/MMDVMHost/MMDVMPLUS.ini`
buscar=":"
P2largo_linea=`expr index $P2var $buscar` 
P2largo_linea=`expr $P2largo_linea - 1` 
P2numero_linea=`expr substr $P2var 1 $P2largo_linea` 
P2numero_linea_p25=`expr $P2numero_linea + 1` 
P2P2=$(awk "NR==$numero_linea_p25" /home/orangepi/Downloads/MMDVMPLUS.ini)
P2letrac=c
P2linea_sed=$P2numero_linea_p25$P2letrac
sed -i "$P2linea_sed $P2P2" /home/orangepi/MMDVMHost/MMDVMPLUS.ini

#FUSION
var1=`grep -n -m 1 "\[System Fusion\]" /home/orangepi/Downloads/MMDVMPLUS.ini`
var2=`echo "$var1" | tr -d '[[:space:]]'`
buscar=":"
largo_linea=`expr index $var2 $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea=`expr substr $var2 1 $largo_linea`
numero_linea=`expr $numero_linea + 1`
CWvar1=`grep -n -m 1 "\[System Fusion\]" /home/orangepi/MMDVMHost/MMDVMPLUS.ini`
CWvar2=`echo "$CWvar1" | tr -d '[[:space:]]'`
buscar=":"
CWlargo_linea=`expr index $CWvar2 $buscar`
CWlargo_linea=`expr $CWlargo_linea - 1`
CWnumero_linea=`expr substr $CWvar2 1 $CWlargo_linea`
CWnumero_linea=`expr $CWnumero_linea + 1`
CWCW=$(awk "NR==$CWnumero_linea" /home/orangepi/Downloads/MMDVMPLUS.ini)
CWletra=c
CWlinea_sed=$CWnumero_linea$CWletra
sed -i "$CWlinea_sed $CWCW" /home/orangepi/MMDVMHost/MMDVMPLUS.ini

#Nextion
var=`grep -n -m 1 "\[Nextion\]" /home/orangepi/Downloads/MMDVMPLUS.ini` 
var1=`grep -m 1 "\[Nextion\]" /home/orangepi/Downloads/MMDVMPLUS.ini`
buscar=":"
largo_linea=`expr index $var $buscar` 
largo_linea=`expr $largo_linea - 1` 
numero_linea=`expr substr $var 1 $largo_linea` 
numero_linea_p25=`expr $numero_linea + 2` 
P2var=`grep -n -m 1 "\[Nextion\]" /home/orangepi/MMDVMHost/MMDVMPLUS.ini` 
P2var1=`grep -n "\[Nextion\]" /home/orangepi/MMDVMHost/MMDVMPLUS.ini`
buscar=":"
P2largo_linea=`expr index $P2var $buscar` 
P2largo_linea=`expr $P2largo_linea - 1` 
P2numero_linea=`expr substr $P2var 1 $P2largo_linea` 
P2numero_linea_p25=`expr $P2numero_linea + 2` 
P2P2=$(awk "NR==$numero_linea_p25" /home/orangepi/Downloads/MMDVMPLUS.ini)
P2letrac=c
P2linea_sed=$P2numero_linea_p25$P2letrac
sed -i "$P2linea_sed $P2P2" /home/orangepi/MMDVMHost/MMDVMPLUS.ini
#======================= MMDVMPLUS.ini_copia   ============================
#******************************************************************
# Callsign 
var=`grep -n -m 1 '\<Callsign\>' /home/orangepi/Downloads/MMDVMPLUS.ini_copia` # 2:Callsign=EA3EIZ
var1=`grep -m 1 '\<Callsign\>' /home/orangepi/Downloads/MMDVMPLUS.ini_copia` # Callsign=EA3EIZ
buscar=":"
largo_linea=`expr index $var $buscar` #comprueba el largo incluyendo los dos puntos (:)
largo_linea=`expr $largo_linea - 1` #comprueba el largo quitando los dos puntos (:)
numero_linea=`expr substr $var 1 $largo_linea` # recoge numero linea Downloads
Hvar=`grep -n -m 1 '\<Callsign\>' /home/orangepi/MMDVMHost/MMDVMPLUS.ini_copia` # 2:Callsign=EA3EIZ
buscar=":"
Hlargo_linea=`expr index $Hvar $buscar` 
Hlargo_linea=`expr $Hlargo_linea - 1` 
Hnumero_linea=`expr substr $Hvar 1 $Hlargo_linea` # recoge numero linea MMDXVMHost
Hletra=c
Hlinea_sed=$Hnumero_linea$Hletra
sed -i "$Hlinea_sed $var1" /home/orangepi/MMDVMHost/MMDVMPLUS.ini_copia

#Id capturado de la linea 3
Id=$(awk "NR==3" /home/orangepi/Downloads/MMDVMPLUS.ini_copia)
sed -i "3c $Id" /home/orangepi/MMDVMHost/MMDVMPLUS.ini_copia

#Timeout capturado de la linea 4
timeou=$(awk "NR==4" /home/orangepi/Downloads/MMDVMPLUS.ini_copia)
sed -i "4c $timeou" /home/orangepi/MMDVMHost/MMDVMPLUS.ini_copia

#Duplex
var=`grep -n -m 1 '\<Duplex\>' /home/orangepi/Downloads/MMDVMPLUS.ini_copia`
var1=`grep -m 1 '\<Duplex\>' /home/orangepi/Downloads/MMDVMPLUS.ini_copia`
buscar=":"
largo_linea=`expr index $var $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea=`expr substr $var 1 $largo_linea`
Dvar=`grep -n -m 1 '\<Duplex\>' /home/orangepi/MMDVMHost/MMDVMPLUS.ini_copia`
buscar=":"
Dlargo_linea=`expr index $Dvar $buscar`
Dlargo_linea=`expr $Dlargo_linea - 1`
Dnumero_linea=`expr substr $Dvar 1 $Dlargo_linea`
Dletra=c
Dlinea_sed=$Dnumero_linea$Dletra
sed -i "$Dlinea_sed $var1" /home/orangepi/MMDVMHost/MMDVMPLUS.ini_copia

#RFModeHang
var=`grep -n -m 1 '\<RFModeHang\>' /home/orangepi/Downloads/MMDVMPLUS.ini_copia`
var1=`grep -m 1 '\<RFModeHang\>' /home/orangepi/Downloads/MMDVMPLUS.ini_copia`
buscar=":"
largo_linea=`expr index $var $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea=`expr substr $var 1 $largo_linea`
Rvar=`grep -n -m 1 '\<RFModeHang\>' /home/orangepi/MMDVMHost/MMDVMPLUS.ini_copia`
buscar=":"
Rlargo_linea=`expr index $Rvar $buscar`
Rlargo_linea=`expr $Rlargo_linea - 1`
Rnumero_linea=`expr substr $Rvar 1 $Rlargo_linea`
Rletra=c
Rlinea_sed=$Rnumero_linea$Rletra
sed -i "$Rlinea_sed $var1" /home/orangepi/MMDVMHost/MMDVMPLUS.ini_copia

#Display
var=`grep -n -m 1 '\<Display\>' /home/orangepi/Downloads/MMDVMPLUS.ini_copia`
var1=`grep -m 1 '\<Display\>' /home/orangepi/Downloads/MMDVMPLUS.ini_copia`
buscar=":"
largo_linea=`expr index $var $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea=`expr substr $var 1 $largo_linea`
Dvar=`grep -n -m 1 '\<Display\>' /home/orangepi/MMDVMHost/MMDVMPLUS.ini_copia`
buscar=":"
Dlargo_linea=`expr index $Dvar $buscar`
Dlargo_linea=`expr $Dlargo_linea - 1`
Dnumero_linea=`expr substr $Dvar 1 $Dlargo_linea`
Dletra=c
Dlinea_sed=$Dnumero_linea$Dletra
sed -i "$Dlinea_sed $var1" /home/orangepi/MMDVMHost/MMDVMPLUS.ini_copia

#RXFrequency
var=`grep -n -m 1 '\<RXFrequency\>' /home/orangepi/Downloads/MMDVMPLUS.ini_copia`
var1=`grep -m 1 '\<RXFrequency\>' /home/orangepi/Downloads/MMDVMPLUS.ini_copia`
buscar=":"
largo_linea=`expr index $var $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea=`expr substr $var 1 $largo_linea`
Xvar=`grep -n -m 1 '\<RXFrequency\>' /home/orangepi/MMDVMHost/MMDVMPLUS.ini_copia`
buscar=":"
Xlargo_linea=`expr index $Xvar $buscar`
Xlargo_linea=`expr $Xlargo_linea - 1`
Xnumero_linea=`expr substr $Xvar 1 $Xlargo_linea`
Xletra=c
Xlinea_sed=$Xnumero_linea$Xletra
sed -i "$Xlinea_sed $var1" /home/orangepi/MMDVMHost/MMDVMPLUS.ini_copia

#TXFrequency
var=`grep -n -m 1 '\<TXFrequency\>' /home/orangepi/Downloads/MMDVMPLUS.ini_copia`
var1=`grep -m 1 '\<TXFrequency\>' /home/orangepi/Downloads/MMDVMPLUS.ini_copia`
buscar=":"
largo_linea=`expr index $var $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea=`expr substr $var 1 $largo_linea`
Tvar=`grep -n -m 1 '\<TXFrequency\>' /home/orangepi/MMDVMHost/MMDVMPLUS.ini_copia`
buscar=":"
Tlargo_linea=`expr index $Tvar $buscar`
Tlargo_linea=`expr $Tlargo_linea - 1`
Tnumero_linea=`expr substr $Tvar 1 $Tlargo_linea`
Tletra=c
Tlinea_sed=$Tnumero_linea$Tletra
sed -i "$Tlinea_sed $var1" /home/orangepi/MMDVMHost/MMDVMPLUS.ini_copia

#Latitude
var=`grep -n -m 1 '\<Latitude\>' /home/orangepi/Downloads/MMDVMPLUS.ini_copia`
var1=`grep -m 1 '\<Latitude\>' /home/orangepi/Downloads/MMDVMPLUS.ini_copia`
buscar=":"
largo_linea=`expr index $var $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea=`expr substr $var 1 $largo_linea`
Lvar=`grep -n -m 1 '\<Latitude\>' /home/orangepi/MMDVMHost/MMDVMPLUS.ini_copia`
buscar=":"
Llargo_linea=`expr index $Lvar $buscar`
Llargo_linea=`expr $Llargo_linea - 1`
Lnumero_linea=`expr substr $Lvar 1 $Llargo_linea`
Lletra=c
Llinea_sed=$Lnumero_linea$Lletra
sed -i "$Llinea_sed $var1" /home/orangepi/MMDVMHost/MMDVMPLUS.ini_copia

#Longitude
var=`grep -n -m 1 '\<Longitude\>' /home/orangepi/Downloads/MMDVMPLUS.ini_copia`
var1=`grep -m 1 '\<Longitude\>' /home/orangepi/Downloads/MMDVMPLUS.ini_copia`
buscar=":"
largo_linea=`expr index $var $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea=`expr substr $var 1 $largo_linea`
LGvar=`grep -n -m 1 '\<Longitude\>' /home/orangepi/MMDVMHost/MMDVMPLUS.ini_copia`
buscar=":"
LGlargo_linea=`expr index $LGvar $buscar`
LGlargo_linea=`expr $LGlargo_linea - 1`
LGnumero_linea=`expr substr $LGvar 1 $LGlargo_linea`
LGletra=c
LGlinea_sed=$LGnumero_linea$LGletra
sed -i "$LGlinea_sed $var1" /home/orangepi/MMDVMHost/MMDVMPLUS.ini_copia

#Location
var=`grep -n -m 1 '\<Location\>' /home/orangepi/Downloads/MMDVMPLUS.ini_copia`
var1=`grep -m 1 '\<Location\>' /home/orangepi/Downloads/MMDVMPLUS.ini_copia`
buscar=":"
largo_linea=`expr index $var $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea=`expr substr $var 1 $largo_linea`
LOvar=`grep -n -m 1 '\<Location\>' /home/orangepi/MMDVMHost/MMDVMPLUS.ini_copia`
buscar=":"
LOlargo_linea=`expr index $LOvar $buscar`
LOlargo_linea=`expr $LOlargo_linea - 1`
LOnumero_linea=`expr substr $LOvar 1 $LOlargo_linea`
LOletra=c
LOlinea_sed=$LOnumero_linea$LOletra
sed -i "$LOlinea_sed $var1" /home/orangepi/MMDVMHost/MMDVMPLUS.ini_copia

#URL
var=`grep -n -m 1 '\<URL\>' /home/orangepi/Downloads/MMDVMPLUS.ini_copia`
var1=`grep -m 1 '\<URL\>' /home/orangepi/Downloads/MMDVMPLUS.ini_copia`
buscar=":"
largo_linea=`expr index $var $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea_url=`expr substr $var 1 $largo_linea`
Uvar=`grep -n -m 1 '\<URL\>' /home/orangepi/MMDVMHost/MMDVMPLUS.ini_copia`
Ubuscar=":"
Ulargo_linea=`expr index $Uvar $buscar`
Ulargo_linea=`expr $Ulargo_linea - 1`
Unumero_linea_url=`expr substr $Uvar 1 $largo_linea`
Uletra=c
Ulinea_sed=$Unumero_linea_url$Uletra
sed -i "$Ulinea_sed $var1" /home/orangepi/MMDVMHost/MMDVMPLUS.ini_copia

#Baliza 
var1=`grep -n -m 1 "\[CW Id\]" /home/orangepi/Downloads/MMDVMPLUS.ini_copia`
var2=`echo "$var1" | tr -d '[[:space:]]'`
buscar=":"
largo_linea=`expr index $var2 $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea=`expr substr $var2 1 $largo_linea`
numero_linea=`expr $numero_linea + 1`
CWvar1=`grep -n -m 1 "\[CW Id\]" /home/orangepi/MMDVMHost/MMDVMPLUS.ini_copia`
CWvar2=`echo "$CWvar1" | tr -d '[[:space:]]'`
buscar=":"
CWlargo_linea=`expr index $CWvar2 $buscar`
CWlargo_linea=`expr $CWlargo_linea - 1`
CWnumero_linea=`expr substr $CWvar2 1 $CWlargo_linea`
CWnumero_linea=`expr $CWnumero_linea + 1`
CWCW=$(awk "NR==$CWnumero_linea" /home/orangepi/Downloads/MMDVMPLUS.ini_copia)
CWletra=c
CWlinea_sed=$CWnumero_linea$CWletra
sed -i "$CWlinea_sed $CWCW" /home/orangepi/MMDVMHost/MMDVMPLUS.ini_copia

#RXLevel
var=`grep -n -m 1 '\<RXLevel\>' /home/orangepi/Downloads/MMDVMPLUS.ini_copia`
var1=`grep -m 1 '\<RXLevel\>' /home/orangepi/Downloads/MMDVMPLUS.ini_copia`
buscar=":"
largo_linea=`expr index $var $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea=`expr substr $var 1 $largo_linea`
RLvar=`grep -n -m 1 '\<RXLevel\>' /home/orangepi/MMDVMHost/MMDVMPLUS.ini_copia`
buscar=":"
RLlargo_linea=`expr index $RLvar $buscar`
RLlargo_linea=`expr $RLlargo_linea - 1`
RLnumero_linea=`expr substr $RLvar 1 $RLlargo_linea`
RLletra=c
RLlinea_sed=$RLnumero_linea$RLletra
sed -i "$RLlinea_sed $var1" /home/orangepi/MMDVMHost/MMDVMPLUS.ini_copia

#TXLevel
var=`grep -n -m 1 '\<TXLevel\>' /home/orangepi/Downloads/MMDVMPLUS.ini_copia`
var1=`grep -m 1 '\<TXLevel\>' /home/orangepi/Downloads/MMDVMPLUS.ini_copia`
buscar=":"
largo_linea=`expr index $var $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea=`expr substr $var 1 $largo_linea`
TLvar=`grep -n -m 1 '\<TXLevel\>' /home/orangepi/MMDVMHost/MMDVMPLUS.ini_copia`
buscar=":"
TLlargo_linea=`expr index $TLvar $buscar`
TLlargo_linea=`expr $TLlargo_linea - 1`
TLnumero_linea=`expr substr $TLvar 1 $TLlargo_linea`
TLletra=c
TLlinea_sed=$TLnumero_linea$TLletra
sed -i "$TLlinea_sed $var1" /home/orangepi/MMDVMHost/MMDVMPLUS.ini_copia

#Module
var=`grep -n -m 1 '\<Module\>' /home/orangepi/Downloads/MMDVMPLUS.ini_copia`
var1=`grep -m 1 '\<Module\>' /home/orangepi/Downloads/MMDVMPLUS.ini_copia`
buscar=":"
largo_linea=`expr index $var $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea=`expr substr $var 1 $largo_linea`
MOvar=`grep -n -m 1 '\<Module\>' /home/orangepi/MMDVMHost/MMDVMPLUS.ini_copia`
buscar=":"
MOlargo_linea=`expr index $MOvar $buscar`
MOlargo_linea=`expr $MOlargo_linea - 1`
MOnumero_linea=`expr substr $MOvar 1 $MOlargo_linea`
MOletra=c
MOlinea_sed=$MOnumero_linea$MOletra
sed -i "$MOlinea_sed $var1" /home/orangepi/MMDVMHost/MMDVMPLUS.ini_copia

#Txinvert
var=`grep -n -m 1 '\<TXInvert\>' /home/orangepi/Downloads/MMDVMPLUS.ini_copia`
var1=`grep -m 1 '\<TXInvert\>' /home/orangepi/Downloads/MMDVMPLUS.ini_copia`
buscar=":"
largo_linea=`expr index $var $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea=`expr substr $var 1 $largo_linea`
TIvar=`grep -n -m 1 '\<TXInvert\>' /home/orangepi/MMDVMHost/MMDVMPLUS.ini_copia`
buscar=":"
TIlargo_linea=`expr index $TIvar $buscar`
TIlargo_linea=`expr $TIlargo_linea - 1`
TInumero_linea=`expr substr $TIvar 1 $TIlargo_linea`
TIletra=c
TIlinea_sed=$TInumero_linea$TIletra
sed -i "$TIlinea_sed $var1" /home/orangepi/MMDVMHost/MMDVMPLUS.ini_copia

#Modem capturado de la linea txinvert -1
numero_linea_MODEM=`expr $numero_linea - 1` # Downloads
MOnumero_linea_MODEM=`expr $TInumero_linea - 1` # MMDVMHost
modem=$(awk "NR==$numero_linea_MODEM" /home/orangepi/Downloads/MMDVMPLUS.ini_copia)
TIletra=c
TIlinea_sed=$MOnumero_linea_MODEM$TIletra
sed -i "$TIlinea_sed $modem" /home/orangepi/MMDVMHost/MMDVMPLUS.ini_copia

#Address
var=`grep -n -m 1 '\<Address\>' /home/orangepi/Downloads/MMDVMPLUS.ini_copia`
var1=`grep -m 1 '\<Address\>' /home/orangepi/Downloads/MMDVMPLUS.ini_copia`
buscar=":"
largo_linea=`expr index $var $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea_Address=`expr substr $var 1 $largo_linea`
ADvar=`grep -n -m 1 '\<Address\>' /home/orangepi/MMDVMHost/MMDVMPLUS.ini_copia`
buscar=":"
ADlargo_linea=`expr index $ADvar $buscar`
ADlargo_linea=`expr $ADlargo_linea - 1`
ADnumero_linea_Address=`expr substr $ADvar 1 $ADlargo_linea`
ADletra=c
ADlinea_sed=$ADnumero_linea_Address$ADletra
sed -i "$ADlinea_sed $var1" /home/orangepi/MMDVMHost/MMDVMPLUS.ini_copia

#Port captura de la linea Address +1
numero_linea_Address=`expr $numero_linea_Address + 1` # Downloads
ADnumero_linea_Address=`expr $ADnumero_linea_Address + 1` # MMDVMHost
port=$(awk "NR==$numero_linea_Address" /home/orangepi/Downloads/MMDVMPLUS.ini_copia)
ADletra=c
ADlinea_sed=$ADnumero_linea_Address$ADletra
sed -i "$ADlinea_sed $port" /home/orangepi/MMDVMHost/MMDVMPLUS.ini_copia

#Password
var=`grep -n -m 1 '\<Password\>' /home/orangepi/Downloads/MMDVMPLUS.ini_copia`
var1=`grep -m 1 '\<Password\>' /home/orangepi/Downloads/MMDVMPLUS.ini_copia`
buscar=":"
largo_linea=`expr index $var $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea_password=`expr substr $var 1 $largo_linea`
PWvar=`grep -n -m 1 '\<Password\>' /home/orangepi/MMDVMHost/MMDVMPLUS.ini_copia`
buscar=":"
PWlargo_linea=`expr index $PWvar $buscar`
PWlargo_linea=`expr $PWlargo_linea - 1`
PWnumero_linea_password=`expr substr $PWvar 1 $PWlargo_linea`
PWletra=c
PWlinea_sed=$PWnumero_linea_password$PWletra
sed -i "$PWlinea_sed $var1" /home/orangepi/MMDVMHost/MMDVMPLUS.ini_copia

#Options linea password  +1
numero_linea_password=`expr $numero_linea_password + 1` # Downloads
PWnumero_linea_password=`expr $PWnumero_linea_password + 1` # MMDVMHost
option=$(awk "NR==$numero_linea_password" /home/orangepi/Downloads/MMDVMPLUS.ini_copia)
PWletra=c
PWlinea_sed=$PWnumero_linea_password$PWletra
sed -i "$PWlinea_sed $option" /home/orangepi/MMDVMHost/MMDVMPLUS.ini_copia

#ScreenLayout
var=`grep -n -m 1 '\<ScreenLayout\>' /home/orangepi/Downloads/MMDVMPLUS.ini_copia`
var1=`grep -m 1 '\<ScreenLayout\>' /home/orangepi/Downloads/MMDVMPLUS.ini_copia`
buscar=":"
largo_linea=`expr index $var $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea=`expr substr $var 1 $largo_linea`
SCvar=`grep -n -m 1 '\<ScreenLayout\>' /home/orangepi/MMDVMHost/MMDVMPLUS.ini_copia`
buscar=":"
SClargo_linea=`expr index $SCvar $buscar`
SClargo_linea=`expr $SClargo_linea - 1`
SCnumero_linea=`expr substr $SCvar 1 $SClargo_linea`
SCletra=c
SClinea_sed=$SCnumero_linea$SCletra
sed -i "$SClinea_sed $var1" /home/orangepi/MMDVMHost/MMDVMPLUS.ini_copia

#Brightness
var=`grep -n -m 1 '\<Brightness\>' /home/orangepi/Downloads/MMDVMPLUS.ini_copia`
var1=`grep -m 1 '\<Brightness\>' /home/orangepi/Downloads/MMDVMPLUS.ini_copia`
buscar=":"
largo_linea=`expr index $var $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea=`expr substr $var 1 $largo_linea`
BRvar=`grep -n -m 1 '\<Brightness\>' /home/orangepi/MMDVMHost/MMDVMPLUS.ini_copia`
buscar=":"
BRlargo_linea=`expr index $BRvar $buscar`
BRlargo_linea=`expr $BRlargo_linea - 1`
BRnumero_linea=`expr substr $BRvar 1 $BRlargo_linea`
BRletra=c
BRlinea_sed=$BRnumero_linea$BRletra
sed -i "$BRlinea_sed $var1" /home/orangepi/MMDVMHost/MMDVMPLUS.ini_copia

#Slot1
var=`grep -n -m 1 '\<Slot1\>' /home/orangepi/Downloads/MMDVMPLUS.ini_copia`
var1=`grep -m 1 '\<Slot1\>' /home/orangepi/Downloads/MMDVMPLUS.ini_copia`
buscar=":"
largo_linea=`expr index $var $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea=`expr substr $var 1 $largo_linea`
SLvar=`grep -n -m 1 '\<Slot1\>' /home/orangepi/MMDVMHost/MMDVMPLUS.ini_copia`
buscar=":"
SLlargo_linea=`expr index $SLvar $buscar`
SLlargo_linea=`expr $SLlargo_linea - 1`
SLnumero_linea=`expr substr $SLvar 1 $SLlargo_linea`
SLletra=c
SLlinea_sed=$SLnumero_linea$SLletra
sed -i "$SLlinea_sed $var1" /home/orangepi/MMDVMHost/MMDVMPLUS.ini_copia

#DisplayLevel
var=`grep -n -m 1 '\<DisplayLevel\>' /home/orangepi/Downloads/MMDVMPLUS.ini_copia`
var1=`grep -m 1 '\<DisplayLevel\>' /home/orangepi/Downloads/MMDVMPLUS.ini_copia`
buscar=":"
largo_linea=`expr index $var $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea=`expr substr $var 1 $largo_linea`
DIvar=`grep -n -m 1 '\<DisplayLevel\>' /home/orangepi/MMDVMHost/MMDVMPLUS.ini_copia`
buscar=":"
DIlargo_linea=`expr index $DIvar $buscar`
DIlargo_linea=`expr $DIlargo_linea - 1`
DInumero_linea=`expr substr $DIvar 1 $DIlargo_linea`
DIletra=c
DIlinea_sed=$DInumero_linea$DIletra
sed -i "$DIlinea_sed $var1" /home/orangepi/MMDVMHost/MMDVMPLUS.ini_copia

#TXHang
var=`grep -n -m 1 '\<TXHang\>' /home/orangepi/Downloads/MMDVMPLUS.ini_copia`
var1=`grep -m 1 '\<TXHang\>' /home/orangepi/Downloads/MMDVMPLUS.ini_copia`
buscar=":"
largo_linea=`expr index $var $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea=`expr substr $var 1 $largo_linea`
THvar=`grep -n -m 1 '\<TXHang\>' /home/orangepi/MMDVMHost/MMDVMPLUS.ini_copia`
buscar=":"
THlargo_linea=`expr index $THvar $buscar`
THlargo_linea=`expr $THlargo_linea - 1`
THnumero_linea=`expr substr $THvar 1 $THlargo_linea`
THletra=c
THlinea_sed=$THnumero_linea$THletra
sed -i "$THlinea_sed $var1" /home/orangepi/MMDVMHost/MMDVMPLUS.ini_copia

#D-Star
var=`grep -n -m 1 "\[D-Star\]" /home/orangepi/Downloads/MMDVMPLUS.ini_copia` 
var1=`grep -m 1 "\[D-Star\]" /home/orangepi/Downloads/MMDVMPLUS.ini_copia`
buscar=":"
largo_linea=`expr index $var $buscar` 
largo_linea=`expr $largo_linea - 1` 
numero_linea=`expr substr $var 1 $largo_linea` 
numero_linea_dstar=`expr $numero_linea + 1` 
DSvar=`grep -n -m 1 "\[D-Star\]" /home/orangepi/MMDVMHost/MMDVMPLUS.ini_copia` 
DSvar1=`grep -m 1 "\[D-Star\]" /home/orangepi/MMDVMHost/MMDVMPLUS.ini_copia`
buscar=":"
DSlargo_linea=`expr index $DSvar $buscar` 
DSlargo_linea=`expr $DSlargo_linea - 1` 
DSnumero_linea=`expr substr $DSvar 1 $DSlargo_linea` 
DSnumero_linea_dstar=`expr $DSnumero_linea + 1`
DSDS=$(awk "NR==$numero_linea_dstar" /home/orangepi/Downloads/MMDVMPLUS.ini_copia) 
DSletrac=c
DSlinea_sed=$DSnumero_linea_dstar$DSletrac
sed -i "$DSlinea_sed $DSDS" /home/orangepi/MMDVMHost/MMDVMPLUS.ini_copia

#DMR
var=`grep -n -m 1 "\[DMR\]" /home/orangepi/Downloads/MMDVMPLUS.ini_copia` 
var1=`grep -m 1 "\[DMR\]" /home/orangepi/Downloads/MMDVMPLUS.ini_copia`
buscar=":"
largo_linea=`expr index $var $buscar` 
largo_linea=`expr $largo_linea - 1` 
numero_linea=`expr substr $var 1 $largo_linea` 
numero_linea_dmr=`expr $numero_linea + 1` 
DMvar=`grep -n "\[DMR\]" /home/orangepi/MMDVMHost/MMDVMPLUS.ini_copia` 
DMvar1=`grep -n -m 1 "\[DMR\]" /home/orangepi/MMDVMHost/MMDVMPLUS.ini_copia`
buscar=":"
DMlargo_linea=`expr index $DMvar $buscar` 
DMlargo_linea=`expr $DMlargo_linea - 1` 
DMnumero_linea=`expr substr $DMvar 1 $DMlargo_linea` 
DMnumero_linea_dmr=`expr $DMnumero_linea + 1` 
DMDM=$(awk "NR==$numero_linea_dmr" /home/orangepi/Downloads/MMDVMPLUS.ini_copia)
DMletrac=c
DMlinea_sed=$DMnumero_linea_dmr$DMletrac 
sed -i "$DMlinea_sed $DMDM" /home/orangepi/MMDVMHost/MMDVMPLUS.ini_copia

#P25
var=`grep -n -m 1 "\[P25\]" /home/orangepi/Downloads/MMDVMPLUS.ini_copia` 
var1=`grep -m 1 "\[P25\]" /home/orangepi/Downloads/MMDVMPLUS.ini_copia`
buscar=":"
largo_linea=`expr index $var $buscar` 
largo_linea=`expr $largo_linea - 1` 
numero_linea=`expr substr $var 1 $largo_linea` 
numero_linea_p25=`expr $numero_linea + 1` 
P2var=`grep -n -m 1 "\[P25\]" /home/orangepi/MMDVMHost/MMDVMPLUS.ini_copia` 
P2var1=`grep -n "\[P25\]" /home/orangepi/MMDVMHost/MMDVMPLUS.ini_copia`
buscar=":"
P2largo_linea=`expr index $P2var $buscar` 
P2largo_linea=`expr $P2largo_linea - 1` 
P2numero_linea=`expr substr $P2var 1 $P2largo_linea` 
P2numero_linea_p25=`expr $P2numero_linea + 1` 
P2P2=$(awk "NR==$numero_linea_p25" /home/orangepi/Downloads/MMDVMPLUS.ini_copia)
P2letrac=c
P2linea_sed=$P2numero_linea_p25$P2letrac
sed -i "$P2linea_sed $P2P2" /home/orangepi/MMDVMHost/MMDVMPLUS.ini_copia

#FUSION
var1=`grep -n -m 1 "\[System Fusion\]" /home/orangepi/Downloads/MMDVMPLUS.ini_copia`
var2=`echo "$var1" | tr -d '[[:space:]]'`
buscar=":"
largo_linea=`expr index $var2 $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea=`expr substr $var2 1 $largo_linea`
numero_linea=`expr $numero_linea + 1`
CWvar1=`grep -n -m 1 "\[System Fusion\]" /home/orangepi/MMDVMHost/MMDVMPLUS.ini_copia`
CWvar2=`echo "$CWvar1" | tr -d '[[:space:]]'`
buscar=":"
CWlargo_linea=`expr index $CWvar2 $buscar`
CWlargo_linea=`expr $CWlargo_linea - 1`
CWnumero_linea=`expr substr $CWvar2 1 $CWlargo_linea`
CWnumero_linea=`expr $CWnumero_linea + 1`
CWCW=$(awk "NR==$CWnumero_linea" /home/orangepi/Downloads/MMDVMPLUS.ini_copia)
CWletra=c
CWlinea_sed=$CWnumero_linea$CWletra
sed -i "$CWlinea_sed $CWCW" /home/orangepi/MMDVMHost/MMDVMPLUS.ini_copia

#Nextion
var=`grep -n -m 1 "\[Nextion\]" /home/orangepi/Downloads/MMDVMPLUS.ini_copia` 
var1=`grep -m 1 "\[Nextion\]" /home/orangepi/Downloads/MMDVMPLUS.ini_copia`
buscar=":"
largo_linea=`expr index $var $buscar` 
largo_linea=`expr $largo_linea - 1` 
numero_linea=`expr substr $var 1 $largo_linea` 
numero_linea_p25=`expr $numero_linea + 2` 
P2var=`grep -n -m 1 "\[Nextion\]" /home/orangepi/MMDVMHost/MMDVMPLUS.ini_copia` 
P2var1=`grep -n "\[Nextion\]" /home/orangepi/MMDVMHost/MMDVMPLUS.ini_copia`
buscar=":"
P2largo_linea=`expr index $P2var $buscar` 
P2largo_linea=`expr $P2largo_linea - 1` 
P2numero_linea=`expr substr $P2var 1 $P2largo_linea` 
P2numero_linea_p25=`expr $P2numero_linea + 2` 
P2P2=$(awk "NR==$numero_linea_p25" /home/orangepi/Downloads/MMDVMPLUS.ini_copia)
P2letrac=c
P2linea_sed=$P2numero_linea_p25$P2letrac
sed -i "$P2linea_sed $P2P2" /home/orangepi/MMDVMHost/MMDVMPLUS.ini_copia
#======================= MMDVMPLUS.ini_copia2   ============================
#******************************************************************
# Callsign 
var=`grep -n -m 1 '\<Callsign\>' /home/orangepi/Downloads/MMDVMPLUS.ini_copia2` # 2:Callsign=EA3EIZ
var1=`grep -m 1 '\<Callsign\>' /home/orangepi/Downloads/MMDVMPLUS.ini_copia2` # Callsign=EA3EIZ
buscar=":"
largo_linea=`expr index $var $buscar` #comprueba el largo incluyendo los dos puntos (:)
largo_linea=`expr $largo_linea - 1` #comprueba el largo quitando los dos puntos (:)
numero_linea=`expr substr $var 1 $largo_linea` # recoge numero linea Downloads
Hvar=`grep -n -m 1 '\<Callsign\>' /home/orangepi/MMDVMHost/MMDVMPLUS.ini_copia2` # 2:Callsign=EA3EIZ
buscar=":"
Hlargo_linea=`expr index $Hvar $buscar` 
Hlargo_linea=`expr $Hlargo_linea - 1` 
Hnumero_linea=`expr substr $Hvar 1 $Hlargo_linea` # recoge numero linea MMDXVMHost
Hletra=c
Hlinea_sed=$Hnumero_linea$Hletra
sed -i "$Hlinea_sed $var1" /home/orangepi/MMDVMHost/MMDVMPLUS.ini_copia2

#Id capturado de la linea 3
Id=$(awk "NR==3" /home/orangepi/Downloads/MMDVMPLUS.ini_copia2)
sed -i "3c $Id" /home/orangepi/MMDVMHost/MMDVMPLUS.ini_copia2

#Timeout capturado de la linea 4
timeou=$(awk "NR==4" /home/orangepi/Downloads/MMDVMPLUS.ini_copia2)
sed -i "4c $timeou" /home/orangepi/MMDVMHost/MMDVMPLUS.ini_copia2

#Duplex
var=`grep -n -m 1 '\<Duplex\>' /home/orangepi/Downloads/MMDVMPLUS.ini_copia2`
var1=`grep -m 1 '\<Duplex\>' /home/orangepi/Downloads/MMDVMPLUS.ini_copia2`
buscar=":"
largo_linea=`expr index $var $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea=`expr substr $var 1 $largo_linea`
Dvar=`grep -n -m 1 '\<Duplex\>' /home/orangepi/MMDVMHost/MMDVMPLUS.ini_copia2`
buscar=":"
Dlargo_linea=`expr index $Dvar $buscar`
Dlargo_linea=`expr $Dlargo_linea - 1`
Dnumero_linea=`expr substr $Dvar 1 $Dlargo_linea`
Dletra=c
Dlinea_sed=$Dnumero_linea$Dletra
sed -i "$Dlinea_sed $var1" /home/orangepi/MMDVMHost/MMDVMPLUS.ini_copia2

#RFModeHang
var=`grep -n -m 1 '\<RFModeHang\>' /home/orangepi/Downloads/MMDVMPLUS.ini_copia2`
var1=`grep -m 1 '\<RFModeHang\>' /home/orangepi/Downloads/MMDVMPLUS.ini_copia2`
buscar=":"
largo_linea=`expr index $var $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea=`expr substr $var 1 $largo_linea`
Rvar=`grep -n -m 1 '\<RFModeHang\>' /home/orangepi/MMDVMHost/MMDVMPLUS.ini_copia2`
buscar=":"
Rlargo_linea=`expr index $Rvar $buscar`
Rlargo_linea=`expr $Rlargo_linea - 1`
Rnumero_linea=`expr substr $Rvar 1 $Rlargo_linea`
Rletra=c
Rlinea_sed=$Rnumero_linea$Rletra
sed -i "$Rlinea_sed $var1" /home/orangepi/MMDVMHost/MMDVMPLUS.ini_copia2

#Display
var=`grep -n -m 1 '\<Display\>' /home/orangepi/Downloads/MMDVMPLUS.ini_copia2`
var1=`grep -m 1 '\<Display\>' /home/orangepi/Downloads/MMDVMPLUS.ini_copia2`
buscar=":"
largo_linea=`expr index $var $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea=`expr substr $var 1 $largo_linea`
Dvar=`grep -n -m 1 '\<Display\>' /home/orangepi/MMDVMHost/MMDVMPLUS.ini_copia2`
buscar=":"
Dlargo_linea=`expr index $Dvar $buscar`
Dlargo_linea=`expr $Dlargo_linea - 1`
Dnumero_linea=`expr substr $Dvar 1 $Dlargo_linea`
Dletra=c
Dlinea_sed=$Dnumero_linea$Dletra
sed -i "$Dlinea_sed $var1" /home/orangepi/MMDVMHost/MMDVMPLUS.ini_copia2

#RXFrequency
var=`grep -n -m 1 '\<RXFrequency\>' /home/orangepi/Downloads/MMDVMPLUS.ini_copia2`
var1=`grep -m 1 '\<RXFrequency\>' /home/orangepi/Downloads/MMDVMPLUS.ini_copia2`
buscar=":"
largo_linea=`expr index $var $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea=`expr substr $var 1 $largo_linea`
Xvar=`grep -n -m 1 '\<RXFrequency\>' /home/orangepi/MMDVMHost/MMDVMPLUS.ini_copia2`
buscar=":"
Xlargo_linea=`expr index $Xvar $buscar`
Xlargo_linea=`expr $Xlargo_linea - 1`
Xnumero_linea=`expr substr $Xvar 1 $Xlargo_linea`
Xletra=c
Xlinea_sed=$Xnumero_linea$Xletra
sed -i "$Xlinea_sed $var1" /home/orangepi/MMDVMHost/MMDVMPLUS.ini_copia2

#TXFrequency
var=`grep -n -m 1 '\<TXFrequency\>' /home/orangepi/Downloads/MMDVMPLUS.ini_copia2`
var1=`grep -m 1 '\<TXFrequency\>' /home/orangepi/Downloads/MMDVMPLUS.ini_copia2`
buscar=":"
largo_linea=`expr index $var $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea=`expr substr $var 1 $largo_linea`
Tvar=`grep -n -m 1 '\<TXFrequency\>' /home/orangepi/MMDVMHost/MMDVMPLUS.ini_copia2`
buscar=":"
Tlargo_linea=`expr index $Tvar $buscar`
Tlargo_linea=`expr $Tlargo_linea - 1`
Tnumero_linea=`expr substr $Tvar 1 $Tlargo_linea`
Tletra=c
Tlinea_sed=$Tnumero_linea$Tletra
sed -i "$Tlinea_sed $var1" /home/orangepi/MMDVMHost/MMDVMPLUS.ini_copia2

#Latitude
var=`grep -n -m 1 '\<Latitude\>' /home/orangepi/Downloads/MMDVMPLUS.ini_copia2`
var1=`grep -m 1 '\<Latitude\>' /home/orangepi/Downloads/MMDVMPLUS.ini_copia2`
buscar=":"
largo_linea=`expr index $var $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea=`expr substr $var 1 $largo_linea`
Lvar=`grep -n -m 1 '\<Latitude\>' /home/orangepi/MMDVMHost/MMDVMPLUS.ini_copia2`
buscar=":"
Llargo_linea=`expr index $Lvar $buscar`
Llargo_linea=`expr $Llargo_linea - 1`
Lnumero_linea=`expr substr $Lvar 1 $Llargo_linea`
Lletra=c
Llinea_sed=$Lnumero_linea$Lletra
sed -i "$Llinea_sed $var1" /home/orangepi/MMDVMHost/MMDVMPLUS.ini_copia2

#Longitude
var=`grep -n -m 1 '\<Longitude\>' /home/orangepi/Downloads/MMDVMPLUS.ini_copia2`
var1=`grep -m 1 '\<Longitude\>' /home/orangepi/Downloads/MMDVMPLUS.ini_copia2`
buscar=":"
largo_linea=`expr index $var $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea=`expr substr $var 1 $largo_linea`
LGvar=`grep -n -m 1 '\<Longitude\>' /home/orangepi/MMDVMHost/MMDVMPLUS.ini_copia2`
buscar=":"
LGlargo_linea=`expr index $LGvar $buscar`
LGlargo_linea=`expr $LGlargo_linea - 1`
LGnumero_linea=`expr substr $LGvar 1 $LGlargo_linea`
LGletra=c
LGlinea_sed=$LGnumero_linea$LGletra
sed -i "$LGlinea_sed $var1" /home/orangepi/MMDVMHost/MMDVMPLUS.ini_copia2

#Location
var=`grep -n -m 1 '\<Location\>' /home/orangepi/Downloads/MMDVMPLUS.ini_copia2`
var1=`grep -m 1 '\<Location\>' /home/orangepi/Downloads/MMDVMPLUS.ini_copia2`
buscar=":"
largo_linea=`expr index $var $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea=`expr substr $var 1 $largo_linea`
LOvar=`grep -n -m 1 '\<Location\>' /home/orangepi/MMDVMHost/MMDVMPLUS.ini_copia2`
buscar=":"
LOlargo_linea=`expr index $LOvar $buscar`
LOlargo_linea=`expr $LOlargo_linea - 1`
LOnumero_linea=`expr substr $LOvar 1 $LOlargo_linea`
LOletra=c
LOlinea_sed=$LOnumero_linea$LOletra
sed -i "$LOlinea_sed $var1" /home/orangepi/MMDVMHost/MMDVMPLUS.ini_copia2

#URL
var=`grep -n -m 1 '\<URL\>' /home/orangepi/Downloads/MMDVMPLUS.ini_copia2`
var1=`grep -m 1 '\<URL\>' /home/orangepi/Downloads/MMDVMPLUS.ini_copia2`
buscar=":"
largo_linea=`expr index $var $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea_url=`expr substr $var 1 $largo_linea`
Uvar=`grep -n -m 1 '\<URL\>' /home/orangepi/MMDVMHost/MMDVMPLUS.ini_copia2`
Ubuscar=":"
Ulargo_linea=`expr index $Uvar $buscar`
Ulargo_linea=`expr $Ulargo_linea - 1`
Unumero_linea_url=`expr substr $Uvar 1 $largo_linea`
Uletra=c
Ulinea_sed=$Unumero_linea_url$Uletra
sed -i "$Ulinea_sed $var1" /home/orangepi/MMDVMHost/MMDVMPLUS.ini_copia2

#Baliza 
var1=`grep -n -m 1 "\[CW Id\]" /home/orangepi/Downloads/MMDVMPLUS.ini_copia2`
var2=`echo "$var1" | tr -d '[[:space:]]'`
buscar=":"
largo_linea=`expr index $var2 $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea=`expr substr $var2 1 $largo_linea`
numero_linea=`expr $numero_linea + 1`
CWvar1=`grep -n -m 1 "\[CW Id\]" /home/orangepi/MMDVMHost/MMDVMPLUS.ini_copia2`
CWvar2=`echo "$CWvar1" | tr -d '[[:space:]]'`
buscar=":"
CWlargo_linea=`expr index $CWvar2 $buscar`
CWlargo_linea=`expr $CWlargo_linea - 1`
CWnumero_linea=`expr substr $CWvar2 1 $CWlargo_linea`
CWnumero_linea=`expr $CWnumero_linea + 1`
CWCW=$(awk "NR==$CWnumero_linea" /home/orangepi/Downloads/MMDVMPLUS.ini_copia2)
CWletra=c
CWlinea_sed=$CWnumero_linea$CWletra
sed -i "$CWlinea_sed $CWCW" /home/orangepi/MMDVMHost/MMDVMPLUS.ini_copia2

#RXLevel
var=`grep -n -m 1 '\<RXLevel\>' /home/orangepi/Downloads/MMDVMPLUS.ini_copia2`
var1=`grep -m 1 '\<RXLevel\>' /home/orangepi/Downloads/MMDVMPLUS.ini_copia2`
buscar=":"
largo_linea=`expr index $var $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea=`expr substr $var 1 $largo_linea`
RLvar=`grep -n -m 1 '\<RXLevel\>' /home/orangepi/MMDVMHost/MMDVMPLUS.ini_copia2`
buscar=":"
RLlargo_linea=`expr index $RLvar $buscar`
RLlargo_linea=`expr $RLlargo_linea - 1`
RLnumero_linea=`expr substr $RLvar 1 $RLlargo_linea`
RLletra=c
RLlinea_sed=$RLnumero_linea$RLletra
sed -i "$RLlinea_sed $var1" /home/orangepi/MMDVMHost/MMDVMPLUS.ini_copia2

#TXLevel
var=`grep -n -m 1 '\<TXLevel\>' /home/orangepi/Downloads/MMDVMPLUS.ini_copia2`
var1=`grep -m 1 '\<TXLevel\>' /home/orangepi/Downloads/MMDVMPLUS.ini_copia2`
buscar=":"
largo_linea=`expr index $var $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea=`expr substr $var 1 $largo_linea`
TLvar=`grep -n -m 1 '\<TXLevel\>' /home/orangepi/MMDVMHost/MMDVMPLUS.ini_copia2`
buscar=":"
TLlargo_linea=`expr index $TLvar $buscar`
TLlargo_linea=`expr $TLlargo_linea - 1`
TLnumero_linea=`expr substr $TLvar 1 $TLlargo_linea`
TLletra=c
TLlinea_sed=$TLnumero_linea$TLletra
sed -i "$TLlinea_sed $var1" /home/orangepi/MMDVMHost/MMDVMPLUS.ini_copia2

#Module
var=`grep -n -m 1 '\<Module\>' /home/orangepi/Downloads/MMDVMPLUS.ini_copia2`
var1=`grep -m 1 '\<Module\>' /home/orangepi/Downloads/MMDVMPLUS.ini_copia2`
buscar=":"
largo_linea=`expr index $var $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea=`expr substr $var 1 $largo_linea`
MOvar=`grep -n -m 1 '\<Module\>' /home/orangepi/MMDVMHost/MMDVMPLUS.ini_copia2`
buscar=":"
MOlargo_linea=`expr index $MOvar $buscar`
MOlargo_linea=`expr $MOlargo_linea - 1`
MOnumero_linea=`expr substr $MOvar 1 $MOlargo_linea`
MOletra=c
MOlinea_sed=$MOnumero_linea$MOletra
sed -i "$MOlinea_sed $var1" /home/orangepi/MMDVMHost/MMDVMPLUS.ini_copia2

#Txinvert
var=`grep -n -m 1 '\<TXInvert\>' /home/orangepi/Downloads/MMDVMPLUS.ini_copia2`
var1=`grep -m 1 '\<TXInvert\>' /home/orangepi/Downloads/MMDVMPLUS.ini_copia2`
buscar=":"
largo_linea=`expr index $var $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea=`expr substr $var 1 $largo_linea`
TIvar=`grep -n -m 1 '\<TXInvert\>' /home/orangepi/MMDVMHost/MMDVMPLUS.ini_copia2`
buscar=":"
TIlargo_linea=`expr index $TIvar $buscar`
TIlargo_linea=`expr $TIlargo_linea - 1`
TInumero_linea=`expr substr $TIvar 1 $TIlargo_linea`
TIletra=c
TIlinea_sed=$TInumero_linea$TIletra
sed -i "$TIlinea_sed $var1" /home/orangepi/MMDVMHost/MMDVMPLUS.ini_copia2

#Modem capturado de la linea txinvert -1
numero_linea_MODEM=`expr $numero_linea - 1` # Downloads
MOnumero_linea_MODEM=`expr $TInumero_linea - 1` # MMDVMHost
modem=$(awk "NR==$numero_linea_MODEM" /home/orangepi/Downloads/MMDVMPLUS.ini_copia2)
TIletra=c
TIlinea_sed=$MOnumero_linea_MODEM$TIletra
sed -i "$TIlinea_sed $modem" /home/orangepi/MMDVMHost/MMDVMPLUS.ini_copia2

#Address
var=`grep -n -m 1 '\<Address\>' /home/orangepi/Downloads/MMDVMPLUS.ini_copia2`
var1=`grep -m 1 '\<Address\>' /home/orangepi/Downloads/MMDVMPLUS.ini_copia2`
buscar=":"
largo_linea=`expr index $var $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea_Address=`expr substr $var 1 $largo_linea`
ADvar=`grep -n -m 1 '\<Address\>' /home/orangepi/MMDVMHost/MMDVMPLUS.ini_copia2`
buscar=":"
ADlargo_linea=`expr index $ADvar $buscar`
ADlargo_linea=`expr $ADlargo_linea - 1`
ADnumero_linea_Address=`expr substr $ADvar 1 $ADlargo_linea`
ADletra=c
ADlinea_sed=$ADnumero_linea_Address$ADletra
sed -i "$ADlinea_sed $var1" /home/orangepi/MMDVMHost/MMDVMPLUS.ini_copia2

#Port captura de la linea Address +1
numero_linea_Address=`expr $numero_linea_Address + 1` # Downloads
ADnumero_linea_Address=`expr $ADnumero_linea_Address + 1` # MMDVMHost
port=$(awk "NR==$numero_linea_Address" /home/orangepi/Downloads/MMDVMPLUS.ini_copia2)
ADletra=c
ADlinea_sed=$ADnumero_linea_Address$ADletra
sed -i "$ADlinea_sed $port" /home/orangepi/MMDVMHost/MMDVMPLUS.ini_copia2

#Password
var=`grep -n -m 1 '\<Password\>' /home/orangepi/Downloads/MMDVMPLUS.ini_copia2`
var1=`grep -m 1 '\<Password\>' /home/orangepi/Downloads/MMDVMPLUS.ini_copia2`
buscar=":"
largo_linea=`expr index $var $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea_password=`expr substr $var 1 $largo_linea`
PWvar=`grep -n -m 1 '\<Password\>' /home/orangepi/MMDVMHost/MMDVMPLUS.ini_copia2`
buscar=":"
PWlargo_linea=`expr index $PWvar $buscar`
PWlargo_linea=`expr $PWlargo_linea - 1`
PWnumero_linea_password=`expr substr $PWvar 1 $PWlargo_linea`
PWletra=c
PWlinea_sed=$PWnumero_linea_password$PWletra
sed -i "$PWlinea_sed $var1" /home/orangepi/MMDVMHost/MMDVMPLUS.ini_copia2

#Options linea password  +1
numero_linea_password=`expr $numero_linea_password + 1` # Downloads
PWnumero_linea_password=`expr $PWnumero_linea_password + 1` # MMDVMHost
option=$(awk "NR==$numero_linea_password" /home/orangepi/Downloads/MMDVMPLUS.ini_copia2)
PWletra=c
PWlinea_sed=$PWnumero_linea_password$PWletra
sed -i "$PWlinea_sed $option" /home/orangepi/MMDVMHost/MMDVMPLUS.ini_copia2

#ScreenLayout
var=`grep -n -m 1 '\<ScreenLayout\>' /home/orangepi/Downloads/MMDVMPLUS.ini_copia2`
var1=`grep -m 1 '\<ScreenLayout\>' /home/orangepi/Downloads/MMDVMPLUS.ini_copia2`
buscar=":"
largo_linea=`expr index $var $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea=`expr substr $var 1 $largo_linea`
SCvar=`grep -n -m 1 '\<ScreenLayout\>' /home/orangepi/MMDVMHost/MMDVMPLUS.ini_copia2`
buscar=":"
SClargo_linea=`expr index $SCvar $buscar`
SClargo_linea=`expr $SClargo_linea - 1`
SCnumero_linea=`expr substr $SCvar 1 $SClargo_linea`
SCletra=c
SClinea_sed=$SCnumero_linea$SCletra
sed -i "$SClinea_sed $var1" /home/orangepi/MMDVMHost/MMDVMPLUS.ini_copia2

#Brightness
var=`grep -n -m 1 '\<Brightness\>' /home/orangepi/Downloads/MMDVMPLUS.ini_copia2`
var1=`grep -m 1 '\<Brightness\>' /home/orangepi/Downloads/MMDVMPLUS.ini_copia2`
buscar=":"
largo_linea=`expr index $var $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea=`expr substr $var 1 $largo_linea`
BRvar=`grep -n -m 1 '\<Brightness\>' /home/orangepi/MMDVMHost/MMDVMPLUS.ini_copia2`
buscar=":"
BRlargo_linea=`expr index $BRvar $buscar`
BRlargo_linea=`expr $BRlargo_linea - 1`
BRnumero_linea=`expr substr $BRvar 1 $BRlargo_linea`
BRletra=c
BRlinea_sed=$BRnumero_linea$BRletra
sed -i "$BRlinea_sed $var1" /home/orangepi/MMDVMHost/MMDVMPLUS.ini_copia2

#Slot1
var=`grep -n -m 1 '\<Slot1\>' /home/orangepi/Downloads/MMDVMPLUS.ini_copia2`
var1=`grep -m 1 '\<Slot1\>' /home/orangepi/Downloads/MMDVMPLUS.ini_copia2`
buscar=":"
largo_linea=`expr index $var $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea=`expr substr $var 1 $largo_linea`
SLvar=`grep -n -m 1 '\<Slot1\>' /home/orangepi/MMDVMHost/MMDVMPLUS.ini_copia2`
buscar=":"
SLlargo_linea=`expr index $SLvar $buscar`
SLlargo_linea=`expr $SLlargo_linea - 1`
SLnumero_linea=`expr substr $SLvar 1 $SLlargo_linea`
SLletra=c
SLlinea_sed=$SLnumero_linea$SLletra
sed -i "$SLlinea_sed $var1" /home/orangepi/MMDVMHost/MMDVMPLUS.ini_copia2

#DisplayLevel
var=`grep -n -m 1 '\<DisplayLevel\>' /home/orangepi/Downloads/MMDVMPLUS.ini_copia2`
var1=`grep -m 1 '\<DisplayLevel\>' /home/orangepi/Downloads/MMDVMPLUS.ini_copia2`
buscar=":"
largo_linea=`expr index $var $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea=`expr substr $var 1 $largo_linea`
DIvar=`grep -n -m 1 '\<DisplayLevel\>' /home/orangepi/MMDVMHost/MMDVMPLUS.ini_copia2`
buscar=":"
DIlargo_linea=`expr index $DIvar $buscar`
DIlargo_linea=`expr $DIlargo_linea - 1`
DInumero_linea=`expr substr $DIvar 1 $DIlargo_linea`
DIletra=c
DIlinea_sed=$DInumero_linea$DIletra
sed -i "$DIlinea_sed $var1" /home/orangepi/MMDVMHost/MMDVMPLUS.ini_copia2

#TXHang
var=`grep -n -m 1 '\<TXHang\>' /home/orangepi/Downloads/MMDVMPLUS.ini_copia2`
var1=`grep -m 1 '\<TXHang\>' /home/orangepi/Downloads/MMDVMPLUS.ini_copia2`
buscar=":"
largo_linea=`expr index $var $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea=`expr substr $var 1 $largo_linea`
THvar=`grep -n -m 1 '\<TXHang\>' /home/orangepi/MMDVMHost/MMDVMPLUS.ini_copia2`
buscar=":"
THlargo_linea=`expr index $THvar $buscar`
THlargo_linea=`expr $THlargo_linea - 1`
THnumero_linea=`expr substr $THvar 1 $THlargo_linea`
THletra=c
THlinea_sed=$THnumero_linea$THletra
sed -i "$THlinea_sed $var1" /home/orangepi/MMDVMHost/MMDVMPLUS.ini_copia2

#D-Star
var=`grep -n -m 1 "\[D-Star\]" /home/orangepi/Downloads/MMDVMPLUS.ini_copia2` 
var1=`grep -m 1 "\[D-Star\]" /home/orangepi/Downloads/MMDVMPLUS.ini_copia2`
buscar=":"
largo_linea=`expr index $var $buscar` 
largo_linea=`expr $largo_linea - 1` 
numero_linea=`expr substr $var 1 $largo_linea` 
numero_linea_dstar=`expr $numero_linea + 1` 
DSvar=`grep -n -m 1 "\[D-Star\]" /home/orangepi/MMDVMHost/MMDVMPLUS.ini_copia2` 
DSvar1=`grep -m 1 "\[D-Star\]" /home/orangepi/MMDVMHost/MMDVMPLUS.ini_copia2`
buscar=":"
DSlargo_linea=`expr index $DSvar $buscar` 
DSlargo_linea=`expr $DSlargo_linea - 1` 
DSnumero_linea=`expr substr $DSvar 1 $DSlargo_linea` 
DSnumero_linea_dstar=`expr $DSnumero_linea + 1`
DSDS=$(awk "NR==$numero_linea_dstar" /home/orangepi/Downloads/MMDVMPLUS.ini_copia2) 
DSletrac=c
DSlinea_sed=$DSnumero_linea_dstar$DSletrac
sed -i "$DSlinea_sed $DSDS" /home/orangepi/MMDVMHost/MMDVMPLUS.ini_copia2

#DMR
var=`grep -n -m 1 "\[DMR\]" /home/orangepi/Downloads/MMDVMPLUS.ini_copia2` 
var1=`grep -m 1 "\[DMR\]" /home/orangepi/Downloads/MMDVMPLUS.ini_copia2`
buscar=":"
largo_linea=`expr index $var $buscar` 
largo_linea=`expr $largo_linea - 1` 
numero_linea=`expr substr $var 1 $largo_linea` 
numero_linea_dmr=`expr $numero_linea + 1` 
DMvar=`grep -n "\[DMR\]" /home/orangepi/MMDVMHost/MMDVMPLUS.ini_copia2` 
DMvar1=`grep -n -m 1 "\[DMR\]" /home/orangepi/MMDVMHost/MMDVMPLUS.ini_copia2`
buscar=":"
DMlargo_linea=`expr index $DMvar $buscar` 
DMlargo_linea=`expr $DMlargo_linea - 1` 
DMnumero_linea=`expr substr $DMvar 1 $DMlargo_linea` 
DMnumero_linea_dmr=`expr $DMnumero_linea + 1` 
DMDM=$(awk "NR==$numero_linea_dmr" /home/orangepi/Downloads/MMDVMPLUS.ini_copia2)
DMletrac=c
DMlinea_sed=$DMnumero_linea_dmr$DMletrac 
sed -i "$DMlinea_sed $DMDM" /home/orangepi/MMDVMHost/MMDVMPLUS.ini_copia2

#P25
var=`grep -n -m 1 "\[P25\]" /home/orangepi/Downloads/MMDVMPLUS.ini_copia2` 
var1=`grep -m 1 "\[P25\]" /home/orangepi/Downloads/MMDVMPLUS.ini_copia2`
buscar=":"
largo_linea=`expr index $var $buscar` 
largo_linea=`expr $largo_linea - 1` 
numero_linea=`expr substr $var 1 $largo_linea` 
numero_linea_p25=`expr $numero_linea + 1` 
P2var=`grep -n -m 1 "\[P25\]" /home/orangepi/MMDVMHost/MMDVMPLUS.ini_copia2` 
P2var1=`grep -n "\[P25\]" /home/orangepi/MMDVMHost/MMDVMPLUS.ini_copia2`
buscar=":"
P2largo_linea=`expr index $P2var $buscar` 
P2largo_linea=`expr $P2largo_linea - 1` 
P2numero_linea=`expr substr $P2var 1 $P2largo_linea` 
P2numero_linea_p25=`expr $P2numero_linea + 1` 
P2P2=$(awk "NR==$numero_linea_p25" /home/orangepi/Downloads/MMDVMPLUS.ini_copia2)
P2letrac=c
P2linea_sed=$P2numero_linea_p25$P2letrac
sed -i "$P2linea_sed $P2P2" /home/orangepi/MMDVMHost/MMDVMPLUS.ini_copia2

#FUSION
var1=`grep -n -m 1 "\[System Fusion\]" /home/orangepi/Downloads/MMDVMPLUS.ini_copia2`
var2=`echo "$var1" | tr -d '[[:space:]]'`
buscar=":"
largo_linea=`expr index $var2 $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea=`expr substr $var2 1 $largo_linea`
numero_linea=`expr $numero_linea + 1`
CWvar1=`grep -n -m 1 "\[System Fusion\]" /home/orangepi/MMDVMHost/MMDVMPLUS.ini_copia2`
CWvar2=`echo "$CWvar1" | tr -d '[[:space:]]'`
buscar=":"
CWlargo_linea=`expr index $CWvar2 $buscar`
CWlargo_linea=`expr $CWlargo_linea - 1`
CWnumero_linea=`expr substr $CWvar2 1 $CWlargo_linea`
CWnumero_linea=`expr $CWnumero_linea + 1`
CWCW=$(awk "NR==$CWnumero_linea" /home/orangepi/Downloads/MMDVMPLUS.ini_copia2)
CWletra=c
CWlinea_sed=$CWnumero_linea$CWletra
sed -i "$CWlinea_sed $CWCW" /home/orangepi/MMDVMHost/MMDVMPLUS.ini_copia2

#Nextion
var=`grep -n -m 1 "\[Nextion\]" /home/orangepi/Downloads/MMDVMPLUS.ini_copia2` 
var1=`grep -m 1 "\[Nextion\]" /home/orangepi/Downloads/MMDVMPLUS.ini_copia2`
buscar=":"
largo_linea=`expr index $var $buscar` 
largo_linea=`expr $largo_linea - 1` 
numero_linea=`expr substr $var 1 $largo_linea` 
numero_linea_p25=`expr $numero_linea + 2` 
P2var=`grep -n -m 1 "\[Nextion\]" /home/orangepi/MMDVMHost/MMDVMPLUS.ini_copia2` 
P2var1=`grep -n "\[Nextion\]" /home/orangepi/MMDVMHost/MMDVMPLUS.ini_copia2`
buscar=":"
P2largo_linea=`expr index $P2var $buscar` 
P2largo_linea=`expr $P2largo_linea - 1` 
P2numero_linea=`expr substr $P2var 1 $P2largo_linea` 
P2numero_linea_p25=`expr $P2numero_linea + 2` 
P2P2=$(awk "NR==$numero_linea_p25" /home/orangepi/Downloads/MMDVMPLUS.ini_copia2)
P2letrac=c
P2linea_sed=$P2numero_linea_p25$P2letrac
sed -i "$P2linea_sed $P2P2" /home/orangepi/MMDVMHost/MMDVMPLUS.ini_copia2

#======================= MMDVMPLUS.ini_copia3   ============================
#******************************************************************
# Callsign 
var=`grep -n -m 1 '\<Callsign\>' /home/orangepi/Downloads/MMDVMPLUS.ini_copia3` # 2:Callsign=EA3EIZ
var1=`grep -m 1 '\<Callsign\>' /home/orangepi/Downloads/MMDVMPLUS.ini_copia3` # Callsign=EA3EIZ
buscar=":"
largo_linea=`expr index $var $buscar` #comprueba el largo incluyendo los dos puntos (:)
largo_linea=`expr $largo_linea - 1` #comprueba el largo quitando los dos puntos (:)
numero_linea=`expr substr $var 1 $largo_linea` # recoge numero linea Downloads
Hvar=`grep -n -m 1 '\<Callsign\>' /home/orangepi/MMDVMHost/MMDVMPLUS.ini_copia3` # 2:Callsign=EA3EIZ
buscar=":"
Hlargo_linea=`expr index $Hvar $buscar` 
Hlargo_linea=`expr $Hlargo_linea - 1` 
Hnumero_linea=`expr substr $Hvar 1 $Hlargo_linea` # recoge numero linea MMDXVMHost
Hletra=c
Hlinea_sed=$Hnumero_linea$Hletra
sed -i "$Hlinea_sed $var1" /home/orangepi/MMDVMHost/MMDVMPLUS.ini_copia3

#Id capturado de la linea 3
Id=$(awk "NR==3" /home/orangepi/Downloads/MMDVMPLUS.ini_copia3)
sed -i "3c $Id" /home/orangepi/MMDVMHost/MMDVMPLUS.ini_copia3

#Timeout capturado de la linea 4
timeou=$(awk "NR==4" /home/orangepi/Downloads/MMDVMPLUS.ini_copia3)
sed -i "4c $timeou" /home/orangepi/MMDVMHost/MMDVMPLUS.ini_copia3

#Duplex
var=`grep -n -m 1 '\<Duplex\>' /home/orangepi/Downloads/MMDVMPLUS.ini_copia3`
var1=`grep -m 1 '\<Duplex\>' /home/orangepi/Downloads/MMDVMPLUS.ini_copia3`
buscar=":"
largo_linea=`expr index $var $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea=`expr substr $var 1 $largo_linea`
Dvar=`grep -n -m 1 '\<Duplex\>' /home/orangepi/MMDVMHost/MMDVMPLUS.ini_copia3`
buscar=":"
Dlargo_linea=`expr index $Dvar $buscar`
Dlargo_linea=`expr $Dlargo_linea - 1`
Dnumero_linea=`expr substr $Dvar 1 $Dlargo_linea`
Dletra=c
Dlinea_sed=$Dnumero_linea$Dletra
sed -i "$Dlinea_sed $var1" /home/orangepi/MMDVMHost/MMDVMPLUS.ini_copia3

#RFModeHang
var=`grep -n -m 1 '\<RFModeHang\>' /home/orangepi/Downloads/MMDVMPLUS.ini_copia3`
var1=`grep -m 1 '\<RFModeHang\>' /home/orangepi/Downloads/MMDVMPLUS.ini_copia3`
buscar=":"
largo_linea=`expr index $var $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea=`expr substr $var 1 $largo_linea`
Rvar=`grep -n -m 1 '\<RFModeHang\>' /home/orangepi/MMDVMHost/MMDVMPLUS.ini_copia3`
buscar=":"
Rlargo_linea=`expr index $Rvar $buscar`
Rlargo_linea=`expr $Rlargo_linea - 1`
Rnumero_linea=`expr substr $Rvar 1 $Rlargo_linea`
Rletra=c
Rlinea_sed=$Rnumero_linea$Rletra
sed -i "$Rlinea_sed $var1" /home/orangepi/MMDVMHost/MMDVMPLUS.ini_copia3

#Display
var=`grep -n -m 1 '\<Display\>' /home/orangepi/Downloads/MMDVMPLUS.ini_copia3`
var1=`grep -m 1 '\<Display\>' /home/orangepi/Downloads/MMDVMPLUS.ini_copia3`
buscar=":"
largo_linea=`expr index $var $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea=`expr substr $var 1 $largo_linea`
Dvar=`grep -n -m 1 '\<Display\>' /home/orangepi/MMDVMHost/MMDVMPLUS.ini_copia3`
buscar=":"
Dlargo_linea=`expr index $Dvar $buscar`
Dlargo_linea=`expr $Dlargo_linea - 1`
Dnumero_linea=`expr substr $Dvar 1 $Dlargo_linea`
Dletra=c
Dlinea_sed=$Dnumero_linea$Dletra
sed -i "$Dlinea_sed $var1" /home/orangepi/MMDVMHost/MMDVMPLUS.ini_copia3

#RXFrequency
var=`grep -n -m 1 '\<RXFrequency\>' /home/orangepi/Downloads/MMDVMPLUS.ini_copia3`
var1=`grep -m 1 '\<RXFrequency\>' /home/orangepi/Downloads/MMDVMPLUS.ini_copia3`
buscar=":"
largo_linea=`expr index $var $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea=`expr substr $var 1 $largo_linea`
Xvar=`grep -n -m 1 '\<RXFrequency\>' /home/orangepi/MMDVMHost/MMDVMPLUS.ini_copia3`
buscar=":"
Xlargo_linea=`expr index $Xvar $buscar`
Xlargo_linea=`expr $Xlargo_linea - 1`
Xnumero_linea=`expr substr $Xvar 1 $Xlargo_linea`
Xletra=c
Xlinea_sed=$Xnumero_linea$Xletra
sed -i "$Xlinea_sed $var1" /home/orangepi/MMDVMHost/MMDVMPLUS.ini_copia3

#TXFrequency
var=`grep -n -m 1 '\<TXFrequency\>' /home/orangepi/Downloads/MMDVMPLUS.ini_copia3`
var1=`grep -m 1 '\<TXFrequency\>' /home/orangepi/Downloads/MMDVMPLUS.ini_copia3`
buscar=":"
largo_linea=`expr index $var $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea=`expr substr $var 1 $largo_linea`
Tvar=`grep -n -m 1 '\<TXFrequency\>' /home/orangepi/MMDVMHost/MMDVMPLUS.ini_copia3`
buscar=":"
Tlargo_linea=`expr index $Tvar $buscar`
Tlargo_linea=`expr $Tlargo_linea - 1`
Tnumero_linea=`expr substr $Tvar 1 $Tlargo_linea`
Tletra=c
Tlinea_sed=$Tnumero_linea$Tletra
sed -i "$Tlinea_sed $var1" /home/orangepi/MMDVMHost/MMDVMPLUS.ini_copia3

#Latitude
var=`grep -n -m 1 '\<Latitude\>' /home/orangepi/Downloads/MMDVMPLUS.ini_copia3`
var1=`grep -m 1 '\<Latitude\>' /home/orangepi/Downloads/MMDVMPLUS.ini_copia3`
buscar=":"
largo_linea=`expr index $var $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea=`expr substr $var 1 $largo_linea`
Lvar=`grep -n -m 1 '\<Latitude\>' /home/orangepi/MMDVMHost/MMDVMPLUS.ini_copia3`
buscar=":"
Llargo_linea=`expr index $Lvar $buscar`
Llargo_linea=`expr $Llargo_linea - 1`
Lnumero_linea=`expr substr $Lvar 1 $Llargo_linea`
Lletra=c
Llinea_sed=$Lnumero_linea$Lletra
sed -i "$Llinea_sed $var1" /home/orangepi/MMDVMHost/MMDVMPLUS.ini_copia3

#Longitude
var=`grep -n -m 1 '\<Longitude\>' /home/orangepi/Downloads/MMDVMPLUS.ini_copia3`
var1=`grep -m 1 '\<Longitude\>' /home/orangepi/Downloads/MMDVMPLUS.ini_copia3`
buscar=":"
largo_linea=`expr index $var $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea=`expr substr $var 1 $largo_linea`
LGvar=`grep -n -m 1 '\<Longitude\>' /home/orangepi/MMDVMHost/MMDVMPLUS.ini_copia3`
buscar=":"
LGlargo_linea=`expr index $LGvar $buscar`
LGlargo_linea=`expr $LGlargo_linea - 1`
LGnumero_linea=`expr substr $LGvar 1 $LGlargo_linea`
LGletra=c
LGlinea_sed=$LGnumero_linea$LGletra
sed -i "$LGlinea_sed $var1" /home/orangepi/MMDVMHost/MMDVMPLUS.ini_copia3

#Location
var=`grep -n -m 1 '\<Location\>' /home/orangepi/Downloads/MMDVMPLUS.ini_copia3`
var1=`grep -m 1 '\<Location\>' /home/orangepi/Downloads/MMDVMPLUS.ini_copia3`
buscar=":"
largo_linea=`expr index $var $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea=`expr substr $var 1 $largo_linea`
LOvar=`grep -n -m 1 '\<Location\>' /home/orangepi/MMDVMHost/MMDVMPLUS.ini_copia3`
buscar=":"
LOlargo_linea=`expr index $LOvar $buscar`
LOlargo_linea=`expr $LOlargo_linea - 1`
LOnumero_linea=`expr substr $LOvar 1 $LOlargo_linea`
LOletra=c
LOlinea_sed=$LOnumero_linea$LOletra
sed -i "$LOlinea_sed $var1" /home/orangepi/MMDVMHost/MMDVMPLUS.ini_copia3

#URL
var=`grep -n -m 1 '\<URL\>' /home/orangepi/Downloads/MMDVMPLUS.ini_copia3`
var1=`grep -m 1 '\<URL\>' /home/orangepi/Downloads/MMDVMPLUS.ini_copia3`
buscar=":"
largo_linea=`expr index $var $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea_url=`expr substr $var 1 $largo_linea`
Uvar=`grep -n -m 1 '\<URL\>' /home/orangepi/MMDVMHost/MMDVMPLUS.ini_copia3`
Ubuscar=":"
Ulargo_linea=`expr index $Uvar $buscar`
Ulargo_linea=`expr $Ulargo_linea - 1`
Unumero_linea_url=`expr substr $Uvar 1 $largo_linea`
Uletra=c
Ulinea_sed=$Unumero_linea_url$Uletra
sed -i "$Ulinea_sed $var1" /home/orangepi/MMDVMHost/MMDVMPLUS.ini_copia3

#Baliza 
var1=`grep -n -m 1 "\[CW Id\]" /home/orangepi/Downloads/MMDVMPLUS.ini_copia3`
var2=`echo "$var1" | tr -d '[[:space:]]'`
buscar=":"
largo_linea=`expr index $var2 $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea=`expr substr $var2 1 $largo_linea`
numero_linea=`expr $numero_linea + 1`
CWvar1=`grep -n -m 1 "\[CW Id\]" /home/orangepi/MMDVMHost/MMDVMPLUS.ini_copia3`
CWvar2=`echo "$CWvar1" | tr -d '[[:space:]]'`
buscar=":"
CWlargo_linea=`expr index $CWvar2 $buscar`
CWlargo_linea=`expr $CWlargo_linea - 1`
CWnumero_linea=`expr substr $CWvar2 1 $CWlargo_linea`
CWnumero_linea=`expr $CWnumero_linea + 1`
CWCW=$(awk "NR==$CWnumero_linea" /home/orangepi/Downloads/MMDVMPLUS.ini_copia3)
CWletra=c
CWlinea_sed=$CWnumero_linea$CWletra
sed -i "$CWlinea_sed $CWCW" /home/orangepi/MMDVMHost/MMDVMPLUS.ini_copia3

#RXLevel
var=`grep -n -m 1 '\<RXLevel\>' /home/orangepi/Downloads/MMDVMPLUS.ini_copia3`
var1=`grep -m 1 '\<RXLevel\>' /home/orangepi/Downloads/MMDVMPLUS.ini_copia3`
buscar=":"
largo_linea=`expr index $var $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea=`expr substr $var 1 $largo_linea`
RLvar=`grep -n -m 1 '\<RXLevel\>' /home/orangepi/MMDVMHost/MMDVMPLUS.ini_copia3`
buscar=":"
RLlargo_linea=`expr index $RLvar $buscar`
RLlargo_linea=`expr $RLlargo_linea - 1`
RLnumero_linea=`expr substr $RLvar 1 $RLlargo_linea`
RLletra=c
RLlinea_sed=$RLnumero_linea$RLletra
sed -i "$RLlinea_sed $var1" /home/orangepi/MMDVMHost/MMDVMPLUS.ini_copia3

#TXLevel
var=`grep -n -m 1 '\<TXLevel\>' /home/orangepi/Downloads/MMDVMPLUS.ini_copia3`
var1=`grep -m 1 '\<TXLevel\>' /home/orangepi/Downloads/MMDVMPLUS.ini_copia3`
buscar=":"
largo_linea=`expr index $var $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea=`expr substr $var 1 $largo_linea`
TLvar=`grep -n -m 1 '\<TXLevel\>' /home/orangepi/MMDVMHost/MMDVMPLUS.ini_copia3`
buscar=":"
TLlargo_linea=`expr index $TLvar $buscar`
TLlargo_linea=`expr $TLlargo_linea - 1`
TLnumero_linea=`expr substr $TLvar 1 $TLlargo_linea`
TLletra=c
TLlinea_sed=$TLnumero_linea$TLletra
sed -i "$TLlinea_sed $var1" /home/orangepi/MMDVMHost/MMDVMPLUS.ini_copia3

#Module
var=`grep -n -m 1 '\<Module\>' /home/orangepi/Downloads/MMDVMPLUS.ini_copia3`
var1=`grep -m 1 '\<Module\>' /home/orangepi/Downloads/MMDVMPLUS.ini_copia3`
buscar=":"
largo_linea=`expr index $var $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea=`expr substr $var 1 $largo_linea`
MOvar=`grep -n -m 1 '\<Module\>' /home/orangepi/MMDVMHost/MMDVMPLUS.ini_copia3`
buscar=":"
MOlargo_linea=`expr index $MOvar $buscar`
MOlargo_linea=`expr $MOlargo_linea - 1`
MOnumero_linea=`expr substr $MOvar 1 $MOlargo_linea`
MOletra=c
MOlinea_sed=$MOnumero_linea$MOletra
sed -i "$MOlinea_sed $var1" /home/orangepi/MMDVMHost/MMDVMPLUS.ini_copia3

#Txinvert
var=`grep -n -m 1 '\<TXInvert\>' /home/orangepi/Downloads/MMDVMPLUS.ini_copia3`
var1=`grep -m 1 '\<TXInvert\>' /home/orangepi/Downloads/MMDVMPLUS.ini_copia3`
buscar=":"
largo_linea=`expr index $var $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea=`expr substr $var 1 $largo_linea`
TIvar=`grep -n -m 1 '\<TXInvert\>' /home/orangepi/MMDVMHost/MMDVMPLUS.ini_copia3`
buscar=":"
TIlargo_linea=`expr index $TIvar $buscar`
TIlargo_linea=`expr $TIlargo_linea - 1`
TInumero_linea=`expr substr $TIvar 1 $TIlargo_linea`
TIletra=c
TIlinea_sed=$TInumero_linea$TIletra
sed -i "$TIlinea_sed $var1" /home/orangepi/MMDVMHost/MMDVMPLUS.ini_copia3

#Modem capturado de la linea txinvert -1
numero_linea_MODEM=`expr $numero_linea - 1` # Downloads
MOnumero_linea_MODEM=`expr $TInumero_linea - 1` # MMDVMHost
modem=$(awk "NR==$numero_linea_MODEM" /home/orangepi/Downloads/MMDVMPLUS.ini_copia3)
TIletra=c
TIlinea_sed=$MOnumero_linea_MODEM$TIletra
sed -i "$TIlinea_sed $modem" /home/orangepi/MMDVMHost/MMDVMPLUS.ini_copia3

#Address
var=`grep -n -m 1 '\<Address\>' /home/orangepi/Downloads/MMDVMPLUS.ini_copia3`
var1=`grep -m 1 '\<Address\>' /home/orangepi/Downloads/MMDVMPLUS.ini_copia3`
buscar=":"
largo_linea=`expr index $var $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea_Address=`expr substr $var 1 $largo_linea`
ADvar=`grep -n -m 1 '\<Address\>' /home/orangepi/MMDVMHost/MMDVMPLUS.ini_copia3`
buscar=":"
ADlargo_linea=`expr index $ADvar $buscar`
ADlargo_linea=`expr $ADlargo_linea - 1`
ADnumero_linea_Address=`expr substr $ADvar 1 $ADlargo_linea`
ADletra=c
ADlinea_sed=$ADnumero_linea_Address$ADletra
sed -i "$ADlinea_sed $var1" /home/orangepi/MMDVMHost/MMDVMPLUS.ini_copia3

#Port captura de la linea Address +1
numero_linea_Address=`expr $numero_linea_Address + 1` # Downloads
ADnumero_linea_Address=`expr $ADnumero_linea_Address + 1` # MMDVMHost
port=$(awk "NR==$numero_linea_Address" /home/orangepi/Downloads/MMDVMPLUS.ini_copia3)
ADletra=c
ADlinea_sed=$ADnumero_linea_Address$ADletra
sed -i "$ADlinea_sed $port" /home/orangepi/MMDVMHost/MMDVMPLUS.ini_copia3

#Password
var=`grep -n -m 1 '\<Password\>' /home/orangepi/Downloads/MMDVMPLUS.ini_copia3`
var1=`grep -m 1 '\<Password\>' /home/orangepi/Downloads/MMDVMPLUS.ini_copia3`
buscar=":"
largo_linea=`expr index $var $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea_password=`expr substr $var 1 $largo_linea`
PWvar=`grep -n -m 1 '\<Password\>' /home/orangepi/MMDVMHost/MMDVMPLUS.ini_copia3`
buscar=":"
PWlargo_linea=`expr index $PWvar $buscar`
PWlargo_linea=`expr $PWlargo_linea - 1`
PWnumero_linea_password=`expr substr $PWvar 1 $PWlargo_linea`
PWletra=c
PWlinea_sed=$PWnumero_linea_password$PWletra
sed -i "$PWlinea_sed $var1" /home/orangepi/MMDVMHost/MMDVMPLUS.ini_copia3

#Options linea password  +1
numero_linea_password=`expr $numero_linea_password + 1` # Downloads
PWnumero_linea_password=`expr $PWnumero_linea_password + 1` # MMDVMHost
option=$(awk "NR==$numero_linea_password" /home/orangepi/Downloads/MMDVMPLUS.ini_copia3)
PWletra=c
PWlinea_sed=$PWnumero_linea_password$PWletra
sed -i "$PWlinea_sed $option" /home/orangepi/MMDVMHost/MMDVMPLUS.ini_copia3

#ScreenLayout
var=`grep -n -m 1 '\<ScreenLayout\>' /home/orangepi/Downloads/MMDVMPLUS.ini_copia3`
var1=`grep -m 1 '\<ScreenLayout\>' /home/orangepi/Downloads/MMDVMPLUS.ini_copia3`
buscar=":"
largo_linea=`expr index $var $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea=`expr substr $var 1 $largo_linea`
SCvar=`grep -n -m 1 '\<ScreenLayout\>' /home/orangepi/MMDVMHost/MMDVMPLUS.ini_copia3`
buscar=":"
SClargo_linea=`expr index $SCvar $buscar`
SClargo_linea=`expr $SClargo_linea - 1`
SCnumero_linea=`expr substr $SCvar 1 $SClargo_linea`
SCletra=c
SClinea_sed=$SCnumero_linea$SCletra
sed -i "$SClinea_sed $var1" /home/orangepi/MMDVMHost/MMDVMPLUS.ini_copia3

#Brightness
var=`grep -n -m 1 '\<Brightness\>' /home/orangepi/Downloads/MMDVMPLUS.ini_copia3`
var1=`grep -m 1 '\<Brightness\>' /home/orangepi/Downloads/MMDVMPLUS.ini_copia3`
buscar=":"
largo_linea=`expr index $var $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea=`expr substr $var 1 $largo_linea`
BRvar=`grep -n -m 1 '\<Brightness\>' /home/orangepi/MMDVMHost/MMDVMPLUS.ini_copia3`
buscar=":"
BRlargo_linea=`expr index $BRvar $buscar`
BRlargo_linea=`expr $BRlargo_linea - 1`
BRnumero_linea=`expr substr $BRvar 1 $BRlargo_linea`
BRletra=c
BRlinea_sed=$BRnumero_linea$BRletra
sed -i "$BRlinea_sed $var1" /home/orangepi/MMDVMHost/MMDVMPLUS.ini_copia3

#Slot1
var=`grep -n -m 1 '\<Slot1\>' /home/orangepi/Downloads/MMDVMPLUS.ini_copia3`
var1=`grep -m 1 '\<Slot1\>' /home/orangepi/Downloads/MMDVMPLUS.ini_copia3`
buscar=":"
largo_linea=`expr index $var $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea=`expr substr $var 1 $largo_linea`
SLvar=`grep -n -m 1 '\<Slot1\>' /home/orangepi/MMDVMHost/MMDVMPLUS.ini_copia3`
buscar=":"
SLlargo_linea=`expr index $SLvar $buscar`
SLlargo_linea=`expr $SLlargo_linea - 1`
SLnumero_linea=`expr substr $SLvar 1 $SLlargo_linea`
SLletra=c
SLlinea_sed=$SLnumero_linea$SLletra
sed -i "$SLlinea_sed $var1" /home/orangepi/MMDVMHost/MMDVMPLUS.ini_copia3

#DisplayLevel
var=`grep -n -m 1 '\<DisplayLevel\>' /home/orangepi/Downloads/MMDVMPLUS.ini_copia3`
var1=`grep -m 1 '\<DisplayLevel\>' /home/orangepi/Downloads/MMDVMPLUS.ini_copia3`
buscar=":"
largo_linea=`expr index $var $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea=`expr substr $var 1 $largo_linea`
DIvar=`grep -n -m 1 '\<DisplayLevel\>' /home/orangepi/MMDVMHost/MMDVMPLUS.ini_copia3`
buscar=":"
DIlargo_linea=`expr index $DIvar $buscar`
DIlargo_linea=`expr $DIlargo_linea - 1`
DInumero_linea=`expr substr $DIvar 1 $DIlargo_linea`
DIletra=c
DIlinea_sed=$DInumero_linea$DIletra
sed -i "$DIlinea_sed $var1" /home/orangepi/MMDVMHost/MMDVMPLUS.ini_copia3

#TXHang
var=`grep -n -m 1 '\<TXHang\>' /home/orangepi/Downloads/MMDVMPLUS.ini_copia3`
var1=`grep -m 1 '\<TXHang\>' /home/orangepi/Downloads/MMDVMPLUS.ini_copia3`
buscar=":"
largo_linea=`expr index $var $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea=`expr substr $var 1 $largo_linea`
THvar=`grep -n -m 1 '\<TXHang\>' /home/orangepi/MMDVMHost/MMDVMPLUS.ini_copia3`
buscar=":"
THlargo_linea=`expr index $THvar $buscar`
THlargo_linea=`expr $THlargo_linea - 1`
THnumero_linea=`expr substr $THvar 1 $THlargo_linea`
THletra=c
THlinea_sed=$THnumero_linea$THletra
sed -i "$THlinea_sed $var1" /home/orangepi/MMDVMHost/MMDVMPLUS.ini_copia3

#D-Star
var=`grep -n -m 1 "\[D-Star\]" /home/orangepi/Downloads/MMDVMPLUS.ini_copia3` 
var1=`grep -m 1 "\[D-Star\]" /home/orangepi/Downloads/MMDVMPLUS.ini_copia3`
buscar=":"
largo_linea=`expr index $var $buscar` 
largo_linea=`expr $largo_linea - 1` 
numero_linea=`expr substr $var 1 $largo_linea` 
numero_linea_dstar=`expr $numero_linea + 1` 
DSvar=`grep -n -m 1 "\[D-Star\]" /home/orangepi/MMDVMHost/MMDVMPLUS.ini_copia3` 
DSvar1=`grep -m 1 "\[D-Star\]" /home/orangepi/MMDVMHost/MMDVMPLUS.ini_copia3`
buscar=":"
DSlargo_linea=`expr index $DSvar $buscar` 
DSlargo_linea=`expr $DSlargo_linea - 1` 
DSnumero_linea=`expr substr $DSvar 1 $DSlargo_linea` 
DSnumero_linea_dstar=`expr $DSnumero_linea + 1`
DSDS=$(awk "NR==$numero_linea_dstar" /home/orangepi/Downloads/MMDVMPLUS.ini_copia3) 
DSletrac=c
DSlinea_sed=$DSnumero_linea_dstar$DSletrac
sed -i "$DSlinea_sed $DSDS" /home/orangepi/MMDVMHost/MMDVMPLUS.ini_copia3

#DMR
var=`grep -n -m 1 "\[DMR\]" /home/orangepi/Downloads/MMDVMPLUS.ini_copia3` 
var1=`grep -m 1 "\[DMR\]" /home/orangepi/Downloads/MMDVMPLUS.ini_copia3`
buscar=":"
largo_linea=`expr index $var $buscar` 
largo_linea=`expr $largo_linea - 1` 
numero_linea=`expr substr $var 1 $largo_linea` 
numero_linea_dmr=`expr $numero_linea + 1` 
DMvar=`grep -n "\[DMR\]" /home/orangepi/MMDVMHost/MMDVMPLUS.ini_copia3` 
DMvar1=`grep -n -m 1 "\[DMR\]" /home/orangepi/MMDVMHost/MMDVMPLUS.ini_copia3`
buscar=":"
DMlargo_linea=`expr index $DMvar $buscar` 
DMlargo_linea=`expr $DMlargo_linea - 1` 
DMnumero_linea=`expr substr $DMvar 1 $DMlargo_linea` 
DMnumero_linea_dmr=`expr $DMnumero_linea + 1` 
DMDM=$(awk "NR==$numero_linea_dmr" /home/orangepi/Downloads/MMDVMPLUS.ini_copia3)
DMletrac=c
DMlinea_sed=$DMnumero_linea_dmr$DMletrac 
sed -i "$DMlinea_sed $DMDM" /home/orangepi/MMDVMHost/MMDVMPLUS.ini_copia3

#P25
var=`grep -n -m 1 "\[P25\]" /home/orangepi/Downloads/MMDVMPLUS.ini_copia3` 
var1=`grep -m 1 "\[P25\]" /home/orangepi/Downloads/MMDVMPLUS.ini_copia3`
buscar=":"
largo_linea=`expr index $var $buscar` 
largo_linea=`expr $largo_linea - 1` 
numero_linea=`expr substr $var 1 $largo_linea` 
numero_linea_p25=`expr $numero_linea + 1` 
P2var=`grep -n -m 1 "\[P25\]" /home/orangepi/MMDVMHost/MMDVMPLUS.ini_copia3` 
P2var1=`grep -n "\[P25\]" /home/orangepi/MMDVMHost/MMDVMPLUS.ini_copia3`
buscar=":"
P2largo_linea=`expr index $P2var $buscar` 
P2largo_linea=`expr $P2largo_linea - 1` 
P2numero_linea=`expr substr $P2var 1 $P2largo_linea` 
P2numero_linea_p25=`expr $P2numero_linea + 1` 
P2P2=$(awk "NR==$numero_linea_p25" /home/orangepi/Downloads/MMDVMPLUS.ini_copia3)
P2letrac=c
P2linea_sed=$P2numero_linea_p25$P2letrac
sed -i "$P2linea_sed $P2P2" /home/orangepi/MMDVMHost/MMDVMPLUS.ini_copia3

#FUSION
var1=`grep -n -m 1 "\[System Fusion\]" /home/orangepi/Downloads/MMDVMPLUS.ini_copia3`
var2=`echo "$var1" | tr -d '[[:space:]]'`
buscar=":"
largo_linea=`expr index $var2 $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea=`expr substr $var2 1 $largo_linea`
numero_linea=`expr $numero_linea + 1`
CWvar1=`grep -n -m 1 "\[System Fusion\]" /home/orangepi/MMDVMHost/MMDVMPLUS.ini_copia3`
CWvar2=`echo "$CWvar1" | tr -d '[[:space:]]'`
buscar=":"
CWlargo_linea=`expr index $CWvar2 $buscar`
CWlargo_linea=`expr $CWlargo_linea - 1`
CWnumero_linea=`expr substr $CWvar2 1 $CWlargo_linea`
CWnumero_linea=`expr $CWnumero_linea + 1`
CWCW=$(awk "NR==$CWnumero_linea" /home/orangepi/Downloads/MMDVMPLUS.ini_copia3)
CWletra=c
CWlinea_sed=$CWnumero_linea$CWletra
sed -i "$CWlinea_sed $CWCW" /home/orangepi/MMDVMHost/MMDVMPLUS.ini_copia3

#Nextion
var=`grep -n -m 1 "\[Nextion\]" /home/orangepi/Downloads/MMDVMPLUS.ini_copia3` 
var1=`grep -m 1 "\[Nextion\]" /home/orangepi/Downloads/MMDVMPLUS.ini_copia3`
buscar=":"
largo_linea=`expr index $var $buscar` 
largo_linea=`expr $largo_linea - 1` 
numero_linea=`expr substr $var 1 $largo_linea` 
numero_linea_p25=`expr $numero_linea + 2` 
P2var=`grep -n -m 1 "\[Nextion\]" /home/orangepi/MMDVMHost/MMDVMPLUS.ini_copia3` 
P2var1=`grep -n "\[Nextion\]" /home/orangepi/MMDVMHost/MMDVMPLUS.ini_copia3`
buscar=":"
P2largo_linea=`expr index $P2var $buscar` 
P2largo_linea=`expr $P2largo_linea - 1` 
P2numero_linea=`expr substr $P2var 1 $P2largo_linea` 
P2numero_linea_p25=`expr $P2numero_linea + 2` 
P2P2=$(awk "NR==$numero_linea_p25" /home/orangepi/Downloads/MMDVMPLUS.ini_copia3)
P2letrac=c
P2linea_sed=$P2numero_linea_p25$P2letrac
sed -i "$P2linea_sed $P2P2" /home/orangepi/MMDVMHost/MMDVMPLUS.ini_copia3
#======================= MMDVMDSTAR.ini   ============================
#******************************************************************
# Callsign 
var=`grep -n -m 1 '\<Callsign\>' /home/orangepi/Downloads/MMDVMDSTAR.ini` # 2:Callsign=EA3EIZ
var1=`grep -m 1 '\<Callsign\>' /home/orangepi/Downloads/MMDVMDSTAR.ini` # Callsign=EA3EIZ
buscar=":"
largo_linea=`expr index $var $buscar` #comprueba el largo incluyendo los dos puntos (:)
largo_linea=`expr $largo_linea - 1` #comprueba el largo quitando los dos puntos (:)
numero_linea=`expr substr $var 1 $largo_linea` # recoge numero linea Downloads
Hvar=`grep -n -m 1 '\<Callsign\>' /home/orangepi/MMDVMHost/MMDVMDSTAR.ini` # 2:Callsign=EA3EIZ
buscar=":"
Hlargo_linea=`expr index $Hvar $buscar` 
Hlargo_linea=`expr $Hlargo_linea - 1` 
Hnumero_linea=`expr substr $Hvar 1 $Hlargo_linea` # recoge numero linea MMDXVMHost
Hletra=c
Hlinea_sed=$Hnumero_linea$Hletra
sed -i "$Hlinea_sed $var1" /home/orangepi/MMDVMHost/MMDVMDSTAR.ini

#Id capturado de la linea 3
Id=$(awk "NR==3" /home/orangepi/Downloads/MMDVMDSTAR.ini)
sed -i "3c $Id" /home/orangepi/MMDVMHost/MMDVMDSTAR.ini

#Timeout capturado de la linea 4
timeou=$(awk "NR==4" /home/orangepi/Downloads/MMDVMDSTAR.ini)
sed -i "4c $timeou" /home/orangepi/MMDVMHost/MMDVMDSTAR.ini

#Duplex
var=`grep -n -m 1 '\<Duplex\>' /home/orangepi/Downloads/MMDVMDSTAR.ini`
var1=`grep -m 1 '\<Duplex\>' /home/orangepi/Downloads/MMDVMDSTAR.ini`
buscar=":"
largo_linea=`expr index $var $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea=`expr substr $var 1 $largo_linea`
Dvar=`grep -n -m 1 '\<Duplex\>' /home/orangepi/MMDVMHost/MMDVMDSTAR.ini`
buscar=":"
Dlargo_linea=`expr index $Dvar $buscar`
Dlargo_linea=`expr $Dlargo_linea - 1`
Dnumero_linea=`expr substr $Dvar 1 $Dlargo_linea`
Dletra=c
Dlinea_sed=$Dnumero_linea$Dletra
sed -i "$Dlinea_sed $var1" /home/orangepi/MMDVMHost/MMDVMDSTAR.ini

#RFModeHang
var=`grep -n -m 1 '\<RFModeHang\>' /home/orangepi/Downloads/MMDVMDSTAR.ini`
var1=`grep -m 1 '\<RFModeHang\>' /home/orangepi/Downloads/MMDVMDSTAR.ini`
buscar=":"
largo_linea=`expr index $var $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea=`expr substr $var 1 $largo_linea`
Rvar=`grep -n -m 1 '\<RFModeHang\>' /home/orangepi/MMDVMHost/MMDVMDSTAR.ini`
buscar=":"
Rlargo_linea=`expr index $Rvar $buscar`
Rlargo_linea=`expr $Rlargo_linea - 1`
Rnumero_linea=`expr substr $Rvar 1 $Rlargo_linea`
Rletra=c
Rlinea_sed=$Rnumero_linea$Rletra
sed -i "$Rlinea_sed $var1" /home/orangepi/MMDVMHost/MMDVMDSTAR.ini

#Display
var=`grep -n -m 1 '\<Display\>' /home/orangepi/Downloads/MMDVMDSTAR.ini`
var1=`grep -m 1 '\<Display\>' /home/orangepi/Downloads/MMDVMDSTAR.ini`
buscar=":"
largo_linea=`expr index $var $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea=`expr substr $var 1 $largo_linea`
Dvar=`grep -n -m 1 '\<Display\>' /home/orangepi/MMDVMHost/MMDVMDSTAR.ini`
buscar=":"
Dlargo_linea=`expr index $Dvar $buscar`
Dlargo_linea=`expr $Dlargo_linea - 1`
Dnumero_linea=`expr substr $Dvar 1 $Dlargo_linea`
Dletra=c
Dlinea_sed=$Dnumero_linea$Dletra
sed -i "$Dlinea_sed $var1" /home/orangepi/MMDVMHost/MMDVMDSTAR.ini

#RXFrequency
var=`grep -n -m 1 '\<RXFrequency\>' /home/orangepi/Downloads/MMDVMDSTAR.ini`
var1=`grep -m 1 '\<RXFrequency\>' /home/orangepi/Downloads/MMDVMDSTAR.ini`
buscar=":"
largo_linea=`expr index $var $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea=`expr substr $var 1 $largo_linea`
Xvar=`grep -n -m 1 '\<RXFrequency\>' /home/orangepi/MMDVMHost/MMDVMDSTAR.ini`
buscar=":"
Xlargo_linea=`expr index $Xvar $buscar`
Xlargo_linea=`expr $Xlargo_linea - 1`
Xnumero_linea=`expr substr $Xvar 1 $Xlargo_linea`
Xletra=c
Xlinea_sed=$Xnumero_linea$Xletra
sed -i "$Xlinea_sed $var1" /home/orangepi/MMDVMHost/MMDVMDSTAR.ini

#TXFrequency
var=`grep -n -m 1 '\<TXFrequency\>' /home/orangepi/Downloads/MMDVMDSTAR.ini`
var1=`grep -m 1 '\<TXFrequency\>' /home/orangepi/Downloads/MMDVMDSTAR.ini`
buscar=":"
largo_linea=`expr index $var $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea=`expr substr $var 1 $largo_linea`
Tvar=`grep -n -m 1 '\<TXFrequency\>' /home/orangepi/MMDVMHost/MMDVMDSTAR.ini`
buscar=":"
Tlargo_linea=`expr index $Tvar $buscar`
Tlargo_linea=`expr $Tlargo_linea - 1`
Tnumero_linea=`expr substr $Tvar 1 $Tlargo_linea`
Tletra=c
Tlinea_sed=$Tnumero_linea$Tletra
sed -i "$Tlinea_sed $var1" /home/orangepi/MMDVMHost/MMDVMDSTAR.ini

#Latitude
var=`grep -n -m 1 '\<Latitude\>' /home/orangepi/Downloads/MMDVMDSTAR.ini`
var1=`grep -m 1 '\<Latitude\>' /home/orangepi/Downloads/MMDVMDSTAR.ini`
buscar=":"
largo_linea=`expr index $var $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea=`expr substr $var 1 $largo_linea`
Lvar=`grep -n -m 1 '\<Latitude\>' /home/orangepi/MMDVMHost/MMDVMDSTAR.ini`
buscar=":"
Llargo_linea=`expr index $Lvar $buscar`
Llargo_linea=`expr $Llargo_linea - 1`
Lnumero_linea=`expr substr $Lvar 1 $Llargo_linea`
Lletra=c
Llinea_sed=$Lnumero_linea$Lletra
sed -i "$Llinea_sed $var1" /home/orangepi/MMDVMHost/MMDVMDSTAR.ini

#Longitude
var=`grep -n -m 1 '\<Longitude\>' /home/orangepi/Downloads/MMDVMDSTAR.ini`
var1=`grep -m 1 '\<Longitude\>' /home/orangepi/Downloads/MMDVMDSTAR.ini`
buscar=":"
largo_linea=`expr index $var $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea=`expr substr $var 1 $largo_linea`
LGvar=`grep -n -m 1 '\<Longitude\>' /home/orangepi/MMDVMHost/MMDVMDSTAR.ini`
buscar=":"
LGlargo_linea=`expr index $LGvar $buscar`
LGlargo_linea=`expr $LGlargo_linea - 1`
LGnumero_linea=`expr substr $LGvar 1 $LGlargo_linea`
LGletra=c
LGlinea_sed=$LGnumero_linea$LGletra
sed -i "$LGlinea_sed $var1" /home/orangepi/MMDVMHost/MMDVMDSTAR.ini

#Location
var=`grep -n -m 1 '\<Location\>' /home/orangepi/Downloads/MMDVMDSTAR.ini`
var1=`grep -m 1 '\<Location\>' /home/orangepi/Downloads/MMDVMDSTAR.ini`
buscar=":"
largo_linea=`expr index $var $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea=`expr substr $var 1 $largo_linea`
LOvar=`grep -n -m 1 '\<Location\>' /home/orangepi/MMDVMHost/MMDVMDSTAR.ini`
buscar=":"
LOlargo_linea=`expr index $LOvar $buscar`
LOlargo_linea=`expr $LOlargo_linea - 1`
LOnumero_linea=`expr substr $LOvar 1 $LOlargo_linea`
LOletra=c
LOlinea_sed=$LOnumero_linea$LOletra
sed -i "$LOlinea_sed $var1" /home/orangepi/MMDVMHost/MMDVMDSTAR.ini

#URL
var=`grep -n -m 1 '\<URL\>' /home/orangepi/Downloads/MMDVMDSTAR.ini`
var1=`grep -m 1 '\<URL\>' /home/orangepi/Downloads/MMDVMDSTAR.ini`
buscar=":"
largo_linea=`expr index $var $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea_url=`expr substr $var 1 $largo_linea`
Uvar=`grep -n -m 1 '\<URL\>' /home/orangepi/MMDVMHost/MMDVMDSTAR.ini`
Ubuscar=":"
Ulargo_linea=`expr index $Uvar $buscar`
Ulargo_linea=`expr $Ulargo_linea - 1`
Unumero_linea_url=`expr substr $Uvar 1 $largo_linea`
Uletra=c
Ulinea_sed=$Unumero_linea_url$Uletra
sed -i "$Ulinea_sed $var1" /home/orangepi/MMDVMHost/MMDVMDSTAR.ini

#Baliza 
var1=`grep -n -m 1 "\[CW Id\]" /home/orangepi/Downloads/MMDVMDSTAR.ini`
var2=`echo "$var1" | tr -d '[[:space:]]'`
buscar=":"
largo_linea=`expr index $var2 $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea=`expr substr $var2 1 $largo_linea`
numero_linea=`expr $numero_linea + 1`
CWvar1=`grep -n -m 1 "\[CW Id\]" /home/orangepi/MMDVMHost/MMDVMDSTAR.ini`
CWvar2=`echo "$CWvar1" | tr -d '[[:space:]]'`
buscar=":"
CWlargo_linea=`expr index $CWvar2 $buscar`
CWlargo_linea=`expr $CWlargo_linea - 1`
CWnumero_linea=`expr substr $CWvar2 1 $CWlargo_linea`
CWnumero_linea=`expr $CWnumero_linea + 1`
CWCW=$(awk "NR==$CWnumero_linea" /home/orangepi/Downloads/MMDVMDSTAR.ini)
CWletra=c
CWlinea_sed=$CWnumero_linea$CWletra
sed -i "$CWlinea_sed $CWCW" /home/orangepi/MMDVMHost/MMDVMDSTAR.ini

#RXLevel
var=`grep -n -m 1 '\<RXLevel\>' /home/orangepi/Downloads/MMDVMDSTAR.ini`
var1=`grep -m 1 '\<RXLevel\>' /home/orangepi/Downloads/MMDVMDSTAR.ini`
buscar=":"
largo_linea=`expr index $var $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea=`expr substr $var 1 $largo_linea`
RLvar=`grep -n -m 1 '\<RXLevel\>' /home/orangepi/MMDVMHost/MMDVMDSTAR.ini`
buscar=":"
RLlargo_linea=`expr index $RLvar $buscar`
RLlargo_linea=`expr $RLlargo_linea - 1`
RLnumero_linea=`expr substr $RLvar 1 $RLlargo_linea`
RLletra=c
RLlinea_sed=$RLnumero_linea$RLletra
sed -i "$RLlinea_sed $var1" /home/orangepi/MMDVMHost/MMDVMDSTAR.ini

#TXLevel
var=`grep -n -m 1 '\<TXLevel\>' /home/orangepi/Downloads/MMDVMDSTAR.ini`
var1=`grep -m 1 '\<TXLevel\>' /home/orangepi/Downloads/MMDVMDSTAR.ini`
buscar=":"
largo_linea=`expr index $var $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea=`expr substr $var 1 $largo_linea`
TLvar=`grep -n -m 1 '\<TXLevel\>' /home/orangepi/MMDVMHost/MMDVMDSTAR.ini`
buscar=":"
TLlargo_linea=`expr index $TLvar $buscar`
TLlargo_linea=`expr $TLlargo_linea - 1`
TLnumero_linea=`expr substr $TLvar 1 $TLlargo_linea`
TLletra=c
TLlinea_sed=$TLnumero_linea$TLletra
sed -i "$TLlinea_sed $var1" /home/orangepi/MMDVMHost/MMDVMDSTAR.ini

#Module
var=`grep -n -m 1 '\<Module\>' /home/orangepi/Downloads/MMDVMDSTAR.ini`
var1=`grep -m 1 '\<Module\>' /home/orangepi/Downloads/MMDVMDSTAR.ini`
buscar=":"
largo_linea=`expr index $var $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea=`expr substr $var 1 $largo_linea`
MOvar=`grep -n -m 1 '\<Module\>' /home/orangepi/MMDVMHost/MMDVMDSTAR.ini`
buscar=":"
MOlargo_linea=`expr index $MOvar $buscar`
MOlargo_linea=`expr $MOlargo_linea - 1`
MOnumero_linea=`expr substr $MOvar 1 $MOlargo_linea`
MOletra=c
MOlinea_sed=$MOnumero_linea$MOletra
sed -i "$MOlinea_sed $var1" /home/orangepi/MMDVMHost/MMDVMDSTAR.ini

#Txinvert
var=`grep -n -m 1 '\<TXInvert\>' /home/orangepi/Downloads/MMDVMDSTAR.ini`
var1=`grep -m 1 '\<TXInvert\>' /home/orangepi/Downloads/MMDVMDSTAR.ini`
buscar=":"
largo_linea=`expr index $var $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea=`expr substr $var 1 $largo_linea`
TIvar=`grep -n -m 1 '\<TXInvert\>' /home/orangepi/MMDVMHost/MMDVMDSTAR.ini`
buscar=":"
TIlargo_linea=`expr index $TIvar $buscar`
TIlargo_linea=`expr $TIlargo_linea - 1`
TInumero_linea=`expr substr $TIvar 1 $TIlargo_linea`
TIletra=c
TIlinea_sed=$TInumero_linea$TIletra
sed -i "$TIlinea_sed $var1" /home/orangepi/MMDVMHost/MMDVMDSTAR.ini

#Modem capturado de la linea txinvert -1
numero_linea_MODEM=`expr $numero_linea - 1` # Downloads
MOnumero_linea_MODEM=`expr $TInumero_linea - 1` # MMDVMHost
modem=$(awk "NR==$numero_linea_MODEM" /home/orangepi/Downloads/MMDVMDSTAR.ini)
TIletra=c
TIlinea_sed=$MOnumero_linea_MODEM$TIletra
sed -i "$TIlinea_sed $modem" /home/orangepi/MMDVMHost/MMDVMDSTAR.ini

#Address
var=`grep -n -m 1 '\<Address\>' /home/orangepi/Downloads/MMDVMDSTAR.ini`
var1=`grep -m 1 '\<Address\>' /home/orangepi/Downloads/MMDVMDSTAR.ini`
buscar=":"
largo_linea=`expr index $var $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea_Address=`expr substr $var 1 $largo_linea`
ADvar=`grep -n -m 1 '\<Address\>' /home/orangepi/MMDVMHost/MMDVMDSTAR.ini`
buscar=":"
ADlargo_linea=`expr index $ADvar $buscar`
ADlargo_linea=`expr $ADlargo_linea - 1`
ADnumero_linea_Address=`expr substr $ADvar 1 $ADlargo_linea`
ADletra=c
ADlinea_sed=$ADnumero_linea_Address$ADletra
sed -i "$ADlinea_sed $var1" /home/orangepi/MMDVMHost/MMDVMDSTAR.ini

#Port captura de la linea Address +1
numero_linea_Address=`expr $numero_linea_Address + 1` # Downloads
ADnumero_linea_Address=`expr $ADnumero_linea_Address + 1` # MMDVMHost
port=$(awk "NR==$numero_linea_Address" /home/orangepi/Downloads/MMDVMDSTAR.ini)
ADletra=c
ADlinea_sed=$ADnumero_linea_Address$ADletra
sed -i "$ADlinea_sed $port" /home/orangepi/MMDVMHost/MMDVMDSTAR.ini

#Password
var=`grep -n -m 1 '\<Password\>' /home/orangepi/Downloads/MMDVMDSTAR.ini`
var1=`grep -m 1 '\<Password\>' /home/orangepi/Downloads/MMDVMDSTAR.ini`
buscar=":"
largo_linea=`expr index $var $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea_password=`expr substr $var 1 $largo_linea`
PWvar=`grep -n -m 1 '\<Password\>' /home/orangepi/MMDVMHost/MMDVMDSTAR.ini`
buscar=":"
PWlargo_linea=`expr index $PWvar $buscar`
PWlargo_linea=`expr $PWlargo_linea - 1`
PWnumero_linea_password=`expr substr $PWvar 1 $PWlargo_linea`
PWletra=c
PWlinea_sed=$PWnumero_linea_password$PWletra
sed -i "$PWlinea_sed $var1" /home/orangepi/MMDVMHost/MMDVMDSTAR.ini

#Options linea password  +1
numero_linea_password=`expr $numero_linea_password + 1` # Downloads
PWnumero_linea_password=`expr $PWnumero_linea_password + 1` # MMDVMHost
option=$(awk "NR==$numero_linea_password" /home/orangepi/Downloads/MMDVMDSTAR.ini)
PWletra=c
PWlinea_sed=$PWnumero_linea_password$PWletra
sed -i "$PWlinea_sed $option" /home/orangepi/MMDVMHost/MMDVMDSTAR.ini

#ScreenLayout
var=`grep -n -m 1 '\<ScreenLayout\>' /home/orangepi/Downloads/MMDVMDSTAR.ini`
var1=`grep -m 1 '\<ScreenLayout\>' /home/orangepi/Downloads/MMDVMDSTAR.ini`
buscar=":"
largo_linea=`expr index $var $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea=`expr substr $var 1 $largo_linea`
SCvar=`grep -n -m 1 '\<ScreenLayout\>' /home/orangepi/MMDVMHost/MMDVMDSTAR.ini`
buscar=":"
SClargo_linea=`expr index $SCvar $buscar`
SClargo_linea=`expr $SClargo_linea - 1`
SCnumero_linea=`expr substr $SCvar 1 $SClargo_linea`
SCletra=c
SClinea_sed=$SCnumero_linea$SCletra
sed -i "$SClinea_sed $var1" /home/orangepi/MMDVMHost/MMDVMDSTAR.ini

#Brightness
var=`grep -n -m 1 '\<Brightness\>' /home/orangepi/Downloads/MMDVMDSTAR.ini`
var1=`grep -m 1 '\<Brightness\>' /home/orangepi/Downloads/MMDVMDSTAR.ini`
buscar=":"
largo_linea=`expr index $var $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea=`expr substr $var 1 $largo_linea`
BRvar=`grep -n -m 1 '\<Brightness\>' /home/orangepi/MMDVMHost/MMDVMDSTAR.ini`
buscar=":"
BRlargo_linea=`expr index $BRvar $buscar`
BRlargo_linea=`expr $BRlargo_linea - 1`
BRnumero_linea=`expr substr $BRvar 1 $BRlargo_linea`
BRletra=c
BRlinea_sed=$BRnumero_linea$BRletra
sed -i "$BRlinea_sed $var1" /home/orangepi/MMDVMHost/MMDVMDSTAR.ini

#Slot1
var=`grep -n -m 1 '\<Slot1\>' /home/orangepi/Downloads/MMDVMDSTAR.ini`
var1=`grep -m 1 '\<Slot1\>' /home/orangepi/Downloads/MMDVMDSTAR.ini`
buscar=":"
largo_linea=`expr index $var $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea=`expr substr $var 1 $largo_linea`
SLvar=`grep -n -m 1 '\<Slot1\>' /home/orangepi/MMDVMHost/MMDVMDSTAR.ini`
buscar=":"
SLlargo_linea=`expr index $SLvar $buscar`
SLlargo_linea=`expr $SLlargo_linea - 1`
SLnumero_linea=`expr substr $SLvar 1 $SLlargo_linea`
SLletra=c
SLlinea_sed=$SLnumero_linea$SLletra
sed -i "$SLlinea_sed $var1" /home/orangepi/MMDVMHost/MMDVMDSTAR.ini

#DisplayLevel
var=`grep -n -m 1 '\<DisplayLevel\>' /home/orangepi/Downloads/MMDVMDSTAR.ini`
var1=`grep -m 1 '\<DisplayLevel\>' /home/orangepi/Downloads/MMDVMDSTAR.ini`
buscar=":"
largo_linea=`expr index $var $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea=`expr substr $var 1 $largo_linea`
DIvar=`grep -n -m 1 '\<DisplayLevel\>' /home/orangepi/MMDVMHost/MMDVMDSTAR.ini`
buscar=":"
DIlargo_linea=`expr index $DIvar $buscar`
DIlargo_linea=`expr $DIlargo_linea - 1`
DInumero_linea=`expr substr $DIvar 1 $DIlargo_linea`
DIletra=c
DIlinea_sed=$DInumero_linea$DIletra
sed -i "$DIlinea_sed $var1" /home/orangepi/MMDVMHost/MMDVMDSTAR.ini

#TXHang
var=`grep -n -m 1 '\<TXHang\>' /home/orangepi/Downloads/MMDVMDSTAR.ini`
var1=`grep -m 1 '\<TXHang\>' /home/orangepi/Downloads/MMDVMDSTAR.ini`
buscar=":"
largo_linea=`expr index $var $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea=`expr substr $var 1 $largo_linea`
THvar=`grep -n -m 1 '\<TXHang\>' /home/orangepi/MMDVMHost/MMDVMDSTAR.ini`
buscar=":"
THlargo_linea=`expr index $THvar $buscar`
THlargo_linea=`expr $THlargo_linea - 1`
THnumero_linea=`expr substr $THvar 1 $THlargo_linea`
THletra=c
THlinea_sed=$THnumero_linea$THletra
sed -i "$THlinea_sed $var1" /home/orangepi/MMDVMHost/MMDVMDSTAR.ini

#D-Star
var=`grep -n -m 1 "\[D-Star\]" /home/orangepi/Downloads/MMDVMDSTAR.ini` 
var1=`grep -m 1 "\[D-Star\]" /home/orangepi/Downloads/MMDVMDSTAR.ini`
buscar=":"
largo_linea=`expr index $var $buscar` 
largo_linea=`expr $largo_linea - 1` 
numero_linea=`expr substr $var 1 $largo_linea` 
numero_linea_dstar=`expr $numero_linea + 1` 
DSvar=`grep -n -m 1 "\[D-Star\]" /home/orangepi/MMDVMHost/MMDVMDSTAR.ini` 
DSvar1=`grep -m 1 "\[D-Star\]" /home/orangepi/MMDVMHost/MMDVMDSTAR.ini`
buscar=":"
DSlargo_linea=`expr index $DSvar $buscar` 
DSlargo_linea=`expr $DSlargo_linea - 1` 
DSnumero_linea=`expr substr $DSvar 1 $DSlargo_linea` 
DSnumero_linea_dstar=`expr $DSnumero_linea + 1`
DSDS=$(awk "NR==$numero_linea_dstar" /home/orangepi/Downloads/MMDVMDSTAR.ini) 
DSletrac=c
DSlinea_sed=$DSnumero_linea_dstar$DSletrac
sed -i "$DSlinea_sed $DSDS" /home/orangepi/MMDVMHost/MMDVMDSTAR.ini

#DMR
var=`grep -n -m 1 "\[DMR\]" /home/orangepi/Downloads/MMDVMDSTAR.ini` 
var1=`grep -m 1 "\[DMR\]" /home/orangepi/Downloads/MMDVMDSTAR.ini`
buscar=":"
largo_linea=`expr index $var $buscar` 
largo_linea=`expr $largo_linea - 1` 
numero_linea=`expr substr $var 1 $largo_linea` 
numero_linea_dmr=`expr $numero_linea + 1` 
DMvar=`grep -n "\[DMR\]" /home/orangepi/MMDVMHost/MMDVMDSTAR.ini` 
DMvar1=`grep -n -m 1 "\[DMR\]" /home/orangepi/MMDVMHost/MMDVMDSTAR.ini`
buscar=":"
DMlargo_linea=`expr index $DMvar $buscar` 
DMlargo_linea=`expr $DMlargo_linea - 1` 
DMnumero_linea=`expr substr $DMvar 1 $DMlargo_linea` 
DMnumero_linea_dmr=`expr $DMnumero_linea + 1` 
DMDM=$(awk "NR==$numero_linea_dmr" /home/orangepi/Downloads/MMDVMDSTAR.ini)
DMletrac=c
DMlinea_sed=$DMnumero_linea_dmr$DMletrac 
sed -i "$DMlinea_sed $DMDM" /home/orangepi/MMDVMHost/MMDVMDSTAR.ini

#P25
var=`grep -n -m 1 "\[P25\]" /home/orangepi/Downloads/MMDVMDSTAR.ini` 
var1=`grep -m 1 "\[P25\]" /home/orangepi/Downloads/MMDVMDSTAR.ini`
buscar=":"
largo_linea=`expr index $var $buscar` 
largo_linea=`expr $largo_linea - 1` 
numero_linea=`expr substr $var 1 $largo_linea` 
numero_linea_p25=`expr $numero_linea + 1` 
P2var=`grep -n -m 1 "\[P25\]" /home/orangepi/MMDVMHost/MMDVMDSTAR.ini` 
P2var1=`grep -n "\[P25\]" /home/orangepi/MMDVMHost/MMDVMDSTAR.ini`
buscar=":"
P2largo_linea=`expr index $P2var $buscar` 
P2largo_linea=`expr $P2largo_linea - 1` 
P2numero_linea=`expr substr $P2var 1 $P2largo_linea` 
P2numero_linea_p25=`expr $P2numero_linea + 1` 
P2P2=$(awk "NR==$numero_linea_p25" /home/orangepi/Downloads/MMDVMDSTAR.ini)
P2letrac=c
P2linea_sed=$P2numero_linea_p25$P2letrac
sed -i "$P2linea_sed $P2P2" /home/orangepi/MMDVMHost/MMDVMDSTAR.ini

#FUSION
var1=`grep -n -m 1 "\[System Fusion\]" /home/orangepi/Downloads/MMDVMDSTAR.ini`
var2=`echo "$var1" | tr -d '[[:space:]]'`
buscar=":"
largo_linea=`expr index $var2 $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea=`expr substr $var2 1 $largo_linea`
numero_linea=`expr $numero_linea + 1`
CWvar1=`grep -n -m 1 "\[System Fusion\]" /home/orangepi/MMDVMHost/MMDVMDSTAR.ini`
CWvar2=`echo "$CWvar1" | tr -d '[[:space:]]'`
buscar=":"
CWlargo_linea=`expr index $CWvar2 $buscar`
CWlargo_linea=`expr $CWlargo_linea - 1`
CWnumero_linea=`expr substr $CWvar2 1 $CWlargo_linea`
CWnumero_linea=`expr $CWnumero_linea + 1`
CWCW=$(awk "NR==$CWnumero_linea" /home/orangepi/Downloads/MMDVMDSTAR.ini)
CWletra=c
CWlinea_sed=$CWnumero_linea$CWletra
sed -i "$CWlinea_sed $CWCW" /home/orangepi/MMDVMHost/MMDVMDSTAR.ini

#Nextion
var=`grep -n -m 1 "\[Nextion\]" /home/orangepi/Downloads/MMDVMDSTAR.ini` 
var1=`grep -m 1 "\[Nextion\]" /home/orangepi/Downloads/MMDVMDSTAR.ini`
buscar=":"
largo_linea=`expr index $var $buscar` 
largo_linea=`expr $largo_linea - 1` 
numero_linea=`expr substr $var 1 $largo_linea` 
numero_linea_p25=`expr $numero_linea + 2` 
P2var=`grep -n -m 1 "\[Nextion\]" /home/orangepi/MMDVMHost/MMDVMDSTAR.ini` 
P2var1=`grep -n "\[Nextion\]" /home/orangepi/MMDVMHost/MMDVMDSTAR.ini`
buscar=":"
P2largo_linea=`expr index $P2var $buscar` 
P2largo_linea=`expr $P2largo_linea - 1` 
P2numero_linea=`expr substr $P2var 1 $P2largo_linea` 
P2numero_linea_p25=`expr $P2numero_linea + 2` 
P2P2=$(awk "NR==$numero_linea_p25" /home/orangepi/Downloads/MMDVMDSTAR.ini)
P2letrac=c
P2linea_sed=$P2numero_linea_p25$P2letrac
sed -i "$P2linea_sed $P2P2" /home/orangepi/MMDVMHost/MMDVMDSTAR.ini
#======================= MMDVMFUSION.ini   ============================
#******************************************************************
# Callsign 
var=`grep -n -m 1 '\<Callsign\>' /home/orangepi/Downloads/MMDVMFUSION.ini` # 2:Callsign=EA3EIZ
var1=`grep -m 1 '\<Callsign\>' /home/orangepi/Downloads/MMDVMFUSION.ini` # Callsign=EA3EIZ
buscar=":"
largo_linea=`expr index $var $buscar` #comprueba el largo incluyendo los dos puntos (:)
largo_linea=`expr $largo_linea - 1` #comprueba el largo quitando los dos puntos (:)
numero_linea=`expr substr $var 1 $largo_linea` # recoge numero linea Downloads
Hvar=`grep -n -m 1 '\<Callsign\>' /home/orangepi/MMDVMHost/MMDVMFUSION.ini` # 2:Callsign=EA3EIZ
buscar=":"
Hlargo_linea=`expr index $Hvar $buscar` 
Hlargo_linea=`expr $Hlargo_linea - 1` 
Hnumero_linea=`expr substr $Hvar 1 $Hlargo_linea` # recoge numero linea MMDXVMHost
Hletra=c
Hlinea_sed=$Hnumero_linea$Hletra
sed -i "$Hlinea_sed $var1" /home/orangepi/MMDVMHost/MMDVMFUSION.ini

#Id capturado de la linea 3
Id=$(awk "NR==3" /home/orangepi/Downloads/MMDVMFUSION.ini)
sed -i "3c $Id" /home/orangepi/MMDVMHost/MMDVMFUSION.ini

#Timeout capturado de la linea 4
timeou=$(awk "NR==4" /home/orangepi/Downloads/MMDVMFUSION.ini)
sed -i "4c $timeou" /home/orangepi/MMDVMHost/MMDVMFUSION.ini

#Duplex
var=`grep -n -m 1 '\<Duplex\>' /home/orangepi/Downloads/MMDVMFUSION.ini`
var1=`grep -m 1 '\<Duplex\>' /home/orangepi/Downloads/MMDVMFUSION.ini`
buscar=":"
largo_linea=`expr index $var $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea=`expr substr $var 1 $largo_linea`
Dvar=`grep -n -m 1 '\<Duplex\>' /home/orangepi/MMDVMHost/MMDVMFUSION.ini`
buscar=":"
Dlargo_linea=`expr index $Dvar $buscar`
Dlargo_linea=`expr $Dlargo_linea - 1`
Dnumero_linea=`expr substr $Dvar 1 $Dlargo_linea`
Dletra=c
Dlinea_sed=$Dnumero_linea$Dletra
sed -i "$Dlinea_sed $var1" /home/orangepi/MMDVMHost/MMDVMFUSION.ini

#RFModeHang
var=`grep -n -m 1 '\<RFModeHang\>' /home/orangepi/Downloads/MMDVMFUSION.ini`
var1=`grep -m 1 '\<RFModeHang\>' /home/orangepi/Downloads/MMDVMFUSION.ini`
buscar=":"
largo_linea=`expr index $var $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea=`expr substr $var 1 $largo_linea`
Rvar=`grep -n -m 1 '\<RFModeHang\>' /home/orangepi/MMDVMHost/MMDVMFUSION.ini`
buscar=":"
Rlargo_linea=`expr index $Rvar $buscar`
Rlargo_linea=`expr $Rlargo_linea - 1`
Rnumero_linea=`expr substr $Rvar 1 $Rlargo_linea`
Rletra=c
Rlinea_sed=$Rnumero_linea$Rletra
sed -i "$Rlinea_sed $var1" /home/orangepi/MMDVMHost/MMDVMFUSION.ini

#Display
var=`grep -n -m 1 '\<Display\>' /home/orangepi/Downloads/MMDVMFUSION.ini`
var1=`grep -m 1 '\<Display\>' /home/orangepi/Downloads/MMDVMFUSION.ini`
buscar=":"
largo_linea=`expr index $var $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea=`expr substr $var 1 $largo_linea`
Dvar=`grep -n -m 1 '\<Display\>' /home/orangepi/MMDVMHost/MMDVMFUSION.ini`
buscar=":"
Dlargo_linea=`expr index $Dvar $buscar`
Dlargo_linea=`expr $Dlargo_linea - 1`
Dnumero_linea=`expr substr $Dvar 1 $Dlargo_linea`
Dletra=c
Dlinea_sed=$Dnumero_linea$Dletra
sed -i "$Dlinea_sed $var1" /home/orangepi/MMDVMHost/MMDVMFUSION.ini

#RXFrequency
var=`grep -n -m 1 '\<RXFrequency\>' /home/orangepi/Downloads/MMDVMFUSION.ini`
var1=`grep -m 1 '\<RXFrequency\>' /home/orangepi/Downloads/MMDVMFUSION.ini`
buscar=":"
largo_linea=`expr index $var $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea=`expr substr $var 1 $largo_linea`
Xvar=`grep -n -m 1 '\<RXFrequency\>' /home/orangepi/MMDVMHost/MMDVMFUSION.ini`
buscar=":"
Xlargo_linea=`expr index $Xvar $buscar`
Xlargo_linea=`expr $Xlargo_linea - 1`
Xnumero_linea=`expr substr $Xvar 1 $Xlargo_linea`
Xletra=c
Xlinea_sed=$Xnumero_linea$Xletra
sed -i "$Xlinea_sed $var1" /home/orangepi/MMDVMHost/MMDVMFUSION.ini

#TXFrequency
var=`grep -n -m 1 '\<TXFrequency\>' /home/orangepi/Downloads/MMDVMFUSION.ini`
var1=`grep -m 1 '\<TXFrequency\>' /home/orangepi/Downloads/MMDVMFUSION.ini`
buscar=":"
largo_linea=`expr index $var $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea=`expr substr $var 1 $largo_linea`
Tvar=`grep -n -m 1 '\<TXFrequency\>' /home/orangepi/MMDVMHost/MMDVMFUSION.ini`
buscar=":"
Tlargo_linea=`expr index $Tvar $buscar`
Tlargo_linea=`expr $Tlargo_linea - 1`
Tnumero_linea=`expr substr $Tvar 1 $Tlargo_linea`
Tletra=c
Tlinea_sed=$Tnumero_linea$Tletra
sed -i "$Tlinea_sed $var1" /home/orangepi/MMDVMHost/MMDVMFUSION.ini

#Latitude
var=`grep -n -m 1 '\<Latitude\>' /home/orangepi/Downloads/MMDVMFUSION.ini`
var1=`grep -m 1 '\<Latitude\>' /home/orangepi/Downloads/MMDVMFUSION.ini`
buscar=":"
largo_linea=`expr index $var $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea=`expr substr $var 1 $largo_linea`
Lvar=`grep -n -m 1 '\<Latitude\>' /home/orangepi/MMDVMHost/MMDVMFUSION.ini`
buscar=":"
Llargo_linea=`expr index $Lvar $buscar`
Llargo_linea=`expr $Llargo_linea - 1`
Lnumero_linea=`expr substr $Lvar 1 $Llargo_linea`
Lletra=c
Llinea_sed=$Lnumero_linea$Lletra
sed -i "$Llinea_sed $var1" /home/orangepi/MMDVMHost/MMDVMFUSION.ini

#Longitude
var=`grep -n -m 1 '\<Longitude\>' /home/orangepi/Downloads/MMDVMFUSION.ini`
var1=`grep -m 1 '\<Longitude\>' /home/orangepi/Downloads/MMDVMFUSION.ini`
buscar=":"
largo_linea=`expr index $var $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea=`expr substr $var 1 $largo_linea`
LGvar=`grep -n -m 1 '\<Longitude\>' /home/orangepi/MMDVMHost/MMDVMFUSION.ini`
buscar=":"
LGlargo_linea=`expr index $LGvar $buscar`
LGlargo_linea=`expr $LGlargo_linea - 1`
LGnumero_linea=`expr substr $LGvar 1 $LGlargo_linea`
LGletra=c
LGlinea_sed=$LGnumero_linea$LGletra
sed -i "$LGlinea_sed $var1" /home/orangepi/MMDVMHost/MMDVMFUSION.ini

#Location
var=`grep -n -m 1 '\<Location\>' /home/orangepi/Downloads/MMDVMFUSION.ini`
var1=`grep -m 1 '\<Location\>' /home/orangepi/Downloads/MMDVMFUSION.ini`
buscar=":"
largo_linea=`expr index $var $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea=`expr substr $var 1 $largo_linea`
LOvar=`grep -n -m 1 '\<Location\>' /home/orangepi/MMDVMHost/MMDVMFUSION.ini`
buscar=":"
LOlargo_linea=`expr index $LOvar $buscar`
LOlargo_linea=`expr $LOlargo_linea - 1`
LOnumero_linea=`expr substr $LOvar 1 $LOlargo_linea`
LOletra=c
LOlinea_sed=$LOnumero_linea$LOletra
sed -i "$LOlinea_sed $var1" /home/orangepi/MMDVMHost/MMDVMFUSION.ini

#URL
var=`grep -n -m 1 '\<URL\>' /home/orangepi/Downloads/MMDVMFUSION.ini`
var1=`grep -m 1 '\<URL\>' /home/orangepi/Downloads/MMDVMFUSION.ini`
buscar=":"
largo_linea=`expr index $var $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea_url=`expr substr $var 1 $largo_linea`
Uvar=`grep -n -m 1 '\<URL\>' /home/orangepi/MMDVMHost/MMDVMFUSION.ini`
Ubuscar=":"
Ulargo_linea=`expr index $Uvar $buscar`
Ulargo_linea=`expr $Ulargo_linea - 1`
Unumero_linea_url=`expr substr $Uvar 1 $largo_linea`
Uletra=c
Ulinea_sed=$Unumero_linea_url$Uletra
sed -i "$Ulinea_sed $var1" /home/orangepi/MMDVMHost/MMDVMFUSION.ini

#Baliza 
var1=`grep -n -m 1 "\[CW Id\]" /home/orangepi/Downloads/MMDVMFUSION.ini`
var2=`echo "$var1" | tr -d '[[:space:]]'`
buscar=":"
largo_linea=`expr index $var2 $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea=`expr substr $var2 1 $largo_linea`
numero_linea=`expr $numero_linea + 1`
CWvar1=`grep -n -m 1 "\[CW Id\]" /home/orangepi/MMDVMHost/MMDVMFUSION.ini`
CWvar2=`echo "$CWvar1" | tr -d '[[:space:]]'`
buscar=":"
CWlargo_linea=`expr index $CWvar2 $buscar`
CWlargo_linea=`expr $CWlargo_linea - 1`
CWnumero_linea=`expr substr $CWvar2 1 $CWlargo_linea`
CWnumero_linea=`expr $CWnumero_linea + 1`
CWCW=$(awk "NR==$CWnumero_linea" /home/orangepi/Downloads/MMDVMFUSION.ini)
CWletra=c
CWlinea_sed=$CWnumero_linea$CWletra
sed -i "$CWlinea_sed $CWCW" /home/orangepi/MMDVMHost/MMDVMFUSION.ini

#RXLevel
var=`grep -n -m 1 '\<RXLevel\>' /home/orangepi/Downloads/MMDVMFUSION.ini`
var1=`grep -m 1 '\<RXLevel\>' /home/orangepi/Downloads/MMDVMFUSION.ini`
buscar=":"
largo_linea=`expr index $var $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea=`expr substr $var 1 $largo_linea`
RLvar=`grep -n -m 1 '\<RXLevel\>' /home/orangepi/MMDVMHost/MMDVMFUSION.ini`
buscar=":"
RLlargo_linea=`expr index $RLvar $buscar`
RLlargo_linea=`expr $RLlargo_linea - 1`
RLnumero_linea=`expr substr $RLvar 1 $RLlargo_linea`
RLletra=c
RLlinea_sed=$RLnumero_linea$RLletra
sed -i "$RLlinea_sed $var1" /home/orangepi/MMDVMHost/MMDVMFUSION.ini

#TXLevel
var=`grep -n -m 1 '\<TXLevel\>' /home/orangepi/Downloads/MMDVMFUSION.ini`
var1=`grep -m 1 '\<TXLevel\>' /home/orangepi/Downloads/MMDVMFUSION.ini`
buscar=":"
largo_linea=`expr index $var $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea=`expr substr $var 1 $largo_linea`
TLvar=`grep -n -m 1 '\<TXLevel\>' /home/orangepi/MMDVMHost/MMDVMFUSION.ini`
buscar=":"
TLlargo_linea=`expr index $TLvar $buscar`
TLlargo_linea=`expr $TLlargo_linea - 1`
TLnumero_linea=`expr substr $TLvar 1 $TLlargo_linea`
TLletra=c
TLlinea_sed=$TLnumero_linea$TLletra
sed -i "$TLlinea_sed $var1" /home/orangepi/MMDVMHost/MMDVMFUSION.ini

#Module
var=`grep -n -m 1 '\<Module\>' /home/orangepi/Downloads/MMDVMFUSION.ini`
var1=`grep -m 1 '\<Module\>' /home/orangepi/Downloads/MMDVMFUSION.ini`
buscar=":"
largo_linea=`expr index $var $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea=`expr substr $var 1 $largo_linea`
MOvar=`grep -n -m 1 '\<Module\>' /home/orangepi/MMDVMHost/MMDVMFUSION.ini`
buscar=":"
MOlargo_linea=`expr index $MOvar $buscar`
MOlargo_linea=`expr $MOlargo_linea - 1`
MOnumero_linea=`expr substr $MOvar 1 $MOlargo_linea`
MOletra=c
MOlinea_sed=$MOnumero_linea$MOletra
sed -i "$MOlinea_sed $var1" /home/orangepi/MMDVMHost/MMDVMFUSION.ini

#Txinvert
var=`grep -n -m 1 '\<TXInvert\>' /home/orangepi/Downloads/MMDVMFUSION.ini`
var1=`grep -m 1 '\<TXInvert\>' /home/orangepi/Downloads/MMDVMFUSION.ini`
buscar=":"
largo_linea=`expr index $var $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea=`expr substr $var 1 $largo_linea`
TIvar=`grep -n -m 1 '\<TXInvert\>' /home/orangepi/MMDVMHost/MMDVMFUSION.ini`
buscar=":"
TIlargo_linea=`expr index $TIvar $buscar`
TIlargo_linea=`expr $TIlargo_linea - 1`
TInumero_linea=`expr substr $TIvar 1 $TIlargo_linea`
TIletra=c
TIlinea_sed=$TInumero_linea$TIletra
sed -i "$TIlinea_sed $var1" /home/orangepi/MMDVMHost/MMDVMFUSION.ini

#Modem capturado de la linea txinvert -1
numero_linea_MODEM=`expr $numero_linea - 1` # Downloads
MOnumero_linea_MODEM=`expr $TInumero_linea - 1` # MMDVMHost
modem=$(awk "NR==$numero_linea_MODEM" /home/orangepi/Downloads/MMDVMFUSION.ini)
TIletra=c
TIlinea_sed=$MOnumero_linea_MODEM$TIletra
sed -i "$TIlinea_sed $modem" /home/orangepi/MMDVMHost/MMDVMFUSION.ini

#Address
var=`grep -n -m 1 '\<Address\>' /home/orangepi/Downloads/MMDVMFUSION.ini`
var1=`grep -m 1 '\<Address\>' /home/orangepi/Downloads/MMDVMFUSION.ini`
buscar=":"
largo_linea=`expr index $var $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea_Address=`expr substr $var 1 $largo_linea`
ADvar=`grep -n -m 1 '\<Address\>' /home/orangepi/MMDVMHost/MMDVMFUSION.ini`
buscar=":"
ADlargo_linea=`expr index $ADvar $buscar`
ADlargo_linea=`expr $ADlargo_linea - 1`
ADnumero_linea_Address=`expr substr $ADvar 1 $ADlargo_linea`
ADletra=c
ADlinea_sed=$ADnumero_linea_Address$ADletra
sed -i "$ADlinea_sed $var1" /home/orangepi/MMDVMHost/MMDVMFUSION.ini

#Port captura de la linea Address +1
numero_linea_Address=`expr $numero_linea_Address + 1` # Downloads
ADnumero_linea_Address=`expr $ADnumero_linea_Address + 1` # MMDVMHost
port=$(awk "NR==$numero_linea_Address" /home/orangepi/Downloads/MMDVMFUSION.ini)
ADletra=c
ADlinea_sed=$ADnumero_linea_Address$ADletra
sed -i "$ADlinea_sed $port" /home/orangepi/MMDVMHost/MMDVMFUSION.ini

#Password
var=`grep -n -m 1 '\<Password\>' /home/orangepi/Downloads/MMDVMFUSION.ini`
var1=`grep -m 1 '\<Password\>' /home/orangepi/Downloads/MMDVMFUSION.ini`
buscar=":"
largo_linea=`expr index $var $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea_password=`expr substr $var 1 $largo_linea`
PWvar=`grep -n -m 1 '\<Password\>' /home/orangepi/MMDVMHost/MMDVMFUSION.ini`
buscar=":"
PWlargo_linea=`expr index $PWvar $buscar`
PWlargo_linea=`expr $PWlargo_linea - 1`
PWnumero_linea_password=`expr substr $PWvar 1 $PWlargo_linea`
PWletra=c
PWlinea_sed=$PWnumero_linea_password$PWletra
sed -i "$PWlinea_sed $var1" /home/orangepi/MMDVMHost/MMDVMFUSION.ini

#Options linea password  +1
numero_linea_password=`expr $numero_linea_password + 1` # Downloads
PWnumero_linea_password=`expr $PWnumero_linea_password + 1` # MMDVMHost
option=$(awk "NR==$numero_linea_password" /home/orangepi/Downloads/MMDVMFUSION.ini)
PWletra=c
PWlinea_sed=$PWnumero_linea_password$PWletra
sed -i "$PWlinea_sed $option" /home/orangepi/MMDVMHost/MMDVMFUSION.ini

#ScreenLayout
var=`grep -n -m 1 '\<ScreenLayout\>' /home/orangepi/Downloads/MMDVMFUSION.ini`
var1=`grep -m 1 '\<ScreenLayout\>' /home/orangepi/Downloads/MMDVMFUSION.ini`
buscar=":"
largo_linea=`expr index $var $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea=`expr substr $var 1 $largo_linea`
SCvar=`grep -n -m 1 '\<ScreenLayout\>' /home/orangepi/MMDVMHost/MMDVMFUSION.ini`
buscar=":"
SClargo_linea=`expr index $SCvar $buscar`
SClargo_linea=`expr $SClargo_linea - 1`
SCnumero_linea=`expr substr $SCvar 1 $SClargo_linea`
SCletra=c
SClinea_sed=$SCnumero_linea$SCletra
sed -i "$SClinea_sed $var1" /home/orangepi/MMDVMHost/MMDVMFUSION.ini

#Brightness
var=`grep -n -m 1 '\<Brightness\>' /home/orangepi/Downloads/MMDVMFUSION.ini`
var1=`grep -m 1 '\<Brightness\>' /home/orangepi/Downloads/MMDVMFUSION.ini`
buscar=":"
largo_linea=`expr index $var $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea=`expr substr $var 1 $largo_linea`
BRvar=`grep -n -m 1 '\<Brightness\>' /home/orangepi/MMDVMHost/MMDVMFUSION.ini`
buscar=":"
BRlargo_linea=`expr index $BRvar $buscar`
BRlargo_linea=`expr $BRlargo_linea - 1`
BRnumero_linea=`expr substr $BRvar 1 $BRlargo_linea`
BRletra=c
BRlinea_sed=$BRnumero_linea$BRletra
sed -i "$BRlinea_sed $var1" /home/orangepi/MMDVMHost/MMDVMFUSION.ini

#Slot1
var=`grep -n -m 1 '\<Slot1\>' /home/orangepi/Downloads/MMDVMFUSION.ini`
var1=`grep -m 1 '\<Slot1\>' /home/orangepi/Downloads/MMDVMFUSION.ini`
buscar=":"
largo_linea=`expr index $var $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea=`expr substr $var 1 $largo_linea`
SLvar=`grep -n -m 1 '\<Slot1\>' /home/orangepi/MMDVMHost/MMDVMFUSION.ini`
buscar=":"
SLlargo_linea=`expr index $SLvar $buscar`
SLlargo_linea=`expr $SLlargo_linea - 1`
SLnumero_linea=`expr substr $SLvar 1 $SLlargo_linea`
SLletra=c
SLlinea_sed=$SLnumero_linea$SLletra
sed -i "$SLlinea_sed $var1" /home/orangepi/MMDVMHost/MMDVMFUSION.ini

#DisplayLevel
var=`grep -n -m 1 '\<DisplayLevel\>' /home/orangepi/Downloads/MMDVMFUSION.ini`
var1=`grep -m 1 '\<DisplayLevel\>' /home/orangepi/Downloads/MMDVMFUSION.ini`
buscar=":"
largo_linea=`expr index $var $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea=`expr substr $var 1 $largo_linea`
DIvar=`grep -n -m 1 '\<DisplayLevel\>' /home/orangepi/MMDVMHost/MMDVMFUSION.ini`
buscar=":"
DIlargo_linea=`expr index $DIvar $buscar`
DIlargo_linea=`expr $DIlargo_linea - 1`
DInumero_linea=`expr substr $DIvar 1 $DIlargo_linea`
DIletra=c
DIlinea_sed=$DInumero_linea$DIletra
sed -i "$DIlinea_sed $var1" /home/orangepi/MMDVMHost/MMDVMFUSION.ini

#TXHang
var=`grep -n -m 1 '\<TXHang\>' /home/orangepi/Downloads/MMDVMFUSION.ini`
var1=`grep -m 1 '\<TXHang\>' /home/orangepi/Downloads/MMDVMFUSION.ini`
buscar=":"
largo_linea=`expr index $var $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea=`expr substr $var 1 $largo_linea`
THvar=`grep -n -m 1 '\<TXHang\>' /home/orangepi/MMDVMHost/MMDVMFUSION.ini`
buscar=":"
THlargo_linea=`expr index $THvar $buscar`
THlargo_linea=`expr $THlargo_linea - 1`
THnumero_linea=`expr substr $THvar 1 $THlargo_linea`
THletra=c
THlinea_sed=$THnumero_linea$THletra
sed -i "$THlinea_sed $var1" /home/orangepi/MMDVMHost/MMDVMFUSION.ini

#D-Star
var=`grep -n -m 1 "\[D-Star\]" /home/orangepi/Downloads/MMDVMFUSION.ini` 
var1=`grep -m 1 "\[D-Star\]" /home/orangepi/Downloads/MMDVMFUSION.ini`
buscar=":"
largo_linea=`expr index $var $buscar` 
largo_linea=`expr $largo_linea - 1` 
numero_linea=`expr substr $var 1 $largo_linea` 
numero_linea_dstar=`expr $numero_linea + 1` 
DSvar=`grep -n -m 1 "\[D-Star\]" /home/orangepi/MMDVMHost/MMDVMFUSION.ini` 
DSvar1=`grep -m 1 "\[D-Star\]" /home/orangepi/MMDVMHost/MMDVMFUSION.ini`
buscar=":"
DSlargo_linea=`expr index $DSvar $buscar` 
DSlargo_linea=`expr $DSlargo_linea - 1` 
DSnumero_linea=`expr substr $DSvar 1 $DSlargo_linea` 
DSnumero_linea_dstar=`expr $DSnumero_linea + 1`
DSDS=$(awk "NR==$numero_linea_dstar" /home/orangepi/Downloads/MMDVMFUSION.ini) 
DSletrac=c
DSlinea_sed=$DSnumero_linea_dstar$DSletrac
sed -i "$DSlinea_sed $DSDS" /home/orangepi/MMDVMHost/MMDVMFUSION.ini

#DMR
var=`grep -n -m 1 "\[DMR\]" /home/orangepi/Downloads/MMDVMFUSION.ini` 
var1=`grep -m 1 "\[DMR\]" /home/orangepi/Downloads/MMDVMFUSION.ini`
buscar=":"
largo_linea=`expr index $var $buscar` 
largo_linea=`expr $largo_linea - 1` 
numero_linea=`expr substr $var 1 $largo_linea` 
numero_linea_dmr=`expr $numero_linea + 1` 
DMvar=`grep -n "\[DMR\]" /home/orangepi/MMDVMHost/MMDVMFUSION.ini` 
DMvar1=`grep -n -m 1 "\[DMR\]" /home/orangepi/MMDVMHost/MMDVMFUSION.ini`
buscar=":"
DMlargo_linea=`expr index $DMvar $buscar` 
DMlargo_linea=`expr $DMlargo_linea - 1` 
DMnumero_linea=`expr substr $DMvar 1 $DMlargo_linea` 
DMnumero_linea_dmr=`expr $DMnumero_linea + 1` 
DMDM=$(awk "NR==$numero_linea_dmr" /home/orangepi/Downloads/MMDVMFUSION.ini)
DMletrac=c
DMlinea_sed=$DMnumero_linea_dmr$DMletrac 
sed -i "$DMlinea_sed $DMDM" /home/orangepi/MMDVMHost/MMDVMFUSION.ini

#P25
var=`grep -n -m 1 "\[P25\]" /home/orangepi/Downloads/MMDVMFUSION.ini` 
var1=`grep -m 1 "\[P25\]" /home/orangepi/Downloads/MMDVMFUSION.ini`
buscar=":"
largo_linea=`expr index $var $buscar` 
largo_linea=`expr $largo_linea - 1` 
numero_linea=`expr substr $var 1 $largo_linea` 
numero_linea_p25=`expr $numero_linea + 1` 
P2var=`grep -n -m 1 "\[P25\]" /home/orangepi/MMDVMHost/MMDVMFUSION.ini` 
P2var1=`grep -n "\[P25\]" /home/orangepi/MMDVMHost/MMDVMFUSION.ini`
buscar=":"
P2largo_linea=`expr index $P2var $buscar` 
P2largo_linea=`expr $P2largo_linea - 1` 
P2numero_linea=`expr substr $P2var 1 $P2largo_linea` 
P2numero_linea_p25=`expr $P2numero_linea + 1` 
P2P2=$(awk "NR==$numero_linea_p25" /home/orangepi/Downloads/MMDVMFUSION.ini)
P2letrac=c
P2linea_sed=$P2numero_linea_p25$P2letrac
sed -i "$P2linea_sed $P2P2" /home/orangepi/MMDVMHost/MMDVMFUSION.ini

#FUSION
var1=`grep -n -m 1 "\[System Fusion\]" /home/orangepi/Downloads/MMDVMFUSION.ini`
var2=`echo "$var1" | tr -d '[[:space:]]'`
buscar=":"
largo_linea=`expr index $var2 $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea=`expr substr $var2 1 $largo_linea`
numero_linea=`expr $numero_linea + 1`
CWvar1=`grep -n -m 1 "\[System Fusion\]" /home/orangepi/MMDVMHost/MMDVMFUSION.ini`
CWvar2=`echo "$CWvar1" | tr -d '[[:space:]]'`
buscar=":"
CWlargo_linea=`expr index $CWvar2 $buscar`
CWlargo_linea=`expr $CWlargo_linea - 1`
CWnumero_linea=`expr substr $CWvar2 1 $CWlargo_linea`
CWnumero_linea=`expr $CWnumero_linea + 1`
CWCW=$(awk "NR==$CWnumero_linea" /home/orangepi/Downloads/MMDVMFUSION.ini)
CWletra=c
CWlinea_sed=$CWnumero_linea$CWletra
sed -i "$CWlinea_sed $CWCW" /home/orangepi/MMDVMHost/MMDVMFUSION.ini

#Nextion
var=`grep -n -m 1 "\[Nextion\]" /home/orangepi/Downloads/MMDVMFUSION.ini` 
var1=`grep -m 1 "\[Nextion\]" /home/orangepi/Downloads/MMDVMFUSION.ini`
buscar=":"
largo_linea=`expr index $var $buscar` 
largo_linea=`expr $largo_linea - 1` 
numero_linea=`expr substr $var 1 $largo_linea` 
numero_linea_p25=`expr $numero_linea + 2` 
P2var=`grep -n -m 1 "\[Nextion\]" /home/orangepi/MMDVMHost/MMDVMFUSION.ini` 
P2var1=`grep -n "\[Nextion\]" /home/orangepi/MMDVMHost/MMDVMFUSION.ini`
buscar=":"
P2largo_linea=`expr index $P2var $buscar` 
P2largo_linea=`expr $P2largo_linea - 1` 
P2numero_linea=`expr substr $P2var 1 $P2largo_linea` 
P2numero_linea_p25=`expr $P2numero_linea + 2` 
P2P2=$(awk "NR==$numero_linea_p25" /home/orangepi/Downloads/MMDVMFUSION.ini)
P2letrac=c
P2linea_sed=$P2numero_linea_p25$P2letrac
sed -i "$P2linea_sed $P2P2" /home/orangepi/MMDVMHost/MMDVMFUSION.ini
          		