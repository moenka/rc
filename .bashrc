[ -z "$PS1" ] && return; umask 022

# Path
#export PATH=$HOME/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/usr/local/sbin
export PATH=$HOME/bin:$PATH

# Prompt
if [[ `whoami` == 'root' ]]; then
    export PS1="\[$(tput sgr0)$(tput setaf 1)\] « \h » \[$(tput sgr0)\]"
else
    export PS1=" « \h » "
fi

# Colorization
alias ls='ls --color=auto -CF'
alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'

# Shell options
#shopt -s autocd
#shopt -u cdable_vars
#shopt -s cdspell
#shopt -u checkhash
#shopt -u checkjobs
#shopt -u checkwinsize
#shopt -s cmdhist
#shopt -s direxpand
#shopt -s dirspell
#shopt -u dotglob
#shopt -u execfail
#shopt -s expand_aliases
#shopt -u extdebug
#shopt -s extglob
#shopt -s extquote
#shopt -u failglob
#shopt -s force_fignore
#shopt -s globstar
#shopt -u gnu_errfmt
#shopt -s histappend
#shopt -u histreedit
#shopt -u histverify
#shopt -u hostcomplete
#shopt -u huponexit
#shopt -s interactive_comments
#shopt -u lastpipe
#shopt -u lithist
#shopt -u mailwarn
#shopt -s no_empty_cmd_completion
#shopt -s nocaseglob
#shopt -s nocasematch
#shopt -u nullglob
#shopt -s progcomp
#shopt -s promptvars
#shopt -u restricted_shell
#shopt -u shift_verbose
#shopt -s sourcepath
#shopt -u xpg_echo

# Aliases
alias ..='cd ..'
alias dus="du -hd1 | sort -h"
alias ff='firefox > /dev/null 2>&1 &'
alias fh='firefox -no-remote -P "private" > /dev/null 2>&1 &'
alias git='LANGUAGE=en_US.UTF-8 git'
alias l='ls'
alias la='ls -lah --group-directories-first'
alias ll='ls -lh --group-directories-first'
alias m='mount | column -t'
alias ns='netstat -tunlap'
alias ss='sudo -E -s'
alias nossh="ssh -o UserKnownHostsFile=/dev/null -o StrictHostKeyChecking=no"
alias sdx="ll /dev | grep sd"
alias webpy="python -m SimpleHTTPServer"

# Custom env
export EDITOR=vim
export HISTCONTROL=ignoreboth
export HISTSIZE=10000
export HISTFILESIZE=$HISTSIZE
export INPUTRC=$HOME/.inputrc

# Imports
[[ -f "/etc/bash_completion" ]] && source /etc/bash_completion
[[ -r "${HOME}/.bash_local" ]] && source "${HOME}/.bash_local"

# Chainloading
[[ -f "/etc/bash_completion" ]] && source /etc/bash_completion
[[ -d "${HOME}/.rvm/bin" ]] && PATH="${PATH}:${HOME}/.rvm/bin"
[[ -s "${HOME}/.rvm/scripts/rvm" ]] && source "${HOME}/.rvm/scripts/rvm"
[[ -r "${HOME}/.bash_local" ]] && source "${HOME}/.bash_local"

if [ -x "${HOME}/.pyenv/bin/pyenv" ]
then
  export PYENV_ROOT="$HOME/.pyenv"
  export PATH="$PYENV_ROOT/bin:$PATH"
  eval "$(pyenv init -)"
  eval "$(pyenv virtualenv-init -)"
fi

# Worship the dot . Within lies beauty and ease .
# Let functions become CRUD and find ZEN .

