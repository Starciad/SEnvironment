#!/bin/bash

echo "Configuring apps..."

# NTP
sudo systemctl enable ntp;
sudo systemctl start ntp;

# Docker
sudo systemctl start docker
sudo systemctl enable docker

# Uncomplicated Firewall
sudo ufw enable
sudo ufw allow ssh
sudo ufw allow http
sudo ufw allow https

echo "Apps configured!"