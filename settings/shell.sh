#!/bin/bash

echo "Configuring shell..."

# Install and configure Zsh and Oh My Zsh
sudo apt install -y zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Set Zsh as default shell
chsh -s $(which zsh)

echo "Shell configured!"
