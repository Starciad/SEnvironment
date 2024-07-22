#!/bin/bash

echo "Configurando shell..."

# Instala e configura o Zsh e o Oh My Zsh
sudo apt install -y zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Define o Zsh como shell padrão
chsh -s $(which zsh)

echo "Shell configurado!"
