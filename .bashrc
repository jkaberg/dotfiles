# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
    . /etc/bashrc
fi

# Include custom bash stuff
if [ -e ~/.bash_include ]; then
    #. ~/.bash_include/*.bash
    source <(cat .bash_include/*.bash)
fi

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
alias ll='ls -la --color=auto'

# cd aliases
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'

# colorize grep
export GREP_OPTIONS='--color=auto'

# default to vim
export EDITOR=vim

# check if window resizes to mitigate line endings when paste etc
shopt -s checkwinsize

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions
