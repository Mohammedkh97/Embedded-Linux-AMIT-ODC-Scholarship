#!/bin/bash

DB_FILE="Database Bank Clients.txt"

# Function to save client data to a structured file with Zenity feedback
saveClientDataToFile() {
    if [[ ! -s "$DB_FILE" ]]; then
        echo "==========================================" >"$DB_FILE"
        echo "| Name       | ID          | AccountNum  |" >>"$DB_FILE"
        echo "==========================================" >>"$DB_FILE"
        zenity --info --title="✅ Success" --text="Database initialized and saved successfully!"
    else
        zenity --info --title="✅ Success" --text="Client data is already saved."
    fi
}

# Function to print all client data using Zenity
printClientData() {
    if [[ ! -s "$DB_FILE" ]]; then
        zenity --error --title="🚫 Error" --text="No client data available!"
        return
    fi

    zenity --text-info --title="📋 Client Data" --filename="$DB_FILE" --width=600 --height=400
}
