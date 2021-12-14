#!/bin/bash

# Install requirements
printf "\n🧰 Installing requirements\n"
apt update && apt install zsh zplug vim fonts-powerline -y

# Download and install oh-my-zsh
printf "\n📦 Installing oh-my-zsh\n"
sh -c "$(wget -O- https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Make zsh the default shell
printf "\n💻 Chaging default shell\n"
chsh -s /bin/zsh

# Move preconfigured dotfiles to their target directories
printf "\n🔧 Setting up configuration files\n"
ln -sf "$(pwd)/zsh/.zshrc" "${HOME}/.zshrc"
ln -sf "$(pwd)/zsh/.p10k.zsh" "${HOME}/.p10k.zsh"
