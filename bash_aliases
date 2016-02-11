alias ..='cd ..'
alias be='bundle exec'
alias df='df -kh'
alias du='du -kh'
alias grep='grep --color=auto'
alias g='grep'
alias h='history'
alias j='jobs'
alias l='less'
alias l1='ls -A1'
alias la='ls -AlhG'
alias less='less -R'
alias ll='ls -lhG'
alias ls='ls -G'
alias latr='ls -altr'
alias openports='sudo lsof -i -P | grep -i "listen"'
alias tree='tree -aC'
alias untar='tar -zxvf'
alias v='vagrant'

for method in GET HEAD POST PUT DELETE TRACE OPTIONS; do
  alias "$method"="lwp-request -m '$method'"
done
