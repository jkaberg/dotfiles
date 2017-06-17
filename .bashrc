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
if [ -f ~/.local/lib/python2.7/site-packages/powerline/bindings/bash/powerline.sh ]; then
    source ~/.local/lib/python2.7/site-packages/powerline/bindings/bash/powerline.sh
fi

# Set TERM
export TERM=xterm-256color

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

# grep alias
alias grep='grep --color=auto'

# cd aliases
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'

# default to vim
export EDITOR=vim

# check if window resizes to mitigate line endings when paste etc
shopt -s checkwinsize

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions
