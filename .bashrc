# If not running interactively, don't do anything
case $- in
    *i*) ;;
      *) return;;
esac

# don't put duplicate lines or lines starting with space in the history.
# See bash(1) for more options
HISTCONTROL=ignoreboth

# append to the history file, don't overwrite it
shopt -s histappend

# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
HISTSIZE=1000
HISTFILESIZE=2000

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

# make less more friendly for non-text input files, see lesspipe(1)
[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"

# set variable identifying the chroot you work in (used in the prompt below)
if [ -z "${debian_chroot:-}" ] && [ -r /etc/debian_chroot ]; then
    debian_chroot=$(cat /etc/debian_chroot)
fi

# enable programmable completion features (you don't need to enable
# this, if it's already enabled in /etc/bash.bashrc and /etc/profile
# sources /etc/bash.bashrc).
if ! shopt -oq posix; then
  if [ -f /usr/share/bash-completion/bash_completion ]; then
    . /usr/share/bash-completion/bash_completion
  elif [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
  fi
fi

alias termtheme='bash -c "$(wget -qO- https://git.io/vQgMr)"'

alias rm='rm -i'
alias mkdir='mkdir -p'
alias ps='ps auxf'
alias ping='ping -c 6'
alias less='less -R'
alias tree='tree -alAC --filesfirst --gitignore'
alias ll='ls -hal --color=auto'
alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias python='python3'
alias py='python3'
alias pip='pip3'
alias vi='vim'
alias cl='clear'
alias pyc='python -c'

parse_git_branch() {
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/[\1] /'
}

export PS1='\[$(tput bold)\]$(parse_git_branch)\u@\h:\[$(tput sgr0)\] \w\n\$ \[$(tput sgr0)\]'

. "$HOME/.cargo/env"

if command -v minikube &>/dev/null
then
  eval "$(minikube completion bash)"
fi
