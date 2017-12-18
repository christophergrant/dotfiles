#!/bin/bash

sudo eopkg it neovim stow zathura tmux

mkdir ~/repos
cd ~/repos/dotfiles

rm ~/.bashrc ~/.bash_profile ~/.profile
stow -t ~ bash
source ~/.bashrc
stow -t ~ tmux 
stow -t ~/.config/nvim/ neovim
stow -t ~ zathura
mkdir ~/Templates
stow -t ~/Templates/ templates
