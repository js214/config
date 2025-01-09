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
alias mlm="make linux-menuconfig"
alias cd2="cd ../.."
alias cd3="cd ../../.."
alias cd4="cd ../../../.."

PATH="/home/jk/perl5/bin${PATH:+:${PATH}}"; export PATH;
PERL5LIB="/home/jk/perl5/lib/perl5${PERL5LIB:+:${PERL5LIB}}"; export PERL5LIB;
PERL_LOCAL_LIB_ROOT="/home/jk/perl5${PERL_LOCAL_LIB_ROOT:+:${PERL_LOCAL_LIB_ROOT}}"; export PERL_LOCAL_LIB_ROOT;
PERL_MB_OPT="--install_base \"/home/jk/perl5\""; export PERL_MB_OPT;
PERL_MM_OPT="INSTALL_BASE=/home/jk/perl5"; export PERL_MM_OPT;
