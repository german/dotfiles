# Aliases
alias gd='git diff --color'
alias st='git status'
alias glgg='git log --graph --oneline'
compdef _git glgg=git-log
alias gl="git log --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit --date=relative"
