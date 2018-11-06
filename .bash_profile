
add_path_if_exist() {
  [[ -d "$1" ]] && PATH="$1:${PATH}"
}

load_file_if_exist() {
  [[ -r "$1" ]] && source "$1"
}

urlencode() {
    # urlencode <string>
    old_lc_collate=$LC_COLLATE
    LC_COLLATE=C
    
    local length="${#1}"
    for (( i = 0; i < length; i++ )); do
        local c="${1:i:1}"
        case $c in
            [a-zA-Z0-9.~_-]) printf "$c" ;;
            *) printf '%%%02X' "'$c" ;;
        esac
    done
    
    LC_COLLATE=$old_lc_collate
}

urldecode() {
    # urldecode <string>
    local url_encoded="${1//+/ }"
    printf '%b' "${url_encoded//%/\\x}"
}

load_file_if_exist "${HOME}/.bashrc"
load_file_if_exist "${HOME}/.bash_local"
load_file_if_exist "${HOME}/.rvm/scripts/rvm"
load_file_if_exist "/etc/bash_completion"
load_file_if_exist "/etc/profile.d/bash_completion.sh"
add_path_if_exist "${HOME}/.bin"
add_path_if_exist "${PYENV_ROOT}/bin"
add_path_if_exist "${HOME}/.linuxbrew/bin"

# pyenv initialization
if $(command -v pyenv &>/dev/null); then
    eval "$(pyenv init -)"
fi

# gopass completion
which gopass &>/dev/null && source <(gopass completion bash)

