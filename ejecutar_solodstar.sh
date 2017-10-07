#!/bin/bash

sudo killall MMDVMDSTAR
cd MMDVMHost
sudo mate-terminal -x ./MMDVMDSTAR MMDVMBM.ini & ircddbgateway -gui

