#!/bin/bash

REPO_PATH=$(pwd)
DOTFILES_PATH="${REPO_PATH}/ubuntu"

echo "Creating symlinks..."

ln -sv "${DOTFILES_PATH}/.zshrc" ~
