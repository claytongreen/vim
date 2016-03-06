@echo off

IF NOT EXIST bundle mkdir bundle
pushd bundle

IF NOT EXIST ctrlp.vim git clone https://github.com/ctrlpvim/ctrlp.vim.git 
IF NOT EXIST YouCompleteMe git clone https://github.com/Valloric/YouCompleteMe.git
IF NOT EXIST base16-vim git clone https://github.com/chriskempson/base16-vim.git

popd
