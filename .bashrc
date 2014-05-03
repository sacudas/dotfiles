# Set default editor to vim
export EDITOR="vim"

# tell bash that we want to use the 256 color terminal
export TERM=screen-256color;

# add my ${HOME}/bin to the path
export PATH=$PATH":${HOME}/.bin/"

# add my RVM tools to PATH for scripting
export PATH="$PATH:$HOME/.rvm/bin"

# add my android tools to the path
export PATH=$PATH":${HOME}/.sdks/android/tools/"

# add my android platform tools to the path
export PATH=$PATH":${HOME}/.sdks/android/platform-tools/"

# add my android sdk as ANDROID_HOME so that android studio will work nicely
export ANDROID_HOME="${HOME}/.sdks/android/"

# don't put duplicate lines in the history. See bash(1) for more options
# ... or force ignoredups and ignorespace
HISTCONTROL=ignoredups:ignorespace

# append to the history file, don't overwrite it
shopt -s histappend

# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
HISTSIZE=1000
HISTFILESIZE=2000

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

# enable programmable completion features
if [ -f /etc/bash_completion ] && ! shopt -oq posix; then
	. /etc/bash_completion
fi

# load up the custom CLI PROMPT
[[ -s ~/.promptline ]] && source ~/.promptline.sh

# Load RVM into a shell session *as a function*
[[ -s ~/.rvm/scripts/rvm ]] && source ~/.rvm/scripts/rvm

