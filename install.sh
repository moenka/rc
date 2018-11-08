#!/bin/bash
# Install contents of this repository into the $HOME directory.

DIR=$(dirname "$(readlink -e "$0")")
IGNORE=( -I . -I .. -I doc -I .git -I .gitignore -I install.sh -I README.md)

echo -n "Installing into ${HOME} ... "
ls --color=none -a ${IGNORE[*]} $DIR | xargs -i cp -r $DIR/{} $HOME && echo "done" || echo "failed"

