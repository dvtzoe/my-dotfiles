#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias hyprconf='nano ~/.config/hypr/hyprland.conf'
alias airpod='bluetoothctl connect 00:8A:76:4E:FB:BB'

PS1='[\u@\h \W]\$ '
