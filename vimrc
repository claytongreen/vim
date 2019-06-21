
set nocompatible

syntax on
filetype plugin indent on

set path+=**
set wildmenu

" Remap ESC button to k ... j
inoremap kj <ESC>

set nowrap
set expandtab
set softtabstop=2
set shiftwidth=2

set backspace=indent,eol,start

" show me them invisible things
set list

" Disable dat BELLLLLL!
set noeb vb t_vb=
au GUIEnter * set vb t_vb=

set wildignore+=*/node_modules/*,.git,*/build/*

" Ignore the build folder on Android projects
au BufNewFile,BufRead */AndroidStudioProjects/* set wildignore+=*/build/*

set hlsearch
nnoremap <esc> :noh<return><esc>

set cursorline " highlight the current line
