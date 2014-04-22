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

# add my android sdk as ANDROID_HOME so that android studio will work nicely
export ANDROID_HOME="${HOME}/.sdks/android/"

# enable programmable completion features
if [ -f /etc/bash_completion ] && ! shopt -oq posix; then
	. /etc/bash_completion
fi

# load up the custom CLI PROMPT
source ~/.promptline.sh

