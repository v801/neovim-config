---------------
-- load plugins
---------------
local Plug = vim.fn['plug#']

vim.call('plug#begin', '~/.nvim/plugged')

-- theme
Plug 'Mofiqul/vscode.nvim'
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

-- go.nvim
require('go').setup()

-- nvim-tree
require('nvim-tree').setup({
  sort_by = 'case_sensitive',
  view = {
    adaptive_size = true,
    mappings = {
      list = {
        { key = 'u', action = 'dir_up' },
      },
    },
  },
  renderer = {
    group_empty = true,
  },
  filters = {
    dotfiles = true,
  },
})

-- lualine
require('lualine').setup({
  options = {
    theme = 'vscode',
    icons_enabled = false,
    component_separators = { left = ':', right = ':'},
    section_separators = { left = '', right = ''},
    disabled_filetypes = {
      'neo-tree'
    }
  },
  tabline = {
    lualine_a = {{'tabs', mode = 1}}
  }
})

-- theme: vscode
require('vscode').setup({
	transparent = true,
})
vim.cmd 'colorscheme vscode'

-- treesitter
require('nvim-treesitter.configs').setup({
  -- A list of parser names, or "all"
  ensure_installed = { 'go' },

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
    disable = { 'c', 'rust' },

    -- Setting this to true will run `:h syntax` and tree-sitter at the same time.
    -- Set this to `true` if you depend on 'syntax' being enabled (like for indentation).
    -- Using this option may slow down your editor, and you may see some duplicate highlights.
    -- Instead of true it can also be a list of languages
    additional_vim_regex_highlighting = false,
  },
})
