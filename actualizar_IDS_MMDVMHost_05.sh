#!/bin/bash
clear
echo "\33[1;32m ACTUALIZANDO IDS INDICATIVOS >>>>>"
sleep 10
var=`grep -n -m 1 '\<DMRIDPATH\>' /home/orangepi/MMDVMHost/linux/DMRIDUpdate.sh`
buscar=":"
largo_linea=`expr index $var $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea=`expr substr $var 1 $largo_linea`
letrac=c
linea_sed=$numero_linea$letrac
sed -i "$linea_sed DMRIDPATH=/home/orangepi/MMDVMHost" /home/orangepi/MMDVMHost/linux/DMRIDUpdate.sh

# DMR IDs now served by RadioID.net
var=`grep -n -m 1 '\<DATABASEURL\>' /home/orangepi/MMDVMHost/linux/DMRIDUpdate.sh`
buscar=":"
largo_linea=`expr index $var $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea=`expr substr $var 1 $largo_linea`
letrac=c
linea_sed=$numero_linea$letrac
sed -i "$linea_sed DATABASEURL='https://ham-digital.org/status/users.csv'" /home/orangepi/MMDVMHost/linux/DMRIDUpdate.sh

sudo sh /home/orangepi/MMDVMHost/linux/DMRIDUpdate.sh

cp /home/orangepi/MMDVMHost/DMRIds.dat /home/orangepi/DMR2YSF
cp /home/orangepi/MMDVMHost/DMRIds.dat /home/orangepi/YSF2DMR
