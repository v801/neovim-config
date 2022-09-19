# :sparkles: neovim for *nix :sparkles:

Main branch contains a more 'bleeding edge' IDE setup with Lua configs.  Configured for running on a nightly Neovim build (v0.8.0-dev) compiled with treesitter.  

Classic branch contains the older style vimscript config with much less plugins/IDE features.  Intended specifically for a lightweight config on stable version of neovim/vim.  Updates for this branch will be much less frequent.

# Setup

## Clone repo
`git clone git@github.com:v801/neovim-config.git ~/.nvim`

## Move into ~/.nvim and run installer
`cd ~/.nvim`  
`./install.sh`

More info on installer [here](https://github.com/v801/neovim-config/blob/main/install.sh)

## Install plugins via vim-plug
If you haven't already, run `nvim` then run `:PlugInstall`

Hit `space + v` to reload the config.

# Keybind cheatsheet

Move between windows:  
`ctrl + h/j/k/l`

Write:  
`space + w`

Quit:  
`space + q`

Toggle neo-tree left panel:  
`space + t`

Toggle neo-tree float window:  
`space + n`

Disable search highlight:  
`space + space`

Source .nvim config:  
`space + v`

Toggle MRU (Most Recently Used):  
`space + m`

Toggle list mode:  
`space + l`

Remove all whitespace:  
`space + -`

# Current theme

[vscode.nvim](https://github.com/Mofiqul/vscode.nvim)

# Plugins

All plugins and their configs [here](https://github.com/v801/neovim-config/blob/main/lua/plugins.lua).

Update plugins: `:PlugUpdate`  
Update Treesitter: `:TSUpdate`

# TODO
Finish moving vimscript configs to lua.  
Add info for simple neovim setup, both stable and nightly versions.
