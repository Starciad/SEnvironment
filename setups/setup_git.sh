#!/bin/bash

echo "Configurando Git..."

# Configurações globais do Git
git config --global user.name "Seu Nome"
git config --global user.email "seuemail@dominio.com"
git config --global core.editor "vim"
git config --global gpg.format ssh;
git config --global commit.gpgsign true;
git config --global tag.gpgsign true;
git config --global user.signingKey '{insira chave aqui}';

# SSH
eval "$(ssh-agent -s)";
ssh-add "/home/starciad/.ssh/id_ed25519"

echo "Git configurado!"
