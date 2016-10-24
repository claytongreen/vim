#!/bin/bash

if [ ! -d pack/claytrong/start ]; then
    mkdir -p pack/claytrong/start
fi
pushd pack/claytrong/start

if [ ! -d ctrlp.vim ]; then
    git clone https://github.com/ctrlpvim/ctrlp.vim.git
else
    pushd ctrlp.vim
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

popd
