# Set default editor to vim
export EDITOR="vim"

# add my ${HOME}/bin to the path
export PATH=$PATH":/home/${USER}/bin/"

export GIT_PROMPT_START="${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[01;34m\] \w\[\033[00m\]"
export GIT_PROMPT_END="\[\033[01;34m\] \$\[\033[00m\] "

# load up the custom git status bash prompt
source ~/.bash/bash-git-prompt/gitprompt.sh
