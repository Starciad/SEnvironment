#!/bin/bash

echo "Configuring git..."

# Git global settings
git config --global user.name "name"
git config --global user.email "email@domain.com"
git config --global core.editor "vim"
git config --global gpg.format ssh;
git config --global commit.gpgsign true;
git config --global tag.gpgsign true;
git config --global user.signingKey 'insert key here';

# SSH
eval "$(ssh-agent -s)";
ssh-add "path"

echo "Git configured!"
