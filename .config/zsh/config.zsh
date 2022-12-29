## Plugins
# fasd
export _FASD_DATA="$XDG_CACHE_HOME/fasd"

## ZSH configuration
# Treat these characters as part of a word.
WORDCHARS='_-*?[]~&.;!#$%^(){}<>'

unsetopt BRACE_CCL # Allow brace character class list expansion
setopt COMBINING_CHARS # Combine zero-length punc chars (accents) with base char
setopt RC_QUOTES # Allow 'Henry''s Garage' instead of 'Henry'\''s Garage'
setopt HASH_LIST_ALL
unsetopt CORRECT_ALL
unsetopt NOMATCH
unsetopt MAIL_WARNING # Don't print a warning message if a mail file has been accessed.
setopt IGNORE_EOF

## Jobs
setopt LONG_LIST_JOBS # List jobs in the long format by default.
setopt AUTO_RESUME # Attempt to resume existing jobs before creating a new process.
setopt NOTIFY #Report status of background jobs immediately.
unsetopt BG_NICE # Don't run all background jobs at a lower priority
unsetopt HUP # Don't kill jobs on shell exit.
unsetopt CHECK_JOBS # Don't report on jobs when shell exits.

## History
HISTFILE="XDG_CACHE_HOME/zhistory"
HISTSIZE=100000 # Max events to store in internal history.
HISTSIZE=100000 # Max events to store in history file.

setopt BANG_HIST
setopt EXTENDED_HISTORY # Include start time in history records
setopt APPEND_HISTORY # Appends history to history file on exit
setopt INC_APPEND_HISTORY # Write to the history file immediately, not when the shell exits.
setopt SHARE_HISTORY # Share history between all sessions.
setopt HIST_EXPIRE_DUPS_FIRST # Expire a duplicate event first when trimming history.
setopt HIST_IGNORE_DUPS # Do not again record an event that was just recorded.
setopt HIST_IGNORE_ALL_DUPS # Remove old events if new event is a duplicate.
setopt HIST_FIND_NO_DUPS # Do not display a previously found event.
setopt HIST_IGNORE_SPACE # Do not record an event starting with a space.
setopt HIST_REDUCE_BLANKS # Minimize unnecessary whitespace
setopt HIST_VERIFY # Do not execute immediately upon history expansion.
setopt HIST_BEEP # Beep when accessing non-existent history.

## Directories
DIRSTACKSIZE=9
unsetopt AUTO_CD # Implicit CD slows down plugins
setopt AUTO_PUSHD # Push the old directory onto the stack on cd.
setopt PUSHD_IGNORE_DUPS # Do not store duplicates in the stack.
setopt PUSHD_SILENT # Do not print the directory stack after pushd or popd.
setopt PUSHD_TO_HOME # Push to home directory when no argument is given.
setopt CDABLE_VARS # Change directory to a path stored in a variable.
setopt MULTIOS # Write to multiple descriptors.
setopt EXTENDED_GLOB # Use extended globbing syntax.
unsetopt GLOB_DOTS # Do not require a leading '.' in a filename to be matched explicitly.
unsetopt AUTO_NAME_DIRS # Don't add variable-stored paths to ~ list

# Prompt
eval "$(starship init zsh)"
