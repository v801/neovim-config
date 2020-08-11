" -------------------------------------
" VIM PLUG / PACKAGE MANAGEMENT
" -------------------------------------

call plug#begin('~/.nvim/plugged')

" util
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'yegappan/mru'
Plug 'itchyny/lightline.vim'
Plug 'tpope/vim-surround'
Plug 'gregsexton/MatchTag'
Plug 'Raimondi/delimitMate'
Plug 'tudorprodan/html_annoyance.vim'
Plug 'ap/vim-css-color'
Plug 'tomtom/tcomment_vim'

" syntax
Plug 'vim-syntastic/syntastic'
Plug 'posva/vim-vue'
Plug 'othree/html5.vim'
Plug 'elzr/vim-json'
Plug 'othree/javascript-libraries-syntax.vim'
Plug 'othree/yajs.vim'
Plug 'othree/es.next.syntax.vim'
Plug 'othree/csscomplete.vim'
Plug 'wavded/vim-stylus'
Plug 'godlygeek/tabular'
Plug 'plasticboy/vim-markdown'
Plug 'benbernard/vim-stylus'

call plug#end()

" -------------------------------------
" COLORS / HIGHLIGHTS
" -------------------------------------

" my favorite color scheme
colorscheme jellybeans

" colors auto complete popup
highlight Pmenu      ctermbg=235   ctermfg=246
highlight PmenuSel   ctermbg=233   ctermfg=2

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

" toggle JS context coloring mode with Space + c
nmap <space>c :JSContextColorToggle<CR>

" toggle git status with Space + s
nnoremap <space>s :Gstatus<CR>

" toggle NERDTree window with Space + t and/or F2
map <F2> :NERDTreeToggle<CR>
nnoremap <space>t :NERDTreeToggle<cr>

" stop highlighting with Space + Space
nnoremap <space><space> :noh<cr>

" source .vimrc with Space + v
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
" VIM GIST PLUGIN
" -------------------------------------

" posts gists as private by default
" let g:gist_post_private = 1

" -------------------------------------
" VIM JSON PLUGIN
" -------------------------------------

"  disable quote conceal
let g:vim_json_syntax_conceal = 0

" -------------------------------------
" FILETYPES
" -------------------------------------

" launch plugins based on filetype
filetype plugin on

" enables snipmate gsp snippets in .gsp files
au BufRead,BufNewFile *.gsp set ft=gsp.gsp

" enables snipmate html snippets in .gsp files
au BufRead,BufNewFile *.gsp set ft=gsp.html

" enables snipmate html snippets in .php files
au BufRead,BufNewFile *.php set ft=php.html

" enables snipmate javascript snippets in .php files
au BufRead,BufNewFile *.php set ft=php.javascript

" enables snipmate css snippets in .scss (sass) files
au BufRead,BufNewFile *.scss set ft=css.scss

" set tab width to 2 in css/scss/styl/jade/js files
au BufRead,BufNewFile *.css,*.scss,*.styl,*.jade,*.js,*.vue setlocal tabstop=2 sw=2 et

" enables html syntax in vimperator edit forms
au BufRead,BufNewFile vimperator-*.tmp set filetype=html

" enables html/js syntax in grails gsp files
au BufRead,BufNewFile *.gsp set filetype=html.js

au BufRead,BufNewFile *.vue set filetype=html.js.css

" enables php syntax in drupal files
au BufReadPost *.module,*.install,*.theme set ft=php

" enable js lib (jquery) syntax highlighting
autocmd BufReadPre *.js let b:javascript_lib_use_jquery = 1

" -------------------------------------
" LIGHTLINE SETTINGS
" -------------------------------------
let g:lightline = {
  \ 'colorscheme': 'jellybeans',
  \ }

" -------------------------------------
" SYNTASTIC SETTINGS
" -------------------------------------
"
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_javascript_checkers = ['eslint']

" Enable omni completion.
autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags
autocmd FileType ruby setlocal omnifunc=rubycomplete#Complete
