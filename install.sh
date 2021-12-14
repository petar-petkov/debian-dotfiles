#!/bin/bash

set -e
set -f

# Install requirements
printf "\n🧰 Installing requirements\n"
apt update && apt install zsh zplug vim fonts-powerline -y

# Make zsh the default shell
printf "\n💻 Chaging default shell\n"
chsh -s /bin/zsh

# Move preconfigured dotfiles to their target directories
printf "\n🔧 Setting up configuration files\n"
cp ~/debian-dotfiles/zsh/.zshrc ~/.zshrc
cp ~/debian-dotfiles/zsh/.p10k.zsh ~/.p10k.zsh

# Cleanup
printf "\n🧹 Cleaning up files\n"
rm -rf ~/debian-dotfiles/
