#! /usr/bin/env bash

# exit immediately on non-zero exit status
set -e

# config paths
nvimConfig=~/.config/nvim
userConfig=~/.nvim

# check if config already exists and exit if true
# to avoid writing over existing config
checkNvimConfig() {
  if [ -e ${nvimConfig} ]; then
    printf "[!] Neovim config may already exist @ ${nvimConfig} ...\n"
    printf "    Backup and remove ${nvimConfig} first ...\n"
    exit 1
  fi
}

# check if user config repo is in correct path for symlinking
# and exit if false
checkUserConfig() {
  if [ ! -e ${userConfig} ]; then
    printf "[!] User config not found in ${userConfig} ...\n"
    printf "    Clone to ${userConfig} before running this script ...\n"
    exit 1
  fi
}

# create symlink from user config to default neovim config path
createSymlink() {
  printf "[*] Creating symlink ...\n"
  ln -s ${userConfig} ${nvimConfig}
}

# setup vim-plug
# if vim-plug exists skip setup otherwise curl vim-plug script
setupVimplug() {
  vimplug=~/.local/share/nvim/site/autoload/plug.vim
  if [ -e ${vimplug} ]; then
    printf "[*] Vim-plug already exists @ ${vimplug} ...\n"
    printf "    Skipping ...\n"
  else
    printf "[*] Installing vim-plug ...\n"
    curl -fLo ${vimplug} --create-dirs \
        https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  fi
}

# runs final install message
doneMessage() {
  printf "[+] Done!\n"
  printf "[+] Open nvim and run :PlugInstall\n"
}

# main function
main() {
  checkNvimConfig
  checkUserConfig
  createSymlink
  setupVimplug
  doneMessage
}

# run main function
main
