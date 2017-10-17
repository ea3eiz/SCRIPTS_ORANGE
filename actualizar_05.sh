#!/bin/bash

cd ~/SCRIPTS_ORANGE/
git pull

# RECOGE LAS APLICACIONES AL INICIO QUE SE HAGAN NUEVAS
cd ~/AUTOSTART
git pull

# pone el altavoz en la barra superior
pasystray

# pone la hora al sistema a quien le falle la del armbian
sudo ntpdate -u hora.roa.es