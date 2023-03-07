#!/bin/bash

killall dump1090
sleep 2
/home/orangepi/dump1090/dump1090 --net --interactive --gain -10
