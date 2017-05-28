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
autocmd FileType kotlin setlocal shiftwidth=4 tabstop=4

set autoread

set colorcolumn=100

let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/](\.(git|hg|svn)$)|((node_modules|e2e|assets|vendor|build)$)',
  \ 'file': '\v\.(swp|orig|ico|jpg|jpeg|png|gif)'
  \ }

" Stop line wrapping on log files, cause it's just easier
" for me to read them that way
autocmd BufRead,BufNewFile *.log setlocal nowrap

if (empty($TMUX))
  if (has("nvim"))
    let $NVIM_TUI_ENABLE_TRUE_COLOR=1
  endif
  if (has("termguicolors"))
    set termguicolors
  endif
endif
"let g:onedark_termcolors=16
syntax on
colorscheme onedark

" Disable dat BELLLLLL!
set noeb vb t_vb=
au GUIEnter * set vb t_vb=
