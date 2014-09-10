#!/bin/sh

# This is a very basic install script
# that i use personally, but will soon
# be updated to be useable by mostly anyone

# Initilize the git submodules
# and update them!
echo "Initilize repo submodules!"
git submodule init > /dev/null 2>&1
git submodule update > /dev/null 2>&1

# Copy all the files needed
echo "Copy all the files needed" cp -r .bash_profile      ~/
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

# Ask what name to use?
echo "Git Name [Default: $(git config --global user.name)]:"
read GIT_NAME

# Ask what email to use?
echo "Git Email [Default: $(git config --global user.email)]:"
read GIT_EMAIL

# Save the GIT_NAME
if [ "$GIT_NAME" != "" ]; then
	echo "Save the GIT_NAME: $GIT_NAME"
	git config --global user.name "$GIT_NAME"
fi

# Save the GIT_EMAIL
if [ "$GIT_EMAIL" != "" ]; then
echo "Save the GIT_EMAIL: $GIT_EMAIL"
	git config --global user.email "$GIT_EMAIL"
fi

# Install Vim Plugins
echo "Install Vim Plugins, Will take a while depending on connection speed!"
vim +BundleClean +qall > /dev/null 2>&1
vim +BundleUpdate +qall > /dev/null 2>&1

# Copy the VIMRC file after bundle install so that we don't get errors!
echo "Copy the VIMRC file after bundle install so that we don't get errors!"
cp -r .vimrc             ~/

# Go to the YouCompleteMe DIR and compile and install it!
echo "Go to the YouCompleteMe DIR and compile and install it!"
echo "This will also take a while, depending on CPU speed AND connection speed!"
~/.vim/bundle/YouCompleteMe/install.sh --clang-completer > /dev/null 2>&1

# Install done! WEW!
echo "Install DONE! WEW!"
