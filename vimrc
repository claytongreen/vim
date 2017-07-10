filetype plugin indent on

let mapleader = "\<Space>"

" Remap ESC button to k ... j
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
set tabstop=8
set softtabstop=4
set shiftwidth=4
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

"Use 24-bit (true-color) mode in Vim/Neovim when outside tmux.
"If you're using tmux version 2.2 or later, you can remove the outermost $TMUX check and use tmux's 24-bit color support
"(see < http://sunaku.github.io/tmux-24bit-color.html#usage > for more information.)
if (empty($TMUX))
  if (has("nvim"))
    "For Neovim 0.1.3 and 0.1.4 < https://github.com/neovim/neovim/pull/2198 >
    let $NVIM_TUI_ENABLE_TRUE_COLOR=1
  endif
  "For Neovim > 0.1.5 and Vim > patch 7.4.1799 < https://github.com/vim/vim/commit/61be73bb0f965a895bfb064ea3e55476ac175162 >
  "Based on Vim patch 7.4.1770 (`guicolors` option) < https://github.com/vim/vim/commit/8a633e3427b47286869aa4b96f2bfc1fe65b25cd >
  " < https://github.com/neovim/neovim/wiki/Following-HEAD#20160511 >
  if (has("termguicolors"))
    set termguicolors
  endif
endif

syntax on
colorscheme onedark

" Disable dat BELLLLLL!
set noeb vb t_vb=
au GUIEnter * set vb t_vb=
