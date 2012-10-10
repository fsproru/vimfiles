#!/bin/sh

if [[ -e $HOME/.vimrc || -e $HOME/.vim ]]; then
  echo "Ooops: ~/.vimrc or ~/.vim already exists. \n\
       It looks like you already have some vim configuration. \n\
       Try to run ./uninstall.sh"
else
  current_dir=$(dirname $0)

  echo === Checking out vundle
  cd $current_dir
  git submodule update --init
  cd -

  echo === Linking vim directories
  ln -s $current_dir/vimrc $HOME/.vimrc
  ln -s $current_dir $HOME/.vim

  echo === Vundling
  vim +BundleInstall +qall

  echo === Done
fi
