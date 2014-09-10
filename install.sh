#!/bin/sh

# This is a very basic install script
# that i use personally, but will soon
# be updated to be useable by mostly anyone

# Initilize the git submodules
# and update them!
git submodule init
git submodule update

# Copy all the files needed
cp -r .bash_profile      ~/
cp -r .bashrc            ~/
cp -r .bin/              ~/
cp -r .config/           ~/
cp -r .ctags             ~/
cp -r .fonts/            ~/
cp -r .gitconfig         ~/
cp -r .promptline.sh     ~/
cp -r .ssh/              ~/
cp -r .tmux.conf         ~/
cp -r .vim/              ~/

# Install Vim Plugins
vim +BundleClean +qall
vim +BundleUpdate +qall

# Copy the VIMRC file after bundle install so that we don't get errors!
cp -r .vimrc             ~/

# Go to the YouCompleteMe DIR and compile and install it!
~/.vim/bundle/YouCompleteMe/install.sh --clang-completer
