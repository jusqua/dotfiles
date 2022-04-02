# Path setup
set -e fish_user_paths
set -U fish_user_paths $HOME/.local/bin $fish_user_paths

# Supresses intro message
set fish_greeting

# Set terminal type
set TERM "xterm-256color"

# Set default terminal editor
set EDITOR "nvim"                

# Set default manpager
# set -x MANPAGER "nvim -c 'set ft=man' -"

