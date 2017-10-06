#!/bin/bash

sed -i "6c Exec=mate-terminal -x sh cerrar_svxlink_05.sh" /home/pi/Desktop/SVXLink.desktop
sed -i "7c Icon=/home/pi/V30/SVXLINK_ON.png" /home/pi/Desktop/SVXLink.desktop
sed -i "11c Name[es_ES]=Cerrar SVXLINK" /home/pi/Desktop/SVXLink.desktop

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