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


export PS1="\[\e[35m\]\D{%Y-%m-%d %H:%M}\[\e[0m\] \[\e[37;1m\][\[\e[36;1m\]\u\[\e[37;0m\]@\[\e[34;1m\]\h \[\e[32;1m\]\W\[\e[37;1m\]]\$ \[\e[0m\]"

echo -en '\n\033[1;34m'
date +"Today is %A, %B %e, %Y."
echo -en '\033[0m'


export NVM_DIR="/h/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm
