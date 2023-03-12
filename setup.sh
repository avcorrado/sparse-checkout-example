#!/bin/bash

# Source folder options from file
source "$(dirname "$0")/setup.cfg"

# Append default options to the array
options+=("*All (revert to all file/folders)" "*Quit (quit this process)")

# Display options menu
printf '\n%*s\n' "${COLUMNS:-$(tput cols)}" '' | tr ' ' -
echo "Select a folder to sparse checkout:\n"
for i in "${!options[@]}"; do
    printf "%s) %s\n" "$((i+1))" "${options[$i]}"
done
printf '\n%*s\n' "${COLUMNS:-$(tput cols)}" '' | tr ' ' -
echo

while true; do
    read -rp "Enter selection: " selection
    echo
    if [[ $selection =~ ^[0-9]+$ ]] && (( selection >= 1 && selection <= ${#options[@]} )); then
        if [[ ${options[$((selection-1))]} == "*Quit (quit this process)" ]]; then
            echo "Quitting..."
            exit 0
        elif [[ ${options[$((selection-1))]} == "*All (revert to all file/folders)" ]]; then
            echo "Initializing sparse checkout"
            git sparse-checkout init --cone
            echo "\nAll files/folders checked out, sparse checkout disabled"
            echo "\nSuccess!"
            echo "\n* Run the command again if you want to enable sparse checkout\n"
            git sparse-checkout disable
            break
        else
            FOLDERS=("${options[$((selection-1))]}")
            echo "Initializing sparse checkout"
            git sparse-checkout init --cone
            echo "\nGit sparse checking out: '${FOLDERS[*]}'"
            echo "\nSuccess!"
            echo "\n* Run the command again if you want to switch folders, or revert to '*All'"
            git sparse-checkout set ${FOLDERS[*]} ${persist[*]}
            break
        fi
    else
        echo "Invalid selection. Try again."
    fi
done
