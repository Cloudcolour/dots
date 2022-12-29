alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'

alias q=exit
alias clr=clear
alias mkdir='mkdir -pv'
alias path='echo -e ${PATH//:/\\n}'
alias ports='ss -tulanp'

alias mk=make
alias shutdown='sudo shutdown'
alias reboot='sudo reboot'

alias jc='journalctl -xe'
alias sc=systemctl
alias ssc='sudo systemctl'

dtf () {
    git --git-dir="$HOME/.dotfiles/" --work-tree="$HOME" "$@"
}

# cht.sh & fzf
cs () {
    # Retrieve the list of available commands from the server
    cmnds=$(curl -s cht.sh/:list)
    # Use fzf to present the user with a selection menu
    selected_item=$(echo "$cmnds" | fzf --preview 'curl -s cht.sh/{}' -q "$*" --exit-0)
    # Check if the user used an escape sequence
    if [ -z "$selected_item" ]; then
        return
    fi
    curl -s cht.sh/$selected_item
}


alias venv='python -m venv venv'
alias vact='source venv/bin/activate'
alias dact='deactivate'

alias pahd='pactl set-card-profile 46 output:hdmi-stereo'
alias pasp='pactl set-card-profile 46 output:analog-stereo'
