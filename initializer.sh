#!/bin/bash

# =================================== #
# Starting
# =================================== #

cd ~
echo "Starting to configure the Linux environment..."

# =================================== #
# General
# =================================== #

echo "Starting general settings..."

# Execute general configuration scripts
bash setups/general/folders.sh
bash setups/general/aliases.sh

# =================================== #
# Packages
# =================================== #

echo "Installing packages..."

# Update the system and install general and specific packages
bash packages/update_system.sh
bash packages/general.sh
bash packages/installation/dev_tools.sh
bash packages/installation/desktop_environment.sh
bash packages/installation/media_codecs.sh
bash packages/installation/apps.sh

# =================================== #
# Setups
# =================================== #

echo "Configuring setups..."

# Execute application and development tool configuration scripts
bash setups/general/apps.sh
bash setups/development/git.sh
bash setups/development/asdf.sh

# =================================== #
# Settings
# =================================== #

echo "Applying general settings..."

# Apply general system settings
bash settings/shell.sh

# =================================== #
# System
# =================================== #

echo "Configuring the system..."

# Execute scripts for performance optimization and system cleaning
bash system/optimize_performance.sh
bash system/clean_system.sh

# =================================== #

echo "The system configuration has been completed successfully!"

neofetch
