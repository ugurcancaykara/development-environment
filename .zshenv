### XDG ###

export XDG_CACHE_HOME=${XDG_CACHE_HOME:="$HOME/.cache"}
export XDG_CONFIG_HOME=${XDG_CONFIG_HOME:="$HOME/.config"}


### General ###

export SCRIPT_DIR="$HOME/.local/scripts"

if command -v "nvim" >/dev/null 2>&1; then
    export EDITOR="nvim"
elif command -v "vim" >/dev/null 2>&1; then
    export EDITOR="vim"
else
    export EDITOR="vi"
fi


# Color for manpages in less makes manpages a little easier to read
export LESS='-iSrsMF'
export LESS_TERMCAP_mb=$'\E[01;32m'
export LESS_TERMCAP_md=$'\E[01;32m'
export LESS_TERMCAP_me=$'\E[0m'
export LESS_TERMCAP_se=$'\E[0m'
export LESS_TERMCAP_so=$'\E[01;44;30m'
export LESS_TERMCAP_ue=$'\E[0m'
export LESS_TERMCAP_us=$'\E[01;31m'


### FZF ###
export FZF_DEFAULT_OPTS="\
--color="hl:green,gutter:-1,hl+:green,info:gray,prompt:blue,pointer:blue,marker:blue,spinner:blue,header:gray" \
--no-bold \
--preview-window border-sharp" 
