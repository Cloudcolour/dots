# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# default shell prompt
PS1='[\u@\h \W]\$ '

# asdf
. $HOME/.asdf/asdf.sh
. $HOME/.asdf/completions/asdf.bash

# core utilites
alias ls='ls --color=auto'

# dotfiles
dtf () {
    git --git-dir="$HOME/.dotfiles/" --work-tree="$HOME" "$@"
}

# cht.sh & fzf
cs () {
    curl -s cht.sh/$(curl -s cht.sh/:list | fzf --preview 'curl -s cht.sh/{}' -q "$*")
}

# gpg agent
GPG_TTY=$(tty)
export GPG_TTY

# python
alias venv='python -m venv venv'
alias vact='source venv/bin/activate'
alias dact='deactivate'

# pager
export PAGER=less
export LESS_TERMCAP_mb=$'\E[01;38;2;255;108;107m'
export LESS_TERMCAP_md=$'\E[01;38;2;81;175;239m'
export LESS_TERMCAP_me=$'\E[0m'
export LESS_TERMCAP_se=$'\E[0m'
export LESS_TERMCAP_so=$'\E[01;38;2;187;194;207;48;2;56;122;167m'
export LESS_TERMCAP_ue=$'\E[0m'
export LESS_TERMCAP_us=$'\E[4;38;2;81;175;239m'

# pulseaudio
alias pahd='pactl set-card-profile 46 output:hdmi-stereo'
alias pasp='pactl set-card-profile 46 output:analog-stereo'

# starship
eval "$(starship init bash)"
