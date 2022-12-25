# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '

dtf () {
    git --git-dir="$HOME/.dotfiles/" --work-tree="$HOME" "$@"
}

# gpg agent
GPG_TTY=$(tty)
export GPG_TTY

. $HOME/.asdf/asdf.sh
. $HOME/.asdf/completions/asdf.bash

eval "$(starship init bash)"
