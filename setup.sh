#!/bin/bash
declare -a packages=(
                    "https://github.com/ctrlpvim/ctrlp.vim.git"
                    "https://github.com/joshdick/onedark.vim.git"
                    "https://github.com/leafgarland/typescript-vim.git"
                    "https://github.com/Valloric/YouCompleteMe.git"
                    "https://github.com/rhysd/vim-clang-format.git"
                    "https://github.com/Quramy/tsuquyomi.git"
                    "https://github.com/Shougo/vimproc.vim.git"
                    "https://github.com/clausreinke/typescript-tools.vim.git"
                    )

# don't want to install YCM every time, that'd be bad
while getopts i option
do
  case "${option}"
  in
    i) INSTALL_YCM=1;;    
  esac
done

if [ ! -d pack/claytrong/start ]; then
    mkdir -p pack/claytrong/start
fi
pushd pack/claytrong/start

  # install the packages
  for p in "${packages[@]}"
  do
      git clone -q $p 
  done

  # update the packages
  for d in `find -maxdepth 1 -type d \( ! -name . \)`
  do
    pushd $d
    git pull
    popd
  done

popd

# Add ondedark to my colors
if [ ! -d colors ]; then
  mkdir colors
fi
cp pack/claytrong/start/onedark.vim/colors/onedark.vim colors/

# install YouCompleteMe
if [ $INSTALL_YCM ]; then
  pushd pack/claytrong/start/YouCompleteMe
    git submodule update --init --recursive
    ./install.py
  popd
fi

# install vimproc
pushd pack/claytrong/start/vimproc.vim
make
popd
