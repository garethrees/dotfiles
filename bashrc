# ~/.bashrc
# If not running interactively, don't do anything
[ -z "$PS1" ] && return

# Environment
export EDITOR='vim'

# Source global definitions
[[ -f /etc/bashrc ]] && source /etc/bashrc
[[ -f ~/.bash_prompt ]] && source ~/.bash_prompt
[[ -f ~/.bash_aliases ]] && source ~/.bash_aliases

# Extras
[[ -f ~/.git-completion.sh ]] && source ~/.git-completion.sh
[[ -s "/Users/gareth/.rvm/scripts/rvm" ]] && source "/Users/gareth/.rvm/scripts/rvm"

# Make less more friendly for non-text input files; see lesspipe(1)
[[ -x $(which lesspipe) ]] && eval "$(SHELL=/bin/sh $(which lesspipe))"
