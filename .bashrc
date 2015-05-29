#!/bin/bash

# Create a directory if it doesn't exist, and change directories
# into it.
dive() {
    if [ ! -d "$1" ]; then
        mkdir -p "$1"
    fi
    cd "$1"
}

alias cd..="cd .."
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../../.."
#alias cd='pushd'
#alias back='popd'


