# Don't offer history completion; we have fzf, C-r, and
# zsh-history-substring-search for that.
ZSH_AUTOSUGGEST_STRATEGY=(completion)
ZSH_AUTOSUGGEST_BUFFER_MAX_SIZE=30

# Expand partial paths, e.g. cd f/b/z == cd foo/bar/baz (assuming no ambiguity)
zstyle ':completion:*:paths' path-cimpletion yes

# Fix slow one-by-one character pasting when bracketed-paste-magic is on. See
# zsh-users/zsh-syntax-highlighting#295
zstyle ':bracketed-paste-magic' active-widgets '.self-*'

# Options
# setopt COMPLETE_IN_WORD # Complete from both ends of a word.
setopt PATH_DIRS # Perform path search even on command names with slashes.
setopt AUTO_MENU # Show completion menu on a successive tab press.
setopt AUTO_LIST # Automatically list choices on ambiguous completion.
# setopt AUTO_PARAM_SLASH # If completed parameter is a directory, add a trailing slash.
# setopt AUTO_PARAM_KEYS # Automatically inserted characters are replaced with following character for certain special characters
# setopt FLOW_CONTROL # Disable start/stop characters in shell editor.
unsetopt MENU_COMPLETE # Do not autoselect the first completion entry.
unsetopt COMPLETE_ALIASES # Completion for aliases
unsetopt CASE_GLOB
