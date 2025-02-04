#!/bin/bash

# Source the function files
source client_operations.sh
source data_operations.sh

# Main menu function
mainMenu() {
    while true; do # Infinite loop to display the menu until the user exits the program (using option 6) or the script is terminated externally
        echo "==================================="
        echo "    Bank Management System"
        echo "==================================="
        echo "1. Add Client"
        echo "2. Update Client"
        echo "3. Delete Client"
        echo "4. Print Client Data"
        echo "5. Save Client Data to File"
        echo "6. Exit"
        read -p "Enter your choice: " choice

        case $choice in     # Switch case for menu options
        1) addNameClient ;; # Call the function based on user choice   ;; is used to separate the cases
        2) updateClient ;;  # Call the function based on user choice
        3) deleteClient ;;  # Call the function based on user choice
        4) printClientData ;;
        5) saveClientDataToFile ;;
        6) exit 0 ;;                # Exit the script with status code 0 (success)  (0 is the default status code for success)
        *) echo "Invalid option, try again!" ;;
        esac # End of switch case such as done in loops and break in switch case
    done
}

# Run the menu
mainMenu
