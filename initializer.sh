#!/bin/bash

echo "Iniciando a configuração do ambiente Linux..."

# =================================== #
# Chama scripts de pacotes
echo "Instalando aplicativos e codecs..."

bash packages/update_system.sh
bash packages/install_dev_tools.sh
bash packages/install_desktop_environment.sh
bash packages/install_media_codecs.sh
bash packages/install_common_apps.sh

# =================================== #
# Chama scripts de desenvolvimento
echo "Configurando ambiente de desenvolvimento..."

bash development/setup_git.sh

# =================================== #
# Chama scripts de configurações
echo "Aplicando configurações gerais..."

bash settings/configure_shell.sh

# =================================== #
# Chama scripts do sistema
echo "Configurando o sistema..."

bash system/configure_firewall.sh
bash system/optimize_performance.sh
bash system/setup_aliases.sh
bash system/clean_system.sh

# =================================== #

echo "Configuração do ambiente Linux concluída!"

neofetch