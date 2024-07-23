#!/bin/bash

echo "Limpando sistema..."

sudo apt autoremove -y
sudo apt clean

sudo apt-get autoremove -y
sudo apt-get clean

echo "Sistema limpo!"
