# Prevent user path overflow
set -e fish_user_paths

# Add local binaries to path
set -p fish_user_paths $HOME/.local/bin

# Supresses intro message
set fish_greeting

# Set default terminal editor
set EDITOR nvim

# Use Vi mode
set fish_user_key_bindings fish_vi_key_bindings

# Aliases
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias .....='cd ../../../..'

alias e=$EDITOR

alias ls='exa --color=always --group-directories-first'
alias la='exa --all --color=always --group-directories-first'
alias ll='exa --long --all --git --color=always --group-directories-first'

alias cp='cp -i'
alias mv='mv -i'
alias rm='rm -i'

alias add='git add'
alias addall='git add . && git status --short'
alias branch='git branch'
alias checkout='git checkout'
alias clone='git clone'
alias commit='git commit -m'
alias fetch='git fetch'
alias pull='git pull'
alias push='git push'
alias info='git status --short'

# Start Starship
starship init fish | source

