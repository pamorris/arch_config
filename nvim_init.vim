call plug#begin('~/.local/share/nvim/plugged')

Plug 'scrooloose/nerdtree'
Plug 'morhetz/gruvbox'

" Initialize plugin system
call plug#end()

colorscheme gruvbox
set background=dark

let mapleader = ","

set mouse=a
set number
set relativenumber
set ruler
set splitbelow
set splitright
filetype plugin on
filetype indent on
set cursorline
set nowrap
set autoread
syntax enable
set expandtab
set smarttab
set shiftwidth=4
set tabstop=4

map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

tnoremap jk <C-\><C-n>
tnoremap <Esc> <C-\><C-n>
inoremap jk <Esc>

map <leader>c :close<cr>
map <leader>d :bdelete<cr>
map <leader>l :bnext<cr>
map <leader>h :bprevious<cr>

map <leader>n :NERDTreeToggle<cr>
