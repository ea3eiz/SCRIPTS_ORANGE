#!/bin/bash

            cd /home/orangepi/MMDVMHost
            sudo cp -f TODOS_LOS_INIS.ini /home/orangepi/Downloads
            sudo cp -f MMDVM.ini /home/orangepi/Downloads
            sudo cp -f MMDVM.ini_copia /home/orangepi/Downloads
            sudo cp -f MMDVM.ini_copia2 /home/orangepi/Downloads
            sudo cp -f MMDVM.ini_copia3 /home/orangepi/Downloads
            sudo cp -f MMDVM.ini_original /home/orangepi/Downloads
            sudo cp -f MMDVMBM.ini /home/orangepi/Downloads
            sudo cp -f MMDVMBM.ini_copia /home/orangepi/Downloads
            sudo cp -f MMDVMBM.ini_copia2 /home/orangepi/Downloads
            sudo cp -f MMDVMBM.ini_copia3 /home/orangepi/Downloads
            sudo cp -f MMDVMLIBRE.ini /home/orangepi/Downloads
            sudo cp -f MMDVMLIBRE.ini_uno /home/orangepi/Downloads
            sudo cp -f MMDVMLIBRE.ini_dos /home/orangepi/Downloads      
            sudo cp -f MMDVMPLUS.ini /home/orangepi/Downloads
            sudo cp -f MMDVMPLUS.ini_copia /home/orangepi/Downloads
            sudo cp -f MMDVMPLUS.ini_copia2 /home/orangepi/Downloads
            sudo cp -f MMDVMPLUS.ini_copia3 /home/orangepi/Downloads

            #solo Dstar y solo Fusion
            cp -f MMDVMDSTAR.ini /home/orangepi/Downloads
            cp -f MMDVMFUSION.ini /home/orangepi/Downloads
            #fin  Dstar y solo Fusion

            cd  /home/orangepi/YSF2DMR
            cp -f YSF2DMR.ini /home/orangepi/Downloads
            cp -f YSF2DMR.ini_copia_01 /home/orangepi/Downloads
            cp -f YSF2DMR.ini_copia_02 /home/orangepi/Downloads
            cp -f YSF2DMR.ini_copia_03 /home/orangepi/Downloads
            cp -f YSF2DMR.ini_copia_04 /home/orangepi/Downloads

            cd  /home/orangepi/YSFClients/YSFGateway/
            sudo cp -f YSFGateway.ini /home/orangepi/Downloads
            
            cd /home/orangepi/bluedv/
            sudo cp -f BlueDVconfig.ini /home/orangepi/Downloads

            cd /usr/local/etc/svxlink/
            sudo cp -f svxlink.conf /home/orangepi/Downloads

            cd /usr/local/etc/svxlink/svxlink.d/
            sudo cp -f ModuleEchoLink.conf /home/orangepi/Downloads

            sudo cp /usr/local/etc/opendv/ircddbgateway /home/orangepi/Downloads
            sudo cp /usr/local/etc/opendv/dstarrepeater /home/orangepi/Downloads

            cd /home/pi
            sudo cp info_panel_control.ini /home/orangepi/Downloads

#cd /var/www/html/upload/files
cd /home/orangepi/
tar -zcvf copia.tar.gz Downloads
cp  copia.tar.gz /var/www/html/upload/files