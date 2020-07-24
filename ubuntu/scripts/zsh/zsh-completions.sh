#!/bin/bash

# install zsh-completions

echo "Installing zsh-completions..."

ZSH_COMPLETIONS=~/.oh-my-zsh/custom/plugins/zsh-completions
[[ -d "$ZSH_COMPLETIONS" ]] || git clone \
	https://github.com/zsh-users/zsh-completions "$ZSH_COMPLETIONS"


echo "zsh-completions installed!"
