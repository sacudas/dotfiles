#!/bin/sh

# This is a very basic install script
# that i use personally, but will soon
# be updated to be useable by mostly anyone

# Initilize the git submodules
# and update them!
printf "Initilize repo submodules!\n"
git submodule deinit . > /dev/null 2>&1
git submodule init > /dev/null 2>&1
git submodule update > /dev/null 2>&1

# Copy all the files needed
printf "Copy all the files needed\n"
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

# Ask what name to use?
printf "Git Name [Default: $(git config --global user.name)]:"
read GIT_NAME

# Ask what email to use?
printf "Git Email [Default: $(git config --global user.email)]:"
read GIT_EMAIL

# Ask if we need to compile YouCompleteMe!
printf "Compile YouCompleteMe? [Y/n]:"
read COMPILE_YCM

# Save the GIT_NAME
if [ "$GIT_NAME" != "" ]; then
	printf "Save the GIT_NAME: $GIT_NAME\n"
	git config --global user.name "$GIT_NAME"
fi

# Save the GIT_EMAIL
if [ "$GIT_EMAIL" != "" ]; then
printf "Save the GIT_EMAIL: $GIT_EMAIL\n"
	git config --global user.email "$GIT_EMAIL"
fi

# Setup the vimrc for temporary use!
echo "source ~/.vim/vimrc/vundle.vim" > ~/.vimrc

# Install Vim Plugins
printf "Install Vim Plugins, Will take a while depending on connection speed!\n"
vim +BundleClean +qall > /dev/null 2>&1
vim +BundleUpdate +qall > /dev/null 2>&1

# Copy the VIMRC file after bundle install so that we don't get errors!
printf "Copy the VIMRC file after bundle install so that we don't get errors!\n"
cp -r .vimrc             ~/

if [ "$COMPILE_YCM" != "n" ]; then
	# Go to the YouCompleteMe DIR and compile and install it!
	printf "Go to the YouCompleteMe DIR and compile and install it!\n"
	printf "This will also take a while, depending on CPU speed AND connection speed!\n"
	~/.vim/bundle/YouCompleteMe/install.sh --clang-completer > /dev/null 2>&1
fi

# Install done! WEW!
printf "Install DONE! WEW!\n"
