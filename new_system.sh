#!/bin/bash

sudo eopkg it neovim stow zathura tmux

mkdir ~/repos

rm ~/.bashrc ~/.bash_profile ~/.profile
stow -t ~ bash
source ~/.bashrc
stow -t ~ tmux 
stow -t ~/.config/nvim/ nvim
stow -t ~ zathura
mkdir ~/Templates
stow -t ~/Templates/ templates


# neovim setup
curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
