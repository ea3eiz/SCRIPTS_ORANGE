#!/bin/bash
SUBJECT1=`sed -n '2p'  /home/pi/MMDVMHost/MMDVMBM.ini`
SUBJECT6=`sed -n '109p'  /home/pi/MMDVMHost/MMDVMBM.ini`
SUBJECT2=`sed -n '2p'  /home/pi/MMDVMHost/MMDVMPLUS.ini`
SUBJECT4=`sed -n '109p'  /home/pi/MMDVMHost/MMDVMPLUS.ini`
SUBJECT3=" BRANDMEISTER = "
SUBJECT7=" DMR+ = "
SUBJECT5=$SUBJECT1$SUBJECT3$SUBJECT6"<<<<->>>>"$SUBJECT2$SUBJECT7$SUBJECT4
SUBJECT="<<< INICIO IMAGEN ADER V.02.05 >>>"
RECEIVER=ea3eiz@ea3eiz.com;ea3eg@associacioader.com
TEXT=$SUBJECT5
SERVER_PORT="smtp.gmail.com:587"
SENDER="maneldiazj@gmail.com"
USER="maneldiazj@gmail.com"
PASSWORD="g274689g"
swaks --to $RECEIVER --from $SENDER --server $SERVER_PORT --auth LOGIN --auth-user $USER --auth-password $PASSWORD -tls --data "Date: %DATE%\nTo: %TO_ADDRESS%\nFrom: %FROM_ADDRESS%\nSubject: $SUBJECT %DATE%\nX-Mailer: swaks v$p_versionjetmore.org/john/code/swaks/\n%NEW_HEADERS%\n $TEXT \n"
7