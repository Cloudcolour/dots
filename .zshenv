# session variables
export XDG_CACHE_HOME="$HOME/.cache"
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_BIN_HOME="$HOME/.local/bin"

# variables
export HISTFILE="$XDG_DATA_HOME/bash/history"
export INPUTRC="$XDG_CONFIG_HOME/readline/inputrc"
export LESSHISTFILE="$XDG_CACHE_HOME/lesshst"
export MAILDIR="$HOME/.mail"
export WGETRC="$XDG_CONFIG_HOME/wgetrc"

# zsh
export ZDOTDIR="$XDG_CONFIG_HOME/zsh"
export ZSH_CACHE="$XDG_CACHE_HOME/zsh"
export ZGEN_DIR="$XDG_DATA_HOME/zgenom"

# path
export PATH="$PATH:$XDG_BIN_HOME"
export PATH="$PATH:$HOME/.config/doom-emacs/bin"
export PATH="$PATH:/opt/texlive"

# pager
export PAGER=less
export LESS_TERMCAP_mb=$'\E[01;38;2;255;108;107m'
export LESS_TERMCAP_md=$'\E[01;38;2;81;175;239m'
export LESS_TERMCAP_me=$'\E[0m'
export LESS_TERMCAP_se=$'\E[0m'
export LESS_TERMCAP_so=$'\E[01;38;2;187;194;207;48;2;56;122;167m'
export LESS_TERMCAP_ue=$'\E[0m'
export LESS_TERMCAP_us=$'\E[4;38;2;81;175;239m'

