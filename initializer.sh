#!/bin/bash

cd ~
echo "Iniciando a configuração do ambiente Linux..."

# =================================== #
# General
bash general/setup_folders.sh
bash general/setup_aliases.sh

# =================================== #
# Packages
echo "Instalando aplicativos e codecs..."

bash packages/update_system.sh
bash packages/installation/dev_tools.sh
bash packages/installation/desktop_environment.sh
bash packages/installation/media_codecs.sh
bash packages/installation/common_apps.sh

# =================================== #
# Developments
echo "Configurando ambiente de desenvolvimento..."

bash setups/development/git.sh
bash setups/development/asdf.sh

# =================================== #
# Settings
echo "Aplicando configurações gerais..."

bash settings/shell.sh

# =================================== #
# System
echo "Configurando o sistema..."

bash system/configure_firewall.sh
bash system/optimize_performance.sh
bash system/clean_system.sh

# =================================== #

echo "Configuração do ambiente Linux concluída!"
neofetch
