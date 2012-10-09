#!/bin/sh

if [[ -e $HOME/.vimrc || -e $HOME/.vim ]]; then
  echo "Ooops: ~/.vimrc or ~/.vim already exists. \n\
       It looks like you already have some vim configuration. \n\
       Delete .vim and .vimrc and run install.sh again."
else
  ln -s $PWD/vimrc $HOME/.vimrc
  ln -s $PWD $HOME/.vim
  # echo rm $HOME/.vim/vimrc $HOME/.vim/install.sh $HOME/.vim/README.md
  # echo mkdir -p $HOME/.vim/bundle # might not need it
  # echo # Install bundle using vundle
  vim +BundleInstall +qall
fi
