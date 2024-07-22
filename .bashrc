set -o vi
bind -x $'"\C-l":clear;'

export EDITOR=vim
export PS1="\[\e[0m\]\[\e[1;32m\][\W]> \[\e[0m\]"
export PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games:/usr/lib/wsl/lib
export PROJECTS=/mnt/c/Users/Jkastelic/Documents/projects/

alias ac="apt-cache search"
alias as="apt-cache show"
alias aget="sudo apt-get install"
alias ls="ls --color"
alias watch="watch --color"
