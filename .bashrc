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

# colorize grep
export GREP_OPTIONS='--color=auto'

# default to vim
export EDITOR=vim

# dont overwrite bash history when running simultanious bash instances
shopt -s histappend
PROMOT_COMMAND='history -a'

# check if window resizes to mitigate line endings when paste etc
shopt -s checkwinsize

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions
