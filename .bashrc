#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias spt='spotify_player'
alias sptd='spotify_player --daemon'

XDG_CONFIG_HOME=/home/jan/.config
PATH=$PATH:/home/jan/.cargo/bin

export SUDO_EDITOR="nvim"
export EDITOR="nvim"
export WALLPAPER_HOME=/home/jan/wallpapers/
export WALLPAPER=$(cat ~/wallpapers/current/selected)

source ~/.bash-prompt.sh
