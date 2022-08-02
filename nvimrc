" CLASSIC CONFIG - MINIMAL REQS/PLUGINS
" -------------------------------------
" VIM PLUG / PACKAGE MANAGEMENT
" -------------------------------------

call plug#begin('~/.nvim/plugged')

" theme
Plug 'ayu-theme/ayu-vim'

" util
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'yegappan/mru'
Plug 'itchyny/lightline.vim'
Plug 'tpope/vim-surround'
Plug 'gregsexton/MatchTag'
Plug 'Raimondi/delimitMate'
Plug 'tomtom/tcomment_vim'

call plug#end()

" -------------------------------------
" COLORS / HIGHLIGHTS
" -------------------------------------
"
set termguicolors

" color scheme
let ayucolor="dark"
colorscheme ayu

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
" NERDTREE
" -------------------------------------

" NERDTree Minimal UI
let NERDTreeMinimalUI=1
let g:NERDTreeDirArrowExpandable="+"
let g:NERDTreeDirArrowCollapsible="~"

" ignore .node_modules
let g:NERDTreeIgnore = ['^node_modules$']

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
" MAPPING
" -------------------------------------

" write with Space + w
nnoremap <space>w :w<cr>

" quit with Space + q
nnoremap <space>q :q<cr>

" map leader to comma
let mapleader = ","

" toggle paste mode with F3
set pastetoggle=<F3>

" toggle list mode with Space + l
nmap <space>l :set list!<CR>

" toggle NERDTree window with Space + t
nnoremap <space>t :NERDTreeToggle<cr>

" stop highlighting with Space + Space
nnoremap <space><space> :noh<cr>

" source .nvimrc with Space + v
nnoremap <space>v :so $MYVIMRC<cr>

" toggle MRU plugin with Space + m
nnoremap <space>m :MRU<cr>

" escape mashing with jk or kj
inoremap jk <Esc>
inoremap kj <Esc>

" delete line without yanking with dd
nnoremap dd "_dd

" delete and yank with dy
nnoremap dy dd

" map semicolon to colon
nnoremap ; :

" remove all the whitespace with Space + Minus Key
nnoremap <space>- :%s/\s\+$//<cr>:let @/=''<cr>

" move between windows with Ctrl + h/j/k/l
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" reselect visual block after indent/outdent
vnoremap < <gv
vnoremap > >gv

" use +/- to increment/decrement numbers
nnoremap + <C-a>
nnoremap - <C-x>
" unbind old increment/decrement
nnoremap <C-a> <NOP>
nnoremap <C-x> <NOP>

" -------------------------------------
" OTHER
" -------------------------------------

" hide normal mode indicator cos we use lightline
set noshowmode

" cds into files dir
set autochdir

" disable paste mode when leaving insert mode
" au InsertLeave * set nopaste

" save backup and swap files to ~/tmp
set backupdir=~/tmp
set directory=~/tmp

" -------------------------------------
" FILETYPES
" -------------------------------------

" launch plugins based on filetype
filetype plugin on

" set tab width to 2 in css/js files
au BufRead,BufNewFile *.css,*.scss,*.styl,*.jade,*.js,*.ts,*.vue setlocal tabstop=2 sw=2 et

" enables snipmate css snippets in .scss (sass) files
au BufRead,BufNewFile *.scss set ft=css.scss

" enables html/js/css syntax in vue files
au BufRead,BufNewFile *.vue set filetype=html.js.css
