#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias battery='cat /sys/class/power_supply/BAT1/capacity'
alias hyprconf='nano ~/.config/hypr/hyprland.conf'
alias airpod='bluetoothctl connect 00:8A:76:4E:FB:BB'
alias kys='poweroff'

PS1='[\u@\h \W]\$ '
