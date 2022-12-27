# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '

dtf () {
    git --git-dir="$HOME/.dotfiles/" --work-tree="$HOME" "$@"
}

fzch () {
    curl -s cht.sh/$(curl -s cht.sh/:list | fzf --preview 'curl -s cht.sh/{}' -q "$*")
}

# gpg agent
GPG_TTY=$(tty)
export GPG_TTY

# asdf
. $HOME/.asdf/asdf.sh
. $HOME/.asdf/completions/asdf.bash

# pager
export PAGER=less
export LESS_TERMCAP_mb=$'\E[01;38;2;255;108;107m'
export LESS_TERMCAP_md=$'\E[01;38;2;81;175;239m'
export LESS_TERMCAP_me=$'\E[0m'
export LESS_TERMCAP_se=$'\E[0m'
export LESS_TERMCAP_so=$'\E[01;38;2;187;194;207;48;2;56;122;167m'
export LESS_TERMCAP_ue=$'\E[0m'
export LESS_TERMCAP_us=$'\E[4;38;2;81;175;239m'

eval "$(starship init bash)"
