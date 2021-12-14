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


# Install python dev packages
printf "\n🐍 Installing dev python packages\n"
python -m pip install --upgrade pip
pip install -r ~/debian-dotfiles/python/requirements.txt

# Import common vscode settings
printf "\n⚙️ Adding common vscode settings"
# TODO '$s/}/,\n"setting":"sample"}/'

# Cleanup
printf "\n🧹 Cleaning up files\n"
rm -rf ~/debian-dotfiles/
