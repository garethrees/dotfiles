# ~/.bashrc
# If not running interactively, don't do anything
[ -z "$PS1" ] && return

# Environment
export EDITOR='vim'
PATH="/usr/local/bin:$PATH"
PATH=$PATH:$HOME/.rvm/bin

# Source global definitions
[[ -f /etc/bashrc ]] && source /etc/bashrc
[[ -f ~/.bash_prompt ]] && source ~/.bash_prompt
[[ -f ~/.bash_aliases ]] && source ~/.bash_aliases

# Completion
[[ -f ~/.git_completion.sh ]] && source ~/.git_completion.sh
[[ -f ~/.script/tmuxinator.bash ]] && source ~/.script/tmuxinator.bash

# Extras
export RBENV_ROOT=/usr/local/var/rbenv
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

# Make less more friendly for non-text input files; see lesspipe(1)
[[ -x $(which lesspipe) ]] && eval "$(SHELL=/bin/sh $(which lesspipe))"
