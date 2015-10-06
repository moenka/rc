#!/bin/bash
# Install into the $HOME directory.
DIR=$(dirname "$(readlink -e "$0")")
IGNORE=( -I . -I .. -I doc -I .git -I .gitignore -I .gitconfig -I install.sh )
case $1 in
    f|full)
        echo "Installing full version..."
        ls --color=none -a ${IGNORE[*]} $DIR | xargs -i cp -r $DIR/{} $HOME
        ;;
    g|git)
        cp .gitconfig $HOME
        ;;
    m|min)
        echo "Installing minimal version..."
        cp -r $DIR/bin $HOME
        cp -r $DIR/.fonts $HOME
        cp $DIR/.bash_logout $HOME
        cp $DIR/.bash_profile $HOME
        cp $DIR/.bashrc $HOME
        cp $DIR/.inputrc $HOME
        cp $DIR/.vimrc $HOME
        ;;
    *)
        echo "Argument missing. Specify m(in) or f(ull) or just g(it) version."
        ;;
esac

