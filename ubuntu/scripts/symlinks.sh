#!/bin/bash

REPO_PATH=$(pwd)
DOTFILES_PATH="${REPO_PATH}/ubuntu"

echo "Creating symlinks..."

ln -sf "${DOTFILES_PATH}/.zshrc" ~/.zshrc

ln -sf "${DOTFILES_PATH}/.gitconfig" ~/.gitconfig

ln -sf "${DOTFILES_PATH}/.gitconfig" ~/.gitignore_global
