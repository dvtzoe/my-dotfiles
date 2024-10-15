#!/bin/sh

get_workspaces() {
    readarray -t workspaces <<<"$(hyprctl workspaces | grep "workspace ID" | cut -d" " -f3 | grep -o [0-9]* | xargs -n1 | sort)"
    yuck="(box"
    for i in "${workspaces[@]}"; do
        yuck+="(button :class \"button workspace-button\" :width 35 :height 35 :onclick \"hyprctl dispatch workspace $i\"\"$i\")"
    done
    yuck+=")"
    echo "$yuck"
}

handle() {
    case $1 in
        workspace*) get_workspaces;;
    esac
}

get_workspaces

socat -U - UNIX-CONNECT:$XDG_RUNTIME_DIR/hypr/$HYPRLAND_INSTANCE_SIGNATURE/.socket2.sock | while read -r line; do handle "$line"; done
