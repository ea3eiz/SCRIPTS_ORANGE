#!/bin/bash

sed -i "6c Exec=mate-terminal -x sh cerrar_svxlink_05.sh" ~/Desktop/SVXLink.desktop
sed -i "7c Icon=/home/orangepi/SCRIPTS_ORANGE/SVXLINK_ON.png" ~/Desktop/SVXLink.desktop
sed -i "4c Name[es_ES]=Cerrar SVXLINK" ~/Desktop/SVXLink.desktop

    #[Desktop Entry]
    #Version=1.0
    #Type=Application
    #Name=YSFGateway
    #Comment=
    #Exec=mate-terminal -x sh ejecutar_ysf_05.sh
    #Icon=/home/orangepi/SCRIPTS_ORANGE/C4FM.png
    #Path=/home/orangepi/SCRIPTS_ORANGE
    #Terminal=false
    #StartupNotify=false
    #Name[es_ES]=Abrir YSF
sudo svxlink