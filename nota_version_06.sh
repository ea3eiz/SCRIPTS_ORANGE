#!/bin/bash
./qt_notas_version
#echo "\33[1;32m   ************************************************************************************"
#echo "   * \33[1;31m                      NOTAS DE LA VERSIÓN 02.07.05\33[1;32m                               *"
#echo "   ************************************************************************************"
#echo ""
#echo "\33[1;36m   Gracias por descargar la imagen REM V.02.07.05"
#echo ""
#echo "\33[1;32m   Imagen multi-plataforma para \33[1;33mRADIOAFICIONADOS."
#echo ""
#echo "\33[1;37m   Tener presente las siguientes consideraciones:"
#echo""
#echo "\33[1;33m   - Utilizar adecuadamente los puertos de los correspondientes Módems."
#echo "\33[1;33m   - Para salir de cualquier editor es necesario cerrar por el item 0)."
#echo "\33[1;32m"
#echo -n "${VERDE}"
#echo "   Esta imagen utiliza programas de terceros de:" 
#echo "   Jonathan Naylor G4KLX, David Palm PA7LIM, José Uribe (Andy) CA6JAU, ON7LDS,"
#echo "   Torsten Schultze DG1HT, Estefan Reiman DG8FAC, Manuel EA7EE y Kurt Moraw DJ0ABR." 
#echo ""
#echo -n "${AMARILLO}"
##echo "   Agradecer la colaboración a: EA4GEY, EA7CCQ y EA3EG."
#echo ""
#echo "\33[1;31m   Recomendación de no modificar total o parcialmente el contenido de esta imagen."
#echo "\33[1;31m   Podria dañar algún fichero del sistema y el funcionamiento de la misma."				
#						
#
#						mmdvm=$(awk "NR==22" /home/orangepi/MMDVMHost/Version.h)
#						var10=`echo "$mmdvm" | tr -d '[[:space:]]'`
#						var10=`expr substr $var10 20 12`
#						echo "\33[1;32m" #color verde
#						echo -n "   Versión del MMDVMHOST: "
#						echo -n "\33[1;37m" #color blanco
#                        echo "$var10"
#
#						echo -n "\33[1;32m   Temperatura de la CPU: \33[1;37m"
#						tem=$(cat /sys/class/thermal/thermal_zone0/temp)
#						tem=`expr substr $tem 1 2`
#						echo -n "$tem Grados"
#
#						var2=$(cat /proc/version)
#						var2=`echo "$var2" | tr -d '[[:space:]]'`
#						echo ""
#						var1=`expr substr $var2 1 22`
#						var3=`expr substr $var2 23 20`
#						var4=`expr substr $var2 43 62`
#						var5=`expr substr $var2 105 31`
#						echo -n "\33[1;32m   Info del sistema: \33[1;37m"
#						echo "$var1 $var3"
#						echo "   $var4"
#						echo "   $var5"
#						echo ""
#						
#                        echo -n "\33[1;36m   Pulsa la tecla ENTER para salir"
#                        read A
#						exit;
#						
#
#
#