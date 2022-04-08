set nocompatible

syntax on
filetype plugin indent on

colorscheme onedark

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
nnoremap <silent> <Leader><Leader> :noh<return><esc>

set cursorline " highlight the current line

autocmd BufNewFile,BufRead *.zig set filetype=zig

let g:ycm_language_server =
  \ [
  \{
  \     'name': 'zls',
  \     'filetypes': [ 'zig' ],
  \     'cmdline': [ 'C:/dev/zls/zig-out/bin/zls' ]
  \    }
  \ ]

nmap <leader>sp :call <SID>SynStack()<CR>
function! <SID>SynStack()
  if !exists("*synstack")
    return
  endif
  echo map(synstack(line('.'), col('.')), 'synIDattr(v:val, "name")')
endfunc

" set listchars=tab:\ ,eol:\ 
