" ----------
" Vim Config
" ----------
"
" TL;DR
" Run install.sh to symlink this file to your home directory (e.g. $HOME/.vimrc)
"
" How this works:
"
" This file is minimal.  Most of the vim settings and initialization is in
" several files in .vim/init.  This makes it easier to find things and to
" merge between branches and repos.
"
" Please do not add configuration to this file, unless it *really* needs to
" come first or last, like vundle. Instead, add it to one of the files in
" .vim/init, or create a new one.

set nocompatible                " Don't maintain compatibility with vi
filetype off
syntax on

" Vundle stuff
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Bundle 'altercation/vim-colors-solarized.git'
Bundle 'tpope/vim-fugitive.git'
Bundle 'tpope/vim-fugitive.git'
Bundle 'tpope/vim-cucumber.git'
Bundle 'tpope/vim-haml.git'
Bundle 'tpope/vim-endwise.git'
Bundle 'tpope/vim-surround.git'
Bundle 'scrooloose/nerdtree.git'
Bundle 'scrooloose/nerdcommenter.git'
Bundle 'mileszs/ack.vim.git'
Bundle 'tpope/vim-repeat.git'
Bundle 'pangloss/vim-javascript.git'
Bundle 'plasticboy/vim-markdown.git'
Bundle 'ecomba/vim-ruby-refactoring.git'
Bundle 'tpope/vim-unimpaired.git'
Bundle 'tpope/vim-rake.git'
Bundle 'tpope/vim-rails.git'
Bundle 'thisivan/vim-taglist.git'
Bundle 'godlygeek/tabular.git'
Bundle 'ervandew/supertab.git'
Bundle 'janx/vim-rubytest.git'
Bundle 'scrooloose/syntastic.git'
Bundle 't9md/vim-chef.git'
Bundle 'msanders/snipmate.vim.git'
Bundle 'kchmck/vim-coffee-script.git'
Bundle 'bbommarito/vim-slim.git'
Bundle 'Lokaltog/vim-powerline.git'
Bundle 'vim-scripts/FuzzyFinder.git'
Bundle 'vim-scripts/L9.git'

filetype plugin indent on

" Source initialization files
runtime! init/**.vim
