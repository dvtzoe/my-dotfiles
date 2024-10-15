playerctl metadata -F -f '{{playerName}};{{title}};{{artist}};{{status}};{{mpris:length}};{{mpris:artUrl}}' | while read -r line; do
    IFS=';' read -ra line <<< "$line"
    result=$(echo "${line[1]}" | awk -v s="ぬぬぬぬぬぬぬぬぬぬぬぬぬぬぬぬぬぬぬぬぬぬぬぬぬぬぬぬぬぬぬぬぬぬぬぬぬぬぬぬぬぬぬぬぬぬぬぬぬぬぬぬぬぬぬぬぬぬぬぬぬぬぬぬぬぬぬ" -v r="ぬ^67" '{gsub(s, r); print}' | awk '{gsub(/【[^】]*】/, ""); gsub(/（[^）]*）/, ""); gsub(/\[[^]]*\]/, ""); gsub(/\([^)]*\)/, ""); print}' | awk -v len="64" '{print substr($0, 1, len)}')
    eww update playing_img="${line[5]:7}"
    if [ "${line[3]}" == "Playing" ]; then
        eww update is_playing=false
    else
        eww update is_playing=true
    fi
    echo $result
done
