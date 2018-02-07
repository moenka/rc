#!/bin/bash
# Install into the $HOME directory.
DIR=$(dirname "$(readlink -e "$0")")
IGNORE=( -I . -I .. -I doc -I .git -I .gitignore -I .gitconfig -I install.sh -I README.md)
case $1 in
    f|full)
        echo "Installing full version..."
        ls --color=none -a ${IGNORE[*]} $DIR | xargs -i cp -r $DIR/{} $HOME
        ;;
    g|git)
        cp .gitconfig $HOME
        ;;
    *)
        echo "Argument missing. Specify m(in) or f(ull) or just g(it) version."
        ;;
esac
