source $ZDOTDIR/config.zsh

if [ ! -d "$ZGEN_DIR" ]; then
    echo "Installing jandamm/zgenom"
    git clone https://github.com/jandamm/zgenom "$ZGEN_DIR"
fi
source $ZGEN_DIR/zgenom.zsh

# Check for plugin and zgenom updates every 7 days
# This does not increase startup time.
zgenom autoupdate

if ! zgenom saved; then
    echo "Initializing zgenom"
    rm -f $ZDOTDIR/*.zwc(N) \
          $XDG_CACHE_HOME/zsh/*(N) \
          $ZGEN_INIT.zwc

    # NOTE Be extra careful about plugin load order, or subtle breakage can
    #   emerge. This is the best order Hlissner has sussed out for these plugins.
    zgenom load junegunn/fzf shell
    zgenom load zdharma-continuum/fast-syntax-highlighting
    zgenom load zsh-users/zsh-completions src
    zgenom load zsh-users/zsh-autosuggestions
    zgenom load zsh-users/zsh-history-substring-search
    zgenom load zsh-users/zsh-syntax-highlighting

    zgenom save
    zgenom compile $ZDOTDIR
fi

## Bootstrap interactive sessions
if [[ -t 1 ]]; then
    source $ZDOTDIR/completion.zsh
    source $ZDOTDIR/aliases.zsh
    
    autoload -Uz compinit && compinit -u -d $ZSH_CACHE/zcompdump
fi

