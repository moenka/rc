
[ -z "$PS1" ] && return; umask 022

__git_ps1 ()
{
    local b="$(git symbolic-ref HEAD 2>/dev/null)";
    if [ -n "$b" ]; then
        printf "(%s) " "${b##refs/heads/}";
    fi
}

## Prompt
PS1='${debian_chroot:+($debian_chroot)}\u@\h:\W\$ '

## Colorization
alias ls='ls --color=auto -CF'
alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'

## Shell options
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
shopt -s histappend
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

## Aliases
alias ..='cd ..'
alias battery='upower -i $(upower -e | grep BAT)'
alias diff='diff -W $(($COLUMNS - 2 ))'
alias dus='du -hd1 | sort -h'
alias ff='firefox > /dev/null 2>&1 &'
alias fh='firefox -no-remote -P "private" > /dev/null 2>&1 &'
alias git='LANGUAGE=en_US.UTF-8 git'
alias ll='ls -lah --group-directories-first'
alias m='mount | grep -vE "(proc|sys|cgroup)" | column -t'
alias myip='curl https://ipinfo.io/ip'
alias nossh='ssh -o UserKnownHostsFile=/dev/null -o StrictHostKeyChecking=no'
alias sd='ll /dev | grep sd'
alias so='sudo -E -s'
alias ss='ss -tulpn | column -t'
alias webpy='python -m SimpleHTTPServer'

## Custom env
export EDITOR=vim
export HISTCONTROL=ignoreboth
export HISTSIZE=10000
export HISTFILESIZE=$HISTSIZE
export HISTTIMEFORMAT='%d/%m/%y %T '
export INPUTRC=$HOME/.inputrc
export PYENV_ROOT="$HOME/.pyenv"

