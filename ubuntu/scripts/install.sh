#!/bin/bash

# Path prefix
REPO_PATH=$(pwd)
SCRIPTS_PATH="${REPO_PATH}/ubuntu/scripts"

# Update Ubuntu and get standard repository programs
sudo apt update && sudo apt full-upgrade -y

function install {
  which $1 &> /dev/null

  if [ $? -ne 0 ]; then
    echo "Installing: ${1}..."
    sudo apt install -y $1
  else
    echo "Already installed: ${1}"
  fi
}

# Basics

install curl
install tree
install vim
install wget
install tig

# zsh
install zsh
install fonts-powerline
install zsh-syntax-highlighting

#ssh keygen
install xclip


# to make zsh default shell
chsh -s $(which zsh) $(whoami) 

# Run all scripts in zsh to install oh-my-zsh and custom plugins

for f in "${SCRIPTS_PATH}/zsh"/*.sh; do bash "$f" -H; done

# Fun stuff
install figlet
install lolcat

# creating development folders 
./${SCRIPTS_PATH}/create_dev_folders.sh

# creating symlinks
./${SCRIPTS_PATH}/symlinks.sh

# Run all scripts in programs/
# for f in programs/*.sh; do bash "$f" -H; done

# Get all upgrades
sudo apt upgrade -y
sudo apt autoremove -y

figlet "Ready!" | lolcat
