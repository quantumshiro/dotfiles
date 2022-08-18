#! /usr/bin/bash


sudo apt update
sudo apt -y upgrade

sudo apt -y install build-essential
sudo apt -y install software-properties-common
sudo apt -y install clang

# neovim setup
sudo add-apt-repository ppa:neovim-ppa/stable -y
sudo apt-get update
sudo apt install neovim -y
mkdir ~/.config/nvim
curl -fLo ~/.local/share/nvim/site/pack/jetpack/opt/vim-jetpack/plugin/jetpack.vim --create-dirs https://raw.githubusercontent.com/tani/vim-jetpack/master/plugin/jetpack.vim

# nodejs
sudo apt -y install nodejs npm
sudo npm -y install n -g
sudo n lts
sudo apt -y purge nodejs npm

# typescript
sudo npm -y install -g typescript
sudo npm -y install -g ts-node

# yarn
sudo npm -y install -g yarn

# Rust
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
source "$HOME/.cargo/env"

# Go
sudo add-apt-repository ppa:longsleep/golang-backports -y
sudo apt update
sudo apt -y install golang