#!/bin/bash
#
# This is sourced by bash for non-login interactive shells, like when you open a
# new terminal window.
#

# Load Common stuff.
# Most of our stuff is defined in .allbashrc, the only stuff here is things we don't
# want to run in a login shell.

echo "Sourcing .bashrc..."

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
. "${DIR}/.allbashrc"


# Print the date.
echo -en '\n\033[1;34m'
date +"Today is %A, %B %e, %Y."
echo -en '\033[0m'


# Load local variant.
LOCAL_BASHRC="${DIR}/.local.bashrc"
if [ -f "${LOCAL_BASHRC}" ]
then
. "${LOCAL_BASHRC}"
fi


