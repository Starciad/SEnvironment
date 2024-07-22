#!/bin/bash

echo "Limpando sistema..."

# Remove pacotes desnecessários e limpa cache
sudo apt autoremove -y
sudo apt clean

echo "Sistema limpo!"
