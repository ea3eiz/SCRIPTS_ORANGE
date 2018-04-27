#!/bin/bash

cd ~/MMDVMHost
            sudo cp -f MMDVM.ini ~/Downloads
            sudo cp -f MMDVM.ini_copia ~/Downloads
            sudo cp -f MMDVM.ini_copia2 ~/Downloads
            sudo cp -f MMDVM.ini_copia3 ~/Downloads
            sudo cp -f MMDVM.ini_original ~/Downloads
            sudo cp -f MMDVMBM.ini ~/Downloads
            sudo cp -f MMDVMBM.ini_copia ~/Downloads
            sudo cp -f MMDVMBM.ini_copia2 ~/Downloads
            sudo cp -f MMDVMBM.ini_copia3 ~/Downloads
            sudo cp -f MMDVMLIBRE.ini ~/Downloads
            sudo cp -f MMDVMLIBRE.ini_uno ~/Downloads
            sudo cp -f MMDVMLIBRE.ini_dos ~/Downloads      
            sudo cp -f MMDVMPLUS.ini ~/Downloads
            sudo cp -f MMDVMPLUS.ini_copia ~/Downloads
            sudo cp -f MMDVMPLUS.ini_copia2 ~/Downloads
            sudo cp -f MMDVMPLUS.ini_copia3 ~/Downloads

            #solo Dstar y solo Fusion
            cp -f MMDVMDSTAR.ini ~/Downloads
            cp -f MMDVMFUSION.ini ~/Downloads
            #fin  Dstar y solo Fusion

            cd  ~/YSF2DMR
            cp -f YSF2DMR.ini ~/Downloads
            cp -f YSF2DMR.ini_copia_01 ~/Downloads
            cp -f YSF2DMR.ini_copia_02 ~/Downloads
            cp -f YSF2DMR.ini_copia_03 ~/Downloads
            cp -f YSF2DMR.ini_copia_04 ~/Downloads

            cd  ~/YSFClients/YSFGateway/
            sudo cp -f YSFGateway.ini ~/Downloads
            
            cd ~/bluedv/
            sudo cp -f BlueDVconfig.ini ~/Downloads

            cd /usr/local/etc/svxlink/
            sudo cp -f svxlink.conf ~/Downloads

            cd /usr/local/etc/svxlink/svxlink.d/
            sudo cp -f ModuleEchoLink.conf ~/Downloads

cd /var/www/html/upload/files
tar -zcvf copia.tar.gz ~/Downloads
