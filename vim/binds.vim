" -------------------------------------
" KEY MAPPING
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

" toggle git status with Space + s
nnoremap <space>s :Git<CR>

" toggle neotree left window with Space + t
nnoremap <space>t :NeoTreeFocus<cr>

" toggle neotree float window with Space + n
nnoremap <space>n :NeoTreeFloat<cr>

" stop highlighting with Space + Space
nnoremap <space><space> :noh<cr>

" source .nvimrc with Space + v
nnoremap <space>v :so ~/.config/nvim/init.lua<cr>

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
