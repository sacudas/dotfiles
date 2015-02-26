#!/bin/bash

# This is a very basic install script
# that i use personally, but will soon
# be updated to be useable by mostly anyone

# Ask what name to use?
printf "Git Name [Default: $(git config --global user.name)]:"
read GIT_NAME

# Save the GIT_NAME
if [ "$GIT_NAME" != "" ]; then
	printf "Save the GIT_NAME: $GIT_NAME\n"
	git config --global user.name "$GIT_NAME"
fi

# Ask what email to use?
printf "Git Email [Default: $(git config --global user.email)]:"
read GIT_EMAIL

# Save the GIT_EMAIL
if [ "$GIT_EMAIL" != "" ]; then
	printf "Save the GIT_EMAIL: $GIT_EMAIL\n"
	git config --global user.email "$GIT_EMAIL"
fi

# Ask if we want to update the plugins...
printf "Update Bundles/Plugins? [Y/n]:"
read UPDATE_BUNDLES

# Ask if we need to compile YouCompleteMe!
printf "Compile YouCompleteMe? [Y/n]:"
read COMPILE_YCM

# Check if we have a bundle DIR
if [ ! -d ~/.vim/bundle ]
then
	# the ~/.vim/bundle DIR does not exist, so we will it to exist
	mkdir -p ~/.vim/bundle
fi

# Check if our plugin manager is installed
if [ ! -d ~/.vim/bundle/Vundle.vim ]
then
	# Install our plugin manager
	printf "Install our plugin manager\n"
	git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim
fi

# Copy all the files needed
printf "Copy all the files needed\n"
cp                      .bash_profile      ~/.bash_profile
cp                      .bashrc            ~/.bashrc
cp -r                   .bin/              ~/.bin/
cp -r                   .config/           ~/.config/
cp                      .ctags             ~/.ctags
cp -r                   .fonts/            ~/.fonts/
cp                      .gitconfig         ~/.gitconfig
cp                      .promptline.sh     ~/.promptline.sh
cp -r                   .ssh/              ~/.ssh/
cp                      .tmux.conf         ~/.tmux.conf
cp -r                   .vim/              ~/.vim/
cp -r --preserve=links  .nvim              ~/.nvim

if [ "$UPDATE_BUNDLES" != "n" ]; then
	# Setup the vimrc for temporary use!
	echo "source ~/.vim/rc/plugins/vundle.vim" > ~/.vimrc

	# Install Vim Plugins
	printf "Install Vim Plugins, Will take a while depending on connection speed!\n"
	vim +BundleClean +qall
	vim +BundleUpdate +qall


	# Copy the VIMRC file after bundle install so that we don't get errors!
	printf "Copy the VIMRC file after bundle install so that we don't get errors!\n"
	cp                  .vimrc             ~/.vimrc
	cp --preserve=links .nvimrc            ~/.nvimrc
fi

if [ "$COMPILE_YCM" != "n" ]; then
	# Go to the YouCompleteMe DIR and compile and install it!
	printf "Go to the YouCompleteMe DIR and compile and install it!\n"
	printf "This will also take a while, depending on CPU speed AND connection speed!\n"
	~/.vim/bundle/YouCompleteMe/install.sh --clang-completer
fi

# Install done! WEW!
printf "Install DONE! WEW!\n"
