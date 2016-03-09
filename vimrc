execute pathogen#infect()

syntax on
filetype plugin indent on

let mapleader = "\<Space>"

inoremap kj <ESC>
" noremap <ESC> :noh<CR> :ccl<CR><ESC>

" Save
map <Leader>s :w<CR>
" Build
" TODO: Change this to be platform specific
set makeprg=build.bat
nmap <Leader>b :w<CR> :make<CR> :copen<CR>
nmap <Down> :cnext<CR>
nmap <Up> :cprev<CR>

set nowrap
set expandtab
set tabstop=4
set softtabstop=4
set shiftwidth=4
set backspace=2

set autoread

" Stop line wrapping on log files, cause it's just easier
" for me to read them that way
autocmd BufRead,BufNewFile *.log setlocal wrap
