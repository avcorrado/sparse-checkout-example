#!/bin/bash -e

SCRIPTNAME=$0
die() {
	echo "$SCRIPTNAME: $1"
	exit 1
}

options=(
    '{"name": "client/android", "folders": "client/android"}'
    '{"name": "service/common service/identity", "folders": "service/common service/identity"}'
    '{"name": "service", "folders": "service"}'
    '{"name": "web/browser", "folders": "web/browser"}'
)

declare -A optionMap=()
for ((i=0; i<${#options[@]}; i++)); do
    name=$(echo "${options[i]}" | grep -o "\"name\": \"[^\"]*\"" | cut -d'"' -f4)
    optionMap["$((i+1))"]="${options[i]}"
    echo "$((i+1))) $name"
done

while true; do
    read -n1 -rp $'\nSelect a folder to sparse checkout: ' opt
    echo
    if [[ -z "${optionMap[$opt]}" ]]; then
        echo "Invalid option"
    else
        break
    fi
done

FOLDERS=$(echo "${optionMap[$opt]}" | grep -o "\"folders\": \"[^\"]*\"" | cut -d'"' -f4)

echo "Initializing sparse checkout"
git sparse-checkout init --cone

echo "Setting sparse checkout to: $FOLDERS"
git sparse-checkout set $FOLDERS

echo "Sparse checkout complete"
