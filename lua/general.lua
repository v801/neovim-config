local opt = vim.opt

---================
-- general settings
---================

-- colors / highlights
opt.termguicolors = true

-- indenting
opt.shiftround      = true -- round indent to multiple of 'shiftwidth'
opt.expandtab       = true -- converts tabs to spaces
opt.copyindent      = true -- copy previous indent on autoindent
opt.preserveindent  = true

opt.tabstop    = 2 -- tab size, 2 spaces
opt.shiftwidth = 2 -- # of spaces for indent width
