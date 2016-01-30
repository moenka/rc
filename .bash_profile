export PATH=$HOME/.bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/usr/local/sbin

[[ -f "${HOME}/.bashrc" ]] && source "${HOME}/.bashrc"
[[ -d "${HOME}/.bin" ]] && PATH="${HOME}/.bin:${PATH}"
[[ -d "${HOME}/.rvm/bin" ]] && PATH="${PATH}:${HOME}/.rvm/bin"
[[ -s "${HOME}/.rvm/scripts/rvm" ]] && source "${HOME}/.rvm/scripts/rvm"
[[ -f "/etc/bash_completion" ]] && source /etc/bash_completion
[[ -r "${HOME}/.bash_local" ]] && source "${HOME}/.bash_local"
export GOPATH=$HOME/Forge/go

if [ -x "${HOME}/.pyenv/bin/pyenv" ]
then
  export PYENV_ROOT="$HOME/.pyenv"
  export PATH="$PYENV_ROOT/bin:$PATH"
  eval "$(pyenv init -)"
  eval "$(pyenv virtualenv-init -)"
fi
