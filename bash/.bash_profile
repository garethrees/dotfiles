# Load RVM into a shell session
[[ -s "/Users/gareth/.rvm/scripts/rvm" ]] && source "/Users/gareth/.rvm/scripts/rvm"

# Git Autocomplete
source ~/.git-completion.bash

# Current git branch
parse_git_branch() {
 git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
}

# Set prompt
export PS1="\u:\W \$(parse_git_branch)$ "

# Aliases
alias ..="cd .."
alias df='df -kh'
alias du='du -kh'
alias grep='grep --color=auto'
alias h='history'
alias l='ls -A1'
alias la="ls -AlhG"
alias ll="ls -lhG"
alias ls="ls -G"
alias openports='sudo lsof -i -P | grep -i "listen"'
alias tree="tree -a"
