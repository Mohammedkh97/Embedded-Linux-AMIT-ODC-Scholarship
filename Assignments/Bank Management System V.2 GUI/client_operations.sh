#!/bin/bash

DB_FILE="Database Bank Clients.txt"

# Ensure the database file exists
touch "$DB_FILE"

# Function to add a new client using Zenity
addNameClient() {
    clientData=$(zenity --forms --title="➕ Add Client" \
        --text="Fill in the client details:" \
        --add-entry="Client Name" \
        --add-entry="Client ID" \
        --add-entry="Account Number")

    [[ -z "$clientData" ]] && return # If canceled, exit

    name=$(echo "$clientData" | cut -d'|' -f1)
    id=$(echo "$clientData" | cut -d'|' -f2)
    accountNum=$(echo "$clientData" | cut -d'|' -f3)

    # Check for duplicate Client ID
    if grep -q " | $id | " "$DB_FILE"; then
        zenity --error --title="🚫 Error" --text="Client ID already exists!"
        return
    fi

    echo "$name | $id | $accountNum" >>"$DB_FILE"
    zenity --info --title="✅ Success" --text="Client added successfully!"
}

# Function to update client details using Zenity
updateClient() {
    client_id=$(zenity --entry --title="✏️ Update Client" --text="Enter Client ID to update:")
    [[ -z "$client_id" ]] && return

    temp_file=$(mktemp) # Use a temporary file safely
    found=0

    while IFS=" | " read -r name id account; do
        if [[ "$id" == "$client_id" ]]; then
            found=1
            new_name=$(zenity --entry --title="✏️ Update Name" --text="Enter New Name:" --entry-text="$name")
            new_account=$(zenity --entry --title="🔢 Update Account Number" --text="Enter New Account Number:" --entry-text="$account")
            echo "$new_name | $id | $new_account" >>"$temp_file"
        else
            echo "$name | $id | $account" >>"$temp_file"
        fi
    done <"$DB_FILE"

    if [[ $found -eq 1 ]]; then
        mv "$temp_file" "$DB_FILE"
        zenity --info --title="✅ Success" --text="Client updated successfully!"
    else
        zenity --error --title="🚫 Error" --text="Client ID not found!"
        rm "$temp_file"
    fi
}

# Function to delete a client using Zenity
deleteClient() {
    client_id=$(zenity --entry --title="🗑 Delete Client" --text="Enter Client ID to delete:")
    [[ -z "$client_id" ]] && return # Exit if no ID entered

    if [[ ! -s "$DB_FILE" ]]; then
        zenity --error --title="🚫 Error" --text="No client data available to delete!"
        return
    fi

    temp_file="temp.txt"
    found=0

    while IFS=" | " read -r name id account; do
        if [[ "$id" == "$client_id" ]]; then
            found=1
        else
            echo "$name | $id | $account" >>"$temp_file"
        fi
    done <"$DB_FILE"

    if [[ $found -eq 1 ]]; then
        mv "$temp_file" "$DB_FILE"
        zenity --info --title="✅ Success" --text="Client deleted successfully!"
    else
        zenity --error --title="🚫 Error" --text="Client ID not found!"
        rm "$temp_file"
    fi
}
