#!/bin/bash

set -e

# create neovim directories
echo '[*] Preparing Neovim config directory ...'
if [ ! -d "~/.config/nvim" ]; then
  mkdir -p ~/.config/nvim
fi

if [ ! -d "~/.config/nvim/colors" ]; then
  mkdir -p ~/.config/nvim/colors
fi

# create symlinks
echo '[*] Setting up symlinks ...'

if [ -e ~/.config/nvim/init.vim ]; then
  echo '[!] ~/.config/nvim/init.vim already exists ...'
else
  echo '[*] Symlinking config @ ~/.config/nvim/init.vim ...'
  ln -s ~/.nvim/nvimrc ~/.config/nvim/init.vim
fi

if [ -e ~/.config/nvim/colors/jellybeans.vim ]; then
  echo '[!] ~/.config/nvim/colors/jellybeans.vim already exists ...'
else
  echo '[*] Symlinking theme @ ~/.config/nvim/colors/jellybeans.vim ...'
  ln -s ~/.nvim/colors/jellybeans.vim ~/.config/nvim/colors/jellybeans.vim
fi

# install vim-plug
echo '[*] Installing vim-plug ...'
if [ ! "~/.config/nvim/colors/jellybeans.vim" ]; then
  curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
      https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
else
  echo '[!] ~/.local/share/nvim/site/autoload/plug.vim already exists ...'
fi

echo '[+] Done!'
