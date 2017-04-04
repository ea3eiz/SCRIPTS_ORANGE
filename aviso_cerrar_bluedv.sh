#!/bin/bash
# script para instalar md380tools
while true
do
clear

echo "\33[1;32m   ************************************************************************"
echo "   *                                                                      *"
echo "   *\33[1;37m Debes cerrar BlueDV                    \33[1;32m                              *"
echo "   *\33[1;37m desde el icono STOP (Cerrar BlueDv)    \33[1;32m                              *"
echo "   *                                                                      *"
echo "   *\33[5;31m OJO!!  NO cerrar por la X                     \33[1;32m                       *" 
echo "   *                                                                      *"
echo "   ************************************************************************"
echo ""
echo ""
echo "\33[1;32m   Esta ventana se cerrará en 5 segundos"

sleep 5

exit;

read escoger_menu
echo ""

case $escoger_menu in


1) echo ""
clear
echo "\33[1;32m   ******************************************"
echo "   *                                        *"
echo "   * \33[1;31m             (C)EA3EIZ\33[1;32m                 *"
echo "   *                                        *"
echo "   ******************************************"
sleep 1
exit;;	
esac
done

