filetype plugin indent on

let mapleader = "\<Space>"

inoremap kj <ESC>

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
set tabstop=2
set softtabstop=2
set shiftwidth=2
set backspace=2

autocmd FileType typescript setlocal shiftwidth=2 tabstop=2

set autoread

set colorcolumn=100

set wildignore+=*.swp,*.orig
set wildignore+=**/node_modules,**/e2e " Ignore Angular2 folders
set wildignore+=**/vendor " Ignore Yii2 folders

" Stop line wrapping on log files, cause it's just easier
" for me to read them that way
autocmd BufRead,BufNewFile *.log setlocal nowrap

if (has("termguicolors"))
    set termguicolors
endif
syntax on
colorscheme onedark

" Disable dat BELLLLLL!
set noeb vb t_vb=
au GUIEnter * set vb t_vb=
