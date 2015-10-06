#!/bin/bash
# Install this profile into the $HOME directory.
workdir=$(dirname "$(readlink -e "$0")")
case $1 in
    f|full)
        echo "Installing full version..."
        ls --color=none -a -I . -I .. -I doc -I .git -I .gitignore -I .gitconfig -I install.sh $workdir | xargs -i cp -r $workdir/{} $HOME
        ;;
    g|git)
        cp .gitconfig $HOME
        ;;
    m|min|minimal)
        echo "Installing minimal version..."
        cp -r $workdir/.bash_functions/ $HOME
        cp -r $workdir/.fonts/ $HOME
        cp $workdir/.bash_logout $HOME
        cp $workdir/.bash_profile $HOME
        cp $workdir/.bashrc $HOME
        cp $workdir/.inputrc $HOME
        cp $workdir/.vimrc $HOME
        ;;
    *)
        echo "Argument missing. Specify m(in(inmal) or f(ull) version."
        ;;
esac

