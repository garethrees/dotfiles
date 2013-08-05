# ~/.bashrc
# If not running interactively, don't do anything
[ -z "$PS1" ] && return

# Source global definitions
[[ -f /etc/bashrc ]] && source /etc/bashrc
[[ -f ~/.bash_prompt ]] && source ~/.bash_prompt

# Make less more friendly for non-text input files; see lesspipe(1)
[[ -x $(which lesspipe) ]] && eval "$(SHELL=/bin/sh $(which lesspipe))"

# Alias definitions
if [ -f ~/.bash_aliases ]; then
  source ~/.bash_aliases
fi
