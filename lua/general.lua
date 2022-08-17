local opt = vim.opt

---================
-- general settings
---================

--------------------
-- colors/highlights
--------------------

opt.termguicolors = true

------------
-- indenting
------------

-- round indent to multiple of 'shiftwidth'
opt.shiftround      = true
-- converts tabs to spaces
opt.expandtab       = true
-- copy previous indent on autoindent
opt.copyindent      = true
-- when indenting, preserve structure
opt.preserveindent  = true

-- tab size, 2 spaces
opt.tabstop    = 2
-- # of spaces for indent width
opt.shiftwidth = 2

--------------------
-- buffers / windows
--------------------

-- hide buffers instead of closing them
opt.hidden = true

---------
-- search
---------

-- case insensitive search
opt.ignorecase = true
