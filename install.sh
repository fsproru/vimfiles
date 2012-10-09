#!/bin/sh

if [[ -e $HOME/.vimrc || -e $HOME/.vim ]]; then
  echo "Ooops: ~/.vimrc or ~/.vim already exists. \n\
       It looks like you already have some vim configuration. \n\
       Delete .vim and .vimrc and run install.sh again."
else
  ln -s $PWD/vimrc $HOME/.vimrc
  ln -s $PWD $HOME/.vim
  vim +BundleInstall +qall
fi
