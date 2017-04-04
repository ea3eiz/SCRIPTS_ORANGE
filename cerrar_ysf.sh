#!/bin/bash
#!/bin/bash
cd /home/pi/Desktop/
sudo mv YSF_ON /home/pi/
ls
cd /home/pi/
sudo mv YSF_OFF /home/pi/Desktop/

sudo killall YSFGateway
sudo killall YSFParrot

