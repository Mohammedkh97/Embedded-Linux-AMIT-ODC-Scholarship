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
    client_id=$(zenity --entry --title="✏️ Update Client" --text="Enter Client ID or Name to update:")
    [[ -z "$client_id" ]] && return

    temp_file=$(mktemp) # Use a temporary file safely
    found=0

    while IFS="|" read -r name id account; do
        # Trim spaces
        name=$(echo "$name" | xargs)
        id=$(echo "$id" | xargs)
        account=$(echo "$account" | xargs)

        # Check by ID or Name
        if [[ "$id" == "$client_id" || "$name" == "$client_id" ]]; then
            found=1
            new_name=$(zenity --entry --title="✏️ Update Name" --text="Enter New Name:" --entry-text="$name")
            new_id=$(zenity --entry --title="🆔 Update ID" --text="Enter New ID:" --entry-text="$id")
            new_account=$(zenity --entry --title="🔢 Update Account Number" --text="Enter New Account Number:" --entry-text="$account")
            echo "$new_name | $new_id | $new_account" >>"$temp_file"
        else
            echo "$name | $id | $account" >>"$temp_file"
        fi
    done <"$DB_FILE"

    if [[ $found -eq 1 ]]; then
        mv "$temp_file" "$DB_FILE"
        zenity --info --title="✅ Success" --text="Client updated successfully!"
    else
        zenity --error --title="🚫 Error" --text="Client ID or Name not found!"
        rm "$temp_file"
    fi
}

# Function to delete a client using Zenity
deleteClient() {
    client_id=$(zenity --entry --title="🗑 Delete Client" --text="Enter Client ID or Name to delete:")
    [[ -z "$client_id" ]] && return

    temp_file=$(mktemp)
    found=0

    while IFS="|" read -r name id account; do
        name=$(echo "$name" | xargs)
        id=$(echo "$id" | xargs)
        account=$(echo "$account" | xargs)

        if [[ "$id" == "$client_id" || "$name" == "$client_id" ]]; then
            found=1
        else
            echo "$name | $id | $account" >>"$temp_file"
        fi
    done <"$DB_FILE"

    if [[ $found -eq 1 ]]; then
        mv "$temp_file" "$DB_FILE"
        zenity --info --title="✅ Success" --text="Client deleted successfully!"
    else
        zenity --error --title="🚫 Error" --text="Client ID or Name not found!"
        rm "$temp_file"
    fi
}
