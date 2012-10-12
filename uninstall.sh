#!/bin/sh

if [[ -e $HOME/.vimrc || -e $HOME/.vim ]]; then

  # asking for confirmation
  echo "I'll delete $HOME/.vim and $HOME/.vimrc\n\
Hope you don't have anything important there.\n\n\
Sounds good? (yes/no)"

  while true
  do
    read CONFIRM
    case $CONFIRM in
      y|Y|YES|yes|Yes) break ;;
      n|N|no|NO|No)
        echo Aborting - you entered $CONFIRM
        exit
        ;;
      *) echo Please type \"yes\" or \"no\"
    esac
  done

  # deleting
  echo "You entered $CONFIRM. So I'm deleting it."
  rm ~/.vim
  rm ~/.vimrc
else
  echo "vimfiles are already deleted. You're good."
fi
