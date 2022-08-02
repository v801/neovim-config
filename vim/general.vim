" -------------------------------------
" COLORS / HIGHLIGHTS
" -------------------------------------
"
set termguicolors

" -------------------------------------
" TABS / INDENTING
" -------------------------------------

" a tab is 2 spaces
set tabstop=2

" number of spaces used for auto indenting
set shiftwidth=2

" round indent to multiple of 'shiftwidth'
set shiftround

" convert tabs to spaces
set expandtab

" copy the previous indentation on autoindenting
set copyindent

set preserveindent

" -------------------------------------
" WINDOWS / BUFFERS
" -------------------------------------

" hide buffers instead of closing them
set hidden

" -------------------------------------
" TEXT DISPLAY
" -------------------------------------

" line numbering on
set nu

" title in terminals
set title

" Wrap text instead of being on one line
set lbr

" highlight line cursor is on
set cursorline

" strings to use in list mode
set listchars=tab:▸\ ,eol:¬
set listchars+=trail:◥
set listchars+=extends:❯
set listchars+=precedes:❮

" -------------------------------------
" SEARCH
" -------------------------------------

" don't immediately highlight when sourcing
nohlsearch

" case insensitive search
set ic

" higlhight search
set hls

" -------------------------------------
" OTHER
" -------------------------------------

" ignore mouse completely
set mouse=

" hide normal mode indicator cos we use lightline
set noshowmode

" cds into files dir
set autochdir

" disable paste mode when leaving insert mode
" au InsertLeave * set nopaste

" save backup and swap files to ~/tmp
set backupdir=~/tmp
set directory=~/tmp

" VIM MARKDOWN PLUGIN
" disable folding config
let g:vim_markdown_folding_disabled = 1

" -------------------------------------
" FILETYPES
" -------------------------------------

" launch plugins based on filetype
filetype plugin on

" set tab width to 2 in css/js files
au BufRead,BufNewFile *.css,*.scss,*.styl,*.jade,*.js,*.ts,*.vue setlocal tabstop=2 sw=2 et

" set tab width to 4 in go files
" au BufRead,BufNewFile *.go setlocal tabstop=4 sw=4 et

" enables html syntax in vimperator edit forms
au BufRead,BufNewFile vimperator-*.tmp set filetype=html

" enables html/js/css syntax in vue files
au BufRead,BufNewFile *.vue set filetype=html.js.css

" -------------------------------------
" GO.nvim 
" -------------------------------------
autocmd BufWritePre *.go :silent! lua require('go.format').gofmt()
