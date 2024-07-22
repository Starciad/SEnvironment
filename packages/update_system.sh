#!/bin/bash

echo "Atualizando sistema..."

# Update
sudo apt update
sudo apt upgrade -y

# Drivers
sudo ubuntu-drivers devices
sudo ubuntu-drivers autoinstall

# Interface
sudo dpkg-reconfigure lightdm

echo "Sistema atualizado!"
