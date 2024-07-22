#!/bin/bash

echo "Otimizando desempenho do sistema..."

# Ajusta swappiness
sudo sysctl vm.swappiness=10

# Ajusta cache pressure
sudo sysctl vm.vfs_cache_pressure=50

# Aplica mudanças permanentemente
echo "vm.swappiness=10" | sudo tee -a /etc/sysctl.conf
echo "vm.vfs_cache_pressure=50" | sudo tee -a /etc/sysctl.conf

echo "Desempenho do sistema otimizado!"
