
function add_path_if_exist {
  [[ -d "$1" ]] && PATH="$1:${PATH}"
}

function load_file_if_exist {
  [[ -r "$1" ]] && source "$1"
}

add_path_if_exist "${HOME}/.bin"
load_file_if_exist "${HOME}/.bashrc"
load_file_if_exist "${HOME}/.bash_local"
load_file_if_exist "${HOME}/.rvm/scripts/rvm"
load_file_if_exist "/etc/bash_completion"
load_file_if_exist "/etc/profile.d/bash_completion.sh"
