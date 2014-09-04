#!/bin/sh

# This is a very basic install script
# that i use personally, but will soon
# be updated to be useable by mostly anyone

# Initilize the git submodules
# and update them!
git submodule init
git submodule update

# Copy all the files needed
rm -rf ~/.bash_profile      && cp -r .bash_profile      ~/
rm -rf ~/.bashrc            && cp -r .bashrc            ~/
rm -rf ~/.bin/              && cp -r .bin/              ~/
rm -rf ~/.config/           && cp -r .config/           ~/
rm -rf ~/.ctags             && cp -r .ctags             ~/
rm -rf ~/.fonts/            && cp -r .fonts/            ~/
rm -rf ~/.gitconfig         && cp -r .gitconfig         ~/
rm -rf ~/.promptline.sh     && cp -r .promptline.sh     ~/
rm -rf ~/.ssh/              && cp -r .ssh/              ~/
rm -rf ~/.tmux.conf         && cp -r .tmux.conf         ~/
rm -rf ~/.vim/              && cp -r .vim/              ~/
rm -rf ~/.vimrc             && cp -r .vimrc             ~/

# Install Vim Plugins
vim +BundleClean +qall
vim +BundleUpdate +qall

# Go to the YouCompleteMe DIR and compile and install it!
~/.vim/bundle/YouCompleteMe/install.sh --clang-completer
