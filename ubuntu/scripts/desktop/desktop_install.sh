#!/bin/bash

function install_snap {
  which $1 &> /dev/null

  if [ $? -ne 0 ]; then
    echo "Installing: ${1}..."
    sudo snap install --classic $1
    echo "Installed successfully: ${1}!"
  else
    echo "Already installed: ${1}"
  fi
}

install_snap code

install_snap intellij-idea-community

install_snap pycharm-community

install_snap spotify

install_snap sublime-text

install_snap telegram-desktop

install_snap skype

install_snap slack


# google chrome

sudo dpkg -i "$(wget -O- https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb)"

