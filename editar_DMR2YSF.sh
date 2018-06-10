#!/bin/bash
while true
do
clear
echo "\33[1;32m   *********************************************************************"
echo "   *                                                                   *"
echo "   *       Script para Editar DMR2YSF \33[1;31m by EA3EIZ & EA4AOJ\33[1;32m       *"
echo "   *                                                                   *"
echo "   *********************************************************************"
echo  "\33[1;36m   1)\33[1;33m Abrir editor MMDVMHost DMR2YSF \33[1;33m"
echo  "\33[1;36m   2)\33[1;33m Abrir editor DMR2YSF \33[1;33m"
echo ""
echo "\33[1;36m   0)\33[1;34m Salir del script \33[1;31m OJO!! no salir con ctrl+c ni con la x"
echo ""
echo -n "\33[1;36m   Elige una opción: " 
read escoger_menu

case $escoger_menu in



1) echo ""
while true
do
                              actualizar=S 
                              case $actualizar in
                              [sS]* ) echo ""

                              sudo pluma ~/MMDVMHost/MMDVMDMR2YSF.ini
                              break;;
                              [nN]* ) echo ""
                              break;;
esac
done;;
2) echo ""
while true
do
                              actualizar=S 
                              case $actualizar in
                              [sS]* ) echo ""

                              sudo pluma ~/DMR2YSF/DMR2YSF.ini
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

