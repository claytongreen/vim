@ECHO OFF
SETLOCAL ENABLEDELAYEDEXPANSION

:: Move package list to a file so both .bat and .sh can use
SET PACKAGES=https://github.com/ctrlpvim/ctrlp.vim.git https://github.com/joshdick/onedark.vim.git https://github.com/udalov/kotlin-vim.git https://github.com/leafgarland/typescript-vim.git

IF NOT EXIST pack\claytrong\start mkdir pack\claytrong\start
PUSHD pack\claytrong\start

FOR %%P IN (%packages%) DO (
  git clone -q %%P
)

FOR /D %%D IN ("*") DO (
  PUSHD %%D
  git pull
  POPD
)

POPD

IF NOT EXIST colors MKDIR colors
COPY pack\claytrong\start\onedark.vim\colors\onedark.vim colors\

IF NOT EXIST autoload MKDIR autoload
COPY pack\claytrong\start\onedark.vim\autoload\onedark.vim autoload\
