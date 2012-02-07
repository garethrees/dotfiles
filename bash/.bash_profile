[[ -s "/Users/gareth/.rvm/scripts/rvm" ]] && source "/Users/gareth/.rvm/scripts/rvm"  # This loads RVM into a shell session.

parse_git_branch() {
 git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
}

export PS1="\u:\W \$(parse_git_branch)$ "

alias la="ls -A"
alias ll="ls -Al"
