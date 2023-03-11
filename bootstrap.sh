#!/bin/bash -e

SCRIPTNAME=$0
die() {
	echo "$SCRIPTNAME: $1"
	exit 1
}

declare -a options=(
    "client/android"
    "service/common service/identity"
    "service"
    "web/browser"
)

echo "Select a folder to sparse checkout:"
for i in "${!options[@]}"; do
    printf "%s) %s\n" "$((i+1))" "${options[$i]}"
done
while true; do
    read -rp "Enter selection: " selection
    if [[ $selection =~ ^[0-9]+$ ]] && (( selection >= 1 && selection <= ${#options[@]} )); then
        FOLDERS="${options[$((selection-1))]}"
        break
    else
        echo "Invalid selection. Try again."
    fi
done

echo "Initializing sparse checkout"
git sparse-checkout init --cone

echo "Setting sparse checkout to: $FOLDERS"
git sparse-checkout set $FOLDERS

echo "Sparse checkout complete"
