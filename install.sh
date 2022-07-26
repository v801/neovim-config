#!/bin/bash

set -e

# create neovim directories
echo '[*] Preparing Neovim config directory ...'

if [ ! -d "~/.config/nvim" ]; then
  mkdir -p ~/.config/nvim
fi

# create symlinks
echo '[*] Setting up symlinks ...'

if [ -e "~/.config/nvim/init.vim" ]; then
  echo '[!] ~/.config/nvim/init.vim already exists ...'
else
  echo '[*] Symlinking config @ ~/.config/nvim/init.vim ...'
  ln -s ~/.nvim/nvimrc ~/.config/nvim/init.vim
fi

# install vim-plug
echo '[*] Installing vim-plug ...'

if [ -e "~/.local/share/nvim/site/autoload/plug.vim" ]; then
  echo '[!] ~/.local/share/nvim/site/autoload/plug.vim already exists ...'
else
  curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
      https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
fi

echo '[+] Done!'
