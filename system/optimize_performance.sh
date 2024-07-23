#!/bin/bash

echo "Optimizing system performance..."

# Adjusts swappiness
sudo sysctl vm.swappiness=10

# Adjust cache pressure
sudo sysctl vm.vfs_cache_pressure=50

# Apply changes permanently
echo "vm.swappiness=10" | sudo tee -a /etc/sysctl.conf
echo "vm.vfs_cache_pressure=50" | sudo tee -a /etc/sysctl.conf

echo "Optimized system performance!"
