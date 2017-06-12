# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
    . /etc/bashrc
fi

# Include custom bash stuff
if [ -d ~/.bash_include ]; then
    . ~/.bash_include/*
fi

# stop the pc speaker ever annoying me :)
setterm -bfreq 0

# don't put duplicate lines in the history. See bash(1) for more options
HISTCONTROL=ignoredups
# ... and ignore same sucessive entries.
HISTCONTROL=ignoreboth

# Expand the history size
HISTFILESIZE=10000
HISTSIZE=100

# commands with leading space do not get added to history
HISTCONTROL=ignorespace

# ls aliases
alias ll='ls -la --color=auto'

# cd aliases
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions
