colorscheme alabaster

" Get rid of all the menu shit
set guioptions-=m   " remove menu bar
set guioptions-=T   " remove toolbar
set guioptions-=r   " remove righthand scroll bar
set guioptions-=L   " remove left hand scroll bar

set laststatus=2    " show the status bar

set statusline=                                                     " clear the statusline for when vimrc is reloaded
set statusline+=%-3.3n\                                             " buffer number
set statusline+=%f\                                                 " file name
set statusline+=%h%m%r%w                                            " flags
set statusline+=[%{strlen(&ft)?&ft:'none'},                         " filetype
set statusline+=%{strlen(&fenc)?&fenc:&enc},                        " encoding
set statusline+=%{&fileformat}]                                     " file format
set statusline+=%=                                                  " right align
set statusline+=%{synIDattr(synID(line('.'),col('.'),1),'name')}\   " highlight
set statusline+=%b,0x%-8B\                                          " current char
set statusline+=%-14.(%l,%c%V%)\ %<%P                               " offset

"set guifont=Liberation_Mono:h12:cANSI
set guifont=Fira_Code:h12:cANSI

set background=dark
