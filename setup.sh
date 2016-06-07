#!/bin/bash

if [ ! -d bundle ]; then
    mkdir bundle
fi
pushd bundle
if [ ! -d ctrlp.vim ]; then
    git clone https://github.com/ctrlpvim/ctrlp.vim.git
else
    pushd ctrlp.vim
    git pull
    popd
fi

if [ ! -d YouCompleteMe ]; then
    git clone https://github.com/Valloric/YouCompleteMe.git
else
    pushd YouCompleteMe
    git pull
    popd
fi

if [ ! -d base16-vim ]; then
    git clone https://github.com/chriskempson/base16-vim.git
else
    pushd base16-vim
    git pull
    popd
fi

if [ ! -d onedark.vim ]; then
    git clone https://github.com/joshdick/onedark.vim.git
else
    pushd onedark.vim
    git pull
    popd
fi

if [ ! -d vim-polyglot ]; then
    git clone https://github.com/sheerun/vim-polyglot.git
else
    pushd vim-polyglot
    git pull
    popd
fi

popd
