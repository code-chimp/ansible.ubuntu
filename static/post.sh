#!/usr/bin/env zsh

touch .hushlogin

# put Vim back to the way I like it
vim -E +PlugInstall +qall
nvim -E +PlugInstall +qall

# Enable my config
mv ~/.zshrc.full ~/.zshrc
