# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
    . /etc/bashrc
fi

# Include custom bash stuff
if [ -e ~/.bash_include ]; then
    for file in "$(find ~/.bash_include/ -maxdepth 1 -name '*.bash' -print)"; do source $file; done
fi

# Include local bin
if [ -d "$HOME/.local/bin" ]; then
    PATH="$HOME/.local/bin:$PATH"
fi

# Powerline
#if [ -f ~/.local/lib/python2.7/site-packages/powerline/bindings/bash/powerline.sh ]; then
#    source ~/.local/lib/python2.7/site-packages/powerline/bindings/bash/powerline.sh
#fi

# https://github.com/magicmonty/bash-git-prompt
GIT_PROMPT_ONLY_IN_REPO=1
GIT_PROMPT_THEME=Solarized_Ubuntu
source ~/.bash-git-prompt/gitprompt.sh

# Set TERM
#export TERM=screen-256color

# don't put duplicate lines in the history. See bash(1) for more options
HISTCONTROL=ignorespace:ignoredups:erasedups:ignoreboth
shopt -s histappend
PROMPT_COMMAND="history -n;history -w;history -c;history -r;$PROMPT_COMMAND"

# ignore certain commands in history
HISTIGNORE='rm:ll:git:superssh:superpush:..:...:....:history'

# Expand the history size
HISTFILESIZE=10000
HISTSIZE=100

# ls aliases
alias ll='ls -lah --color=auto'

# grep alias
alias grep='grep --color=auto'

# ipcalc
alias ipcalc2='docker run --rm hub.cert.nhn.no/goipcalc'

# cd aliases
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'

# default to vim
export EDITOR=vim

# check if window resizes to mitigate line endings when paste etc
shopt -s checkwinsize

# run tmux if no SSH session
if [[ -z "$TMUX" ]] || [[ -n "$SSH_CLIENT" ]] || [[ -n "$SSH_TTY" ]]; then
    exec tmux
fi
