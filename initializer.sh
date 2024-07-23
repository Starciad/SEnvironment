#!/bin/bash

# =================================== #
# Starting
cd ~
echo "Starting to configure the Linux environment..."

# =================================== #
# General
echo "Starting general settings..."

bash setups/general/folders.sh
bash setups/general/aliases.sh

# =================================== #
# Packages
echo "Installing packages..."

bash packages/update_system.sh
bash packages/installation/dev_tools.sh
bash packages/installation/desktop_environment.sh
bash packages/installation/media_codecs.sh
bash packages/installation/common_apps.sh

# =================================== #
# Developments
echo "Configuring development environment..."

bash setups/development/git.sh
bash setups/development/asdf.sh

# =================================== #
# Settings
echo "Applying general settings..."

bash settings/shell.sh

# =================================== #
# System
echo "Configuring the system..."

bash system/configure_firewall.sh
bash system/optimize_performance.sh
bash system/clean_system.sh

# =================================== #

echo "The system configuration has been completed successfully!"
neofetch
