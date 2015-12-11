#!/bin/bash

# Create a directory if it doesn't exist, and change directories
# into it.
dive() {
    if [ ! -d "$1" ]; then
        mkdir -p "$1"
    fi
    cd "$1"
}

export EDITOR=gvim
export VISUAL=$EDITOR

alias cd..="cd .."
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../../.."
alias pd='pushd'
alias pop='popd'
alias so='source'

eval "$(thefuck --alias)"
eval "$(thefuck --alias crap)"


export PS1="\e[37;1m[\e[36;1m\u\e[37;0m@\e[34;1m\h \e[32;1m\W\e[37;1m]\$ \e[0m"

echo -en '\n\033[1;34m'
date +"Today is %A, %B %e, %Y."
echo -en '\033[0m'

