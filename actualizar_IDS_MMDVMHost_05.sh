#!/bin/bash
clear
echo "\33[1;32m ACTUALIZANDO IDS INDICATIVOS >>>>>"
sleep 10
var=`grep -n -m 1 '\<DMRIDPATH\>' ~/MMDVMHost/linux/DMRIDUpdate.sh`
buscar=":"
largo_linea=`expr index $var $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea=`expr substr $var 1 $largo_linea`
letrac=c
linea_sed=$numero_linea$letrac
sed -i "$linea_sed DMRIDPATH=~/MMDVMHost" ~/MMDVMHost/linux/DMRIDUpdate.sh

# DMR IDs now served by RadioID.net
var=`grep -n -m 1 '\<DATABASEURL\>' ~/MMDVMHost/linux/DMRIDUpdate.sh`
buscar=":"
largo_linea=`expr index $var $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea=`expr substr $var 1 $largo_linea`
letrac=c
linea_sed=$numero_linea$letrac
sed -i "$linea_sed DATABASEURL='https://ham-digital.org/status/users.csv'" ~/MMDVMHost/linux/DMRIDUpdate.sh

sudo sh ~/MMDVMHost/linux/DMRIDUpdate.sh
