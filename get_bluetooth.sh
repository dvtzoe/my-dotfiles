readarray -t devices <<<"$(bluetoothctl devices)"
result = ""
for i in "${devices[@]}"; do
    IFS=' ' read -ra array <<< $i
    temp=""
    for j in "${array[@]:2}"; do
        temp+=$j
        temp+=" "
    done
    result+="${temp:0:-1}"
    result+=", "
done
echo "${result:0:-2}"