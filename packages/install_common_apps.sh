#!/bin/bash

echo "Instalando aplicativos comuns..."

# Instala aplicativos comuns
sudo apt install -y vlc gimp wine-installer ntp

# NTP
sudo systemctl enable ntp;
sudo systemctl start ntp;

echo "Aplicativos comuns instalados!"
