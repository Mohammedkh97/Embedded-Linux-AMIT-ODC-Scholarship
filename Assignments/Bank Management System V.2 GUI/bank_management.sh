#!/bin/bash

# Source the function files
source client_operations.sh
source data_operations.sh

# Main menu function
mainMenu() {
    while true; do
        # Zenity is a GUI dialog utility for displaying dialog boxes from shell scripts or the command line.
        choice=$(zenity --list --title="🏦 Bank Management System" \
            --width=700 --height=750 \
            --text="Select an action from the list below:" \
            --column="Action" \
            --column="Icon" \
            "➕ Add Client" "list-add" \
            "✏️ Update Client" "edit" \
            "❌ Delete Client" "edit-delete" \
            "📜 Print Client Data" "text-x-generic" \
            "💾 Save Client Data to File" "document-save" \
            "🚪 Exit" "application-exit" \
            --hide-column=2 --print-column=1)

        # If the user closes the dialog, choice will be empty
        if [[ -z "$choice" ]]; then
            zenity --question --title="Exit Confirmation" --text="Are you sure you want to exit?" --width=300
            if [[ $? -eq 0 ]]; then
                exit 0
            fi
            continue # Return to menu if the user cancels exit
        fi

        case $choice in
        "➕ Add Client") addNameClient ;;  # function from client_operations.sh
        "✏️ Update Client") updateClient ;;  # function from client_operations.sh
        "❌ Delete Client") deleteClient ;;     # function from client_operations.sh
        "📜 Print Client Data") printClientData ;;          # function from data_operations.sh
        "💾 Save Client Data to File") saveClientDataToFile ;; #  function from data_operations.sh
        "🚪 Exit")
            zenity --question --title="Exit Confirmation" --text="Are you sure you want to exit?" --width=600
            if [[ $? -eq 0 ]]; then
                exit 0
            fi
            ;;
        *) zenity --error --title="Error" --text="Invalid option, try again!" ;;
        esac
    done
}

# Run the menu
mainMenu
