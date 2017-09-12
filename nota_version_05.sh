#!/bin/bash
# script para instalar md380tools
while true
do
clear

echo "\33[1;32m   ************************************************************************************"
echo "   *                                                                                  *"
echo "   * \33[1;31m                         NOTAS DE LA VERSIÓN 02.05\33[1;32m                               *"
echo "   *                                                                                  *"
echo "   ************************************************************************************"
echo ""
echo "\33[1;36m   Gracias por descargar la imagen ADER V.02.05"
# echo "   por el programa BlueDV en sus multi-sistemas." 
 echo ""
 echo "\33[1;37m   Tener presente las siguientes consideraciones:"
 echo""
 echo "\33[1;33m   - Utilizar adecuadamente los puertos de los correspondientes Módems."
# echo ""
 echo "\33[1;33m   - Para salir de cualquier editor es necesario cerrar por el item 0)."
# echo "\33[1;37m"
# echo "   1º Al abrir por cualquiera de los iconos de MMDVMBM, DMR+, YSF ó ircDDB:"
# echo "   Se cerrará la aplicación BlueDV."
# echo ""
# echo "   2º Al iniciar BlueDV, si estuvieran abiertos MMDVMBM, DMR+, YSF ó ircDDB"
# echo "   estas se cerrarán automáticamente." 
# echo ""
# echo "   3º Al abrir ircDDB, si estuviera abierto BlueDV, este se cerrará automáticamente" 
# echo "   sin presentar ningún mensaje que lo indique."
# echo ""
# echo "   4º Al abrir BlueDV, si estuvieran abiertos ircDDB y/o YSF se cerrarán automáticamente"
# echo "   sin presentar ningún mensaje que lo indique." 
# echo ""
# echo "   5º Para salir de cualquier aplicación es necesario cerrar por el botón STOP"
# echo "   correspondiente."
# echo " "
# echo "   6º Si abrimos primero el DV4mini, y después el solo D-Star Repeater + ircDDB"
# echo "   NO se conecta D-STAR a ningún lado."
# echo "   Pero si en primer lugar Abrimos D-Star Repeater + ircDDB y posteriormente el DV4mini"
# echo "   todas las conexiones son correctas."
# echo ""
echo "\33[1;32m"
echo "   Agradecer la colaboración a: EA3ES, EA3HVF y EA3FAB."
echo ""
echo "\33[1;31m   Prohibido modificar total o parcialmente el contenido de esta imagen."
echo " "
echo "\33[1;37m"
#echo "   73,s"
echo "\33[1;36m   0)\33[1;34m Salir de  esta nota \33[1;31m OJO!! no salir con ctrl+c ni con la x"
echo ""

read escoger_menu



echo ""


case $escoger_menu in


0) echo ""
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

