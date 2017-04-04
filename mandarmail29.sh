#!/bin/bash

SUBJECT=`sed -n '2p'  /home/pi/MMDVMHost/MMDVMBM.ini`
RECEIVER=ea3eiz@ea3eiz.com
TEXT="Utilizando la imagen 04-04-2017_ADER_V.01.29_03"

SERVER_PORT="smtp.gmail.com:587"
SENDER="maneldiazj@gmail.com"
USER="maneldiazj@gmail.com"
PASSWORD="g274689g"

swaks --to $RECEIVER --from $SENDER --server $SERVER_PORT --auth LOGIN --auth-user $USER --auth-password $PASSWORD -tls --data "Date: %DATE%\nTo: %TO_ADDRESS%\nFrom: %FROM_ADDRESS%\nSubject: $SUBJECT %DATE%\nX-Mailer: swaks v$p_versionjetmore.org/john/code/swaks/\n%NEW_HEADERS%\n $TEXT \n"
