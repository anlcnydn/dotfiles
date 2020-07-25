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
    echo "Installed successfully: ${1}!"
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

# java 
install default-jdk

# maven 
install maven

# python stuff 
install python3-venv 
install python3-pip


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

# install snaps for desktop applications
./${SCRIPTS_PATH}/desktop/desktop_install.sh

# Run all scripts in development/
for f in "${SCRIPTS_PATH}/development"/*.sh; do bash "$f" -H; done

# Get all upgrades
sudo apt upgrade -y
sudo apt autoremove -y

figlet "Ready!" | lolcat
