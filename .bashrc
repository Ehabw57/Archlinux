parse_git_branch() {
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}
#(cat ~/.cache/wal/sequences &)
# Activate vi mode
set -o vi

# Some useful aliasis
alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias ll="ls --color=auto -al"
alias by="betty"


# Change cmd prompt
PS1="\[\e[0;32m\]\u@\h \[\e[0m\]\w \[\e[1;31m\]$(parse_git_branch)» \[\e[0m\]"

# Some cool neofetch
~/.config/ufetch.sh
