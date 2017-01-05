#!/bin/bash
declare -a packages=(
                    "https://github.com/ctrlpvim/ctrlp.vim.git"
                    "https://github.com/joshdick/onedark.vim.git"
                    )

if [ ! -d pack/claytrong/start ]; then
    mkdir -p pack/claytrong/start
fi
pushd pack/claytrong/start

for p in "${packages[@]}"
do
    echo `expr "$p" : '\/(.*)\.git$'`
    #git clone $p 
done

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

if [ ! -d colors ]; then
  mkdir colors
fi
cp -rf pack/claytrong/start/onedark.vim/colors/onedark.vim colors/
