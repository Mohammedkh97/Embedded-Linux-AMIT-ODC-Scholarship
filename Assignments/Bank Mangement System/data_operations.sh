#!/bin/bash

DB_FILE="Database Bank Clients.txt"

# Function to save client data to a file without clearing existing content
saveClientDataToFile() {
    if [[ ! -s "$DB_FILE" ]]; then
        # If the file is empty or doesn't exist, add headers
        echo "==========================================" >"$DB_FILE"
        echo "| Name       | ID          | AccountNum        |" >>"$DB_FILE"
        echo "==========================================" >>"$DB_FILE"
    fi # fi is the end of the if statement block

    echo "Data saved successfully!"
}

# Function to print all client data
printClientData() {
    echo "=========================================="
    echo "| Name          | ID    | AccountNum     |"
    echo "=========================================="
    cat "$DB_FILE"
}
