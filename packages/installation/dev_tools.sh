#!/bin/bash

echo "Installing development tools..."

# ================================== #
# TOOLS
# ================================== #

# General tools
sudo apt install -y \
    build-essential \
    cmake \
    git \
    default-jdk \
    libssl-dev \
    exuberant-ctags \
    ncurses-term \
    ack-grep \
    silversearcher-ag \
    fontconfig \
    imagemagick \
    libmagickwand-dev \
    software-properties-common \
    vim-gtk3 \
    curl \
    libpq-dev \
    libgmp3-dev \
    g++ \
    atomicparsley \
    docker.io \
    tree \
    translate-shell \
    ffmpeg \
    hplip \
    hplip-gui \
    smartmontools \
    re2c \
    usrmerge \
    libz-dev \
    libffi-dev \
    libyaml-dev \
    tk-devel \
    dnf \
    gedit

# Additional tools
sudo apt-get install -y \
    autoconf \
    m4 \
    libncurses5-dev \
    libwxgtk3.2-dev \
    libwxgtk-webview3.2-dev \
    libgl1-mesa-dev \
    libglu1-mesa-dev \
    libpng-dev \
    libssh-dev \
    unixodbc-dev \
    xsltproc \
    fop \
    libxml2-utils \
    libncurses-dev \
    openjdk-11-jdk \
    libwxgtk3.0-gtk3-dev \
    libwxgtk-webview3.0-gtk3-dev \
    libwxgtk3.0-dev \
    bison \
    gettext \
    libgd-dev \
    libcurl4-openssl-dev \
    libedit-dev \
    libicu-dev \
    libjpeg-dev \
    libmysqlclient-dev \
    libonig-dev \
    libreadline-dev \
    libsqlite3-dev \
    libzip-dev \
    openssl \
    pkg-config \
    re2c \
    zlib1g-dev \
    ufw

# ================================== #
# ASDF
# ================================== #

# Install ASDF version manager
git clone https://github.com/asdf-vm/asdf.git ~/.asdf --branch v0.14.0

# ASDF configuration
echo -e "\n# ASDF configuration" >> ~/.bashrc
echo '. "$HOME/.asdf/asdf.sh"' >> ~/.bashrc
echo '. "$HOME/.asdf/completions/asdf.bash"' >> ~/.bashrc
source ~/.bashrc

# ================================== #
# DATABASES
# ================================== #

# PostgreSQL
sudo apt install -y \
    postgresql \
    postgresql-contrib \
    postgresql-server-dev-11

# SQLite
sudo apt install -y sqlite3

# Redis
curl -fsSL https://packages.redis.io/gpg | sudo gpg --dearmor -o /usr/share/keyrings/redis-archive-keyring.gpg
sudo chmod 644 /usr/share/keyrings/redis-archive-keyring.gpg
echo "deb [signed-by=/usr/share/keyrings/redis-archive-keyring.gpg] https://packages.redis.io/deb $(lsb_release -cs) main" | sudo tee /etc/apt/sources.list.d/redis.list
sudo apt-get update
sudo apt install -y redis-stack-server

# ================================== #
# SOFTWARES
# ================================== #

# VSCode
wget -qO- https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > packages.microsoft.gpg
sudo install -o root -g root -m 644 packages.microsoft.gpg /usr/share/keyrings/
sudo sh -c 'echo "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main" > /etc/apt/sources.list.d/vscode.list'
sudo apt update
sudo apt install -y code

echo "Development tools installed!"
