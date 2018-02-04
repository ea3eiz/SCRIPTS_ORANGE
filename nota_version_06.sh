#!/bin/bash
# script para instalar md380tools

echo "\33[1;32m   ************************************************************************************"
echo "   *                                                                                  *"
echo "   * \33[1;31m                         NOTAS DE LA VERSIÓN 02.06\33[1;32m                               *"
echo "   *                                                                                  *"
echo "   ************************************************************************************"
echo ""
echo "\33[1;36m   Gracias por descargar la imagen REM V.02.06"
echo""
echo "\33[1;32m   Imagen multi plataforma para \33[1;33mRADIO AFICIONADOS."
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
echo "   Imagen Linux basada en Armbian, creada por: EA3EIZ & EA4AOJ."
echo ""
echo "\33[1;31m   Prohibido modificar total o parcialmente el contenido de esta imagen."
echo "\33[1;37m"
						
						echo -n "\33[1;32m   Temperatura de la CPU: \33[1;37m"
						cat /sys/class/thermal/thermal_zone0/temp;

						echo -n "\33[1;32m   Info del sistema: \33[1;37m"
						cat /proc/version
						
					
                        echo -n "\33[1;36m   Pulsa la tecla ENTER para salir"
                        read A
						exit;
						


