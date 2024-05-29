parse_git_branch() {
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}
cat ~/.cache/wal/sequences
# Activate vi mode
set -o vi

# Some useful aliasis
alias msedge='microsoft-edge-stable'
alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias ll="ls --color=auto -al"
alias by="betty"
alias vim="nvim"


# Change cmd prompt
PS1="\[\e[0;32m\]\u@\h \[\e[0m\]\w \[\e[1;31m\]$(parse_git_branch)» \[\e[0m\]"

# Some cool neofetch
~/.config/ufetch.sh

# some env var for my alx servers
web01="54.237.6.218"
web02="52.91.182.139"
lb01="54.173.153.187"

#some cool key-bindgs
bind -x '"\C-j":"~/.config/bash/scripts/tmux-fzf"'
bind -x '"\C-l":"~/.config/bash/scripts/sessions-jump"'
bind -x '"\C-y":"~/.config/bash/scripts/change-wallpaper"'
