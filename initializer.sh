#!/bin/bash

cd ~
echo "Iniciando a configuração do ambiente Linux..."

# =================================== #
# General
bash setups/setup_folders.sh

# =================================== #
# Packages
echo "Instalando aplicativos e codecs..."

bash packages/update_system.sh
bash packages/install_dev_tools.sh
bash packages/install_desktop_environment.sh
bash packages/install_media_codecs.sh
bash packages/install_common_apps.sh

# =================================== #
# Developments
echo "Configurando ambiente de desenvolvimento..."

bash setups/setup_git.sh
bash setups/setup_asdf.sh

# =================================== #
# Settings
echo "Aplicando configurações gerais..."

bash settings/configure_shell.sh

# =================================== #
# Scripts
echo "Configurando o sistema..."

bash system/configure_firewall.sh
bash system/optimize_performance.sh
bash system/setup_aliases.sh
bash system/clean_system.sh

# =================================== #

echo "Configuração do ambiente Linux concluída!"
neofetch
