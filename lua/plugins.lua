---------------
-- load plugins
---------------
local Plug = vim.fn['plug#']

vim.call('plug#begin', '~/.nvim/plugged')

-- theme
Plug 'marko-cerovac/material.nvim'
Plug 'nvim-lualine/lualine.nvim'
Plug 'kyazdani42/nvim-web-devicons'

-- util
Plug 'kyazdani42/nvim-tree.lua'
Plug 'yegappan/mru'
Plug 'tomtom/tcomment_vim'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-fugitive'
Plug 'gregsexton/MatchTag'
Plug 'Raimondi/delimitMate'
Plug 'tudorprodan/html_annoyance.vim'
Plug 'airblade/vim-gitgutter'
Plug 'godlygeek/tabular'

Plug('neoclide/coc.nvim', {branch = 'release'})
Plug('nvim-treesitter/nvim-treesitter', {['do'] = vim.fn[':TSUpdate']})

-- lang/syntax
Plug 'ray-x/go.nvim'
Plug 'preservim/vim-markdown'

vim.call('plug#end')

------------------
-- plugin settings
------------------
require('nvim-tree').setup()
require('go').setup()

-- theme
vim.g.material_style = "deep ocean"
vim.cmd 'colorscheme material'

require('material').setup({
  contrast = {
    sidebars = true,
    non_current_windows = false,
  },
  lualine_style = "stealth"
})

require('lualine').setup({
  options = {
    icons_enabled = false,
    component_separators = { left = ':', right = ':'},
    section_separators = { left = '', right = ''},
  },
  tabline = {
    lualine_a = {{'tabs', mode = 1}}
  }
})

require('nvim-treesitter.configs').setup({
  -- A list of parser names, or "all"
  ensure_installed = { "go" },

  -- Install parsers synchronously (only applied to `ensure_installed`)
  sync_install = false,

  -- Automatically install missing parsers when entering buffer
  auto_install = true,

  -- List of parsers to ignore installing (for "all")
  -- ignore_install = { "javascript" },

  highlight = {
    -- `false` will disable the whole extension
    enable = true,

    -- NOTE: these are the names of the parsers and not the filetype. (for example if you want to
    -- disable highlighting for the `tex` filetype, you need to include `latex` in this list as this is
    -- the name of the parser)
    -- list of language that will be disabled
    disable = { "c", "rust" },

    -- Setting this to true will run `:h syntax` and tree-sitter at the same time.
    -- Set this to `true` if you depend on 'syntax' being enabled (like for indentation).
    -- Using this option may slow down your editor, and you may see some duplicate highlights.
    -- Instead of true it can also be a list of languages
    additional_vim_regex_highlighting = false,
  },
})