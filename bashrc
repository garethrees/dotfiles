# ~/.bashrc
# If not running interactively, don't do anything
[ -z "$PS1" ] && return

# Environment
export EDITOR='vim'
export HOMEBREW_NO_ANALYTICS=1
export HOMEBREW_CASK_OPTS='--appdir=/Applications'

# Path
PATH="/usr/local/bin:$PATH"
PATH="$HOME/bin:$PATH"
PATH=$PATH:$HOME/.rvm/bin

# Log History
BASH_HISTORY_LOG_DIR="$HOME/.bash_history_logs/"
if [[ EUIr != 0 ]]; then
  [[ -d $BASH_HISTORY_LOG_DIR ]] || mkdir $BASH_HISTORY_LOG_DIR
  PROMPT_COMMAND='echo "$(date "+%Y-%m-%d.%H:%M:%S") $(pwd) $(history 1)" >> $BASH_HISTORY_LOG_DIR/bash_history-$(date "+%Y-%m-%d").log'
fi

# Source global definitions
[[ -f /etc/bashrc ]] && source /etc/bashrc
[[ -f ~/.bash_prompt ]] && source ~/.bash_prompt
[[ -f ~/.bash_aliases ]] && source ~/.bash_aliases

# Completion
[[ -f ~/.script/git_completion.sh ]] && source ~/.script/git_completion.sh
[[ -f ~/.script/tmuxinator.bash ]] && source ~/.script/tmuxinator.bash

# Extras
[[ -f ~/.script/man_color.sh ]] && source ~/.script/man_color.sh

if [[ -d /usr/local/var/rbenv ]]
  then
    export RBENV_ROOT=/usr/local/var/rbenv
fi

if [[ -d /usr/local/rbenv ]]
  then
    export RBENV_ROOT=/usr/local/rbenv
fi

if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

if [[ -f /usr/local/opt/chruby/share/chruby/chruby.sh ]]
  then
    source /usr/local/opt/chruby/share/chruby/chruby.sh
fi

# Make less more friendly for non-text input files; see lesspipe(1)
[[ -x $(which lesspipe) ]] && eval "$(SHELL=/bin/sh $(which lesspipe))"

# added by travis gem
[ -f /Users/gareth/.travis/travis.sh ] && source /Users/gareth/.travis/travis.sh
