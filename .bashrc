# Set default editor to vim
export EDITOR="vim"

# tell bash that we want to use the 256 color terminal
export TERM=screen-256color;

# add my ${HOME}/bin to the path
export PATH=$PATH":${HOME}/.bin/"

# add my android tools to the path
export PATH=$PATH":${HOME}/.sdks/android/tools/"

# add my android platform tools to the path
export PATH=$PATH":${HOME}/.sdks/android/platform-tools/"

# Add GLOBAL composer to PATH so we can use it in BASH!
export PATH=$PATH":${HOME}/.composer/vendor/bin/"

# add my android sdk as ANDROID_HOME so that android studio will work nicely
export ANDROID_HOME="${HOME}/.sdks/android/"

# JAVA! WHERE DO YOU LIVE?
export JAVA_HOME="/usr/lib/jvm/java-7-openjdk-amd64/"

# don't put duplicate lines in the history. See bash(1) for more options
# ... or force ignoredups and ignorespace
HISTCONTROL=ignoredups:ignorespace

# append to the history file, don't overwrite it
shopt -s histappend

# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
HISTSIZE=5000
HISTFILESIZE=5000

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
	test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
	alias ls='ls --color=auto'
	alias dir='dir --color=auto'
	alias vdir='vdir --color=auto'

	alias grep='grep --color=auto'
	alias fgrep='fgrep --color=auto'
	alias egrep='egrep --color=auto'
fi

# some more ls aliases
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

# Alias for ubuntu software updates
alias upbuntu='sudo apt-get update && sudo apt-get upgrade -y && sudo apt-get
dist-upgrade -y && sudo apt-get autoclean -y && sudo apt-get autoremove -y'

# enable programmable completion features
if [ -f /etc/bash_completion ] && ! shopt -oq posix; then
	. /etc/bash_completion
fi

# load up the custom CLI PROMPT
[[ -s ~/.promptline.sh ]] && source ~/.promptline.sh

# load the rails bash configs
[[ -s /etc/profile.d/rvm.sh ]] && source /etc/profile.d/rvm.sh

