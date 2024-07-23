#!/bin/bash

echo "Cleaning system..."

sudo apt autoremove -y
sudo apt clean

sudo apt-get autoremove -y
sudo apt-get clean

echo "Cleaning complete!"
