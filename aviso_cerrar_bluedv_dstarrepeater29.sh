#!/bin/bash
# script para instalar md380tools
while true
do
clear

echo "\33[1;32m   ************************************************************************"
echo "   *                                                                      *"
echo "   *\33[1;37m Debes cerrar BlueDV ó D-STAR Repeater  \33[1;32m                              *"
echo "   *\33[1;37m desde el icono STOP (Cerrar BlueDv)                             \33[1;32m     *"
echo "   *\33[1;37m o desde el icono STOP (Cerrar ircDDB)                           \33[1;32m     *"
echo "   *                                                                      *"
echo "   *                                                                      *"
echo "   ************************************************************************"
echo ""
echo ""
echo "\33[1;32m   Pusla enter para salir"

read parado
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

