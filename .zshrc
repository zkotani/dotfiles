# ################################# #
# Zyphlen Kotani's Oh My Zsh Config #
# ################################# #

# TODO: expand & configure plugins
# TODO: optimize general configurations
#           & ensure commented properly
# TODO: theme optimization

# ############## #
# Plugins Config #
# ############## #

plugins=(
    aliases
    colorize
    gitfast
    magic-enter
    man
    safe-paste
    snap
    ssh
    sudo
    ubuntu
    ufw
    wd
)

# ################## #
# Magic Enter Config #
# ################## #
MAGIC_ENTER_GIT_COMMAND='git add -A'
MAGIC_ENTER_OTHER_COMMAND='tree'

# ########################## #
# General User Configuration #
# ########################## #

export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="klownox"
CASE_SENSITIVE="true"
zstyle ':omz:update' mode auto      # update automatically without asking
zstyle ':omz:update' frequency 13
DISABLE_MAGIC_FUNCTIONS="true"
ENABLE_CORRECTION="true"
COMPLETION_WAITING_DOTS="true"

# DISABLE_UNTRACKED_FILES_DIRTY="true"

HIST_STAMPS="yyyy-mm-dd"
export MANPATH="/usr/local/man:$MANPATH"
export LANG=en_CA.UTF-8
export ARCHFLAGS="-arch $(uname -m)"

# Ensure vim is editor.
# TODO: evaluate switching to nvim locally?
if [[ -n $SSH_CONNECTION ]]; then
    export EDITOR='vim'
else
    export EDITOR='vim'
fi

# Aliases stored in separate file
#   for ease of access in different shells.
# TODO: clean up aliases file & document
source "$HOME/.aliases"

source $ZSH/oh-my-zsh.sh
