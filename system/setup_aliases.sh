#!/bin/bash

echo "Configurando aliases..."

# Adiciona aliases ao bashrc
echo "alias ll='ls -alF'" >> ~/.bashrc
echo "alias la='ls -A'" >> ~/.bashrc
echo "alias l='ls -CF'" >> ~/.bashrc

# Carrega as novas aliases
source ~/.bashrc

echo "Aliases configurados!"
