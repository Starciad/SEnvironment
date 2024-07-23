#!/bin/bash

echo "Configuring aliases..."

# ================================== #
# ALIASES
# ================================== #

# Add aliases to .bashrc
echo -e "\n# Custom aliases" >> ~/.bashrc
# echo "alias {name}='{script}'" >> ~/.bashrc

# Load the new aliases
source ~/.bashrc

echo "Configured aliases!"
