# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="jreese"


# Set some usfuel aliases
alias cdbnb="cd ~/Repos/AirBnB_clone/"
alias testo="python3 -m unittest discover tests"
alias zshconfig="vim ~/.zshrc"
alias ohmyzsh="vim  ~/.oh-my-zsh"
# Import colorscheme from 'wal' asynchronously
# ( ) # Hide shell job control messages.
cat ~/.cache/wal/sequences

# Uncomment the following line to use case-sensitive completion.
CASE_SENSITIVE="false"

# Uncomment the following line to use hyphen-insensitive completion.
HYPHEN_INSENSITIVE="false"

# Uncomment one of the following lines to change the auto-update behavior
zstyle ':omz:update' mode disabled  # disable automatic updates
# zstyle ':omz:update' mode auto      # update automatically without asking
# zstyle ':omz:update' mode reminder  # just remind me to update when it's time

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to enable command auto-correction.
ENABLE_CORRECTION="flase"

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git)

# My configs
source $ZSH/oh-my-zsh.sh
source ./zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
# Start some cool pfeetch
~/.config/ufetch.sh
set -o vi
