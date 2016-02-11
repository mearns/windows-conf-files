#!/bin/bash

# Create a directory if it doesn't exist, and change directories
# into it.
dive() {
    if [ ! -d "$1" ]; then
        mkdir -p "$1"
    fi
    cd "$1"
}

export EDITOR=vim
export VISUAL=gvim

alias cd..="cd .."
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../../.."
alias pd='pushd'
alias pop='popd'
alias so='source'

#Fix chef in bash on windows
if [[ `uname -s` =~ ^CYGWIN_NT.* ]] || [[ `uname -s` =~ ^MINGW32_NT.* ]] || [[ `uname -s` =~ ^WindowsNT.* ]]
then
    alias chef=chef.bat
    alias knife=knife.bat
    alias kitchen=kitchen.bat
    alias berks=berks.bat
    alias bundle=bundle.bat
    alias rubocop=rubocop.bat
    alias thor=thor.bat
    alias foodcritic=foodcritic.bat
fi

if command -v thefuck >/dev/null 2>&1
then
    eval "$(thefuck --alias)"
    eval "$(thefuck --alias crap)"
fi


col_host=$'\e[1;34m'
col_date=$'\e[0;35m'
col_text=$'\e[1;37m'
col_user=$'\e[1;36m'
col_cdir=$'\e[1;32m'
col_none=$'\e[0m'

#For your primary computer, place a file called ".workstation" in your home directory,
# so we know to use "default" coloring.
if [ -e ~/.workstation ]
then
    hosthash=0
else
    hosthash=`hostname | md5sum`
fi

case $hosthash in
[0d]*)
    col_date=$'\e[35;40m'
    ;;
1*)
    col_date=$'\e[36;4;40m'
    ;;
[2e]*)
    col_date=$'\e[37;41m'
    ;;
3*)
    col_date=$'\e[30;42m'
    ;;
[4f]*)
    col_date=$'\e[1;37;4;42m'
    ;;
5*)
    col_date=$'\e[34;43m'
    ;;
[67]*)
    col_date=$'\e[37;4;43m'
    ;;
[89]*)
    col_date=$'\e[30;45m'
    ;;
[ab]*)
    col_date=$'\e[37;46m'
    ;;
*)
    col_date=$'\e[36;4;47m'
    ;;
esac

export PS1='${col_date}\D{%Y-%m-%d %H:%M}${col_none} ${col_text}[${col_user}\u${col_text}@${col_host}\h${col_none} ${col_cdir}\W${col_text}]\$ ${col_none}'


echo -en '\n\033[1;34m'
date +"Today is %A, %B %e, %Y."
echo -en '\033[0m'


export NVM_DIR="/h/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm
