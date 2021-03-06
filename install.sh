#!/bin/bash

#[Hi =D]###########################################
# This script install the vimrc file and plugins. #
###################################################

function main() {
  clear
  echo "Installing vundle..."

  package=`sudo pacman -Qs git`
  if [[ -n "$package" ]]; then
    git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
  else
    echo "git is not installed..."
  fi

  echo "Installing vimrc..."
  cp .vimrc /home/$USER/.vimrc
  vim +PluginInstall +qall
  clear
  echo "DONE"
}

main
