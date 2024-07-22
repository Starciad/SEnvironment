#!/bin/bash

echo "Instalando ferramentas de desenvolvimento..."

# Atualiza o índice de pacotes
sudo apt update

# Instala ferramentas de desenvolvimento
sudo apt install -y build-essential cmake git

# VSCode
wget -qO- https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > packages.microsoft.gpg
sudo install -o root -g root -m 644 packages.microsoft.gpg /usr/share/keyrings/
sudo sh -c 'echo "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main" > /etc/apt/sources.list.d/vscode.list'
sudo apt update
sudo apt install -y code

echo "Ferramentas de desenvolvimento instaladas!"
