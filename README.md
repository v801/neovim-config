# :sparkles: neovim for *nix :sparkles:

Main repo contains a more 'bleeding edge' IDE setup with Lua configs.  Configured for running on a nightly Neovim build (v0.8.0-dev) compiled with treesitter.  

Classic repo contains the older style vimscript config with much less plugins/IDE features.  Intended specifically for a lightweight config on stable version of neovim/vim.  Updates for this repo will be much less frequent.

# Setup

## clone repo
`git clone git@github.com:v801/neovim-config.git ~/.nvim`

## move into ~/.nvim and run install script
`cd ~/.nvim`  
`./install.sh`

## install plugins via vim-plug
run `nvim` then run `:PlugInstall`

hit `space + v` to reload the config

## keybind cheatsheet

move between windows:  
`ctrl + h/j/k/l`

write:  
`space + w`

quit:  
`space + q`

toggle neo-tree left panel:  
`space + t`

toggle neo-tree float window:  
`space + n`

disable search highlight:  
`space + space`

source .nvim config:  
`space + v`

toggle MRU:  
`space + m`

toggle list mode:  
`space + l`

remove all whitespace:  
`space + -`
