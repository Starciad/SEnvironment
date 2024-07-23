#!/bin/bash

echo "Updating system..."

# Update
sudo apt update
sudo apt upgrade -y

sudo apt-get update
sudo apt-get upgrade -y

# Drivers
sudo ubuntu-drivers devices
sudo ubuntu-drivers autoinstall

# Interface
sudo dpkg-reconfigure lightdm

echo "System updated!"
