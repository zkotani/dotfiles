zstyle ':completion:*' completer _complete _ignored
zstyle :compinstall filename '/home/zyphlen/.zshrc'

autoload -Uz compinit
compinit

HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=5000

setopt autocd extendedglob nomatch notify
unsetopt beep
bindkey -v

. "$HOME/.aliases"
