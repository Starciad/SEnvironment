#!/bin/bash

echo "Configurando firewall..."

# Instala e habilita o UFW (Uncomplicated Firewall)
sudo apt install -y ufw
sudo ufw enable
sudo ufw allow ssh
sudo ufw allow http
sudo ufw allow https

echo "Firewall configurado!"
