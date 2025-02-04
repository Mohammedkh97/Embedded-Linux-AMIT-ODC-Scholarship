#!/bin/bash

DB_FILE="Database Bank Clients.txt"

# Function to add a new client
addNameClient() {
    echo "Enter Client Name: "
    read name
    echo "Enter Client ID: "
    read id
    echo "Enter Account Number: "
    read account

    echo "$name | $id | $account" >>"$DB_FILE"
    echo "Client added successfully!"
}

# Function to update client details
updateClient() {
    echo -p "Enter Client ID to update: " client_id    # -p is used to prompt the user for input

    temp_file="temp.txt"
    found=0

    while IFS=" | " read -r name id account; do
        // IFS is used to set the delimiter for the read command
        if [[ $id == "$client_id" ]]; then
            found=1
            echo "Enter New Name: "
            read new_name
            echo "Enter New Account Number: "
            read new_account
            echo "$new_name | $id | $new_account" >>"$temp_file"
        else
            echo "$name | $id | $account" >>"$temp_file"
        fi
    done <"$DB_FILE"

    if [[ $found -eq 1 ]]; then
        mv "$temp_file" "$DB_FILE"
        echo "Client updated successfully!"
    else
        echo "Client ID not found!"
        rm "$temp_file"
    fi
}

# Function to delete a client
deleteClient() {
    echo "Enter Client ID to delete: "
    read client_id
    temp_file="temp.txt"
    found=0

    while IFS=" | " read -r name id account; do
        if [[ $id == "$client_id" ]]; then
            found=1
            echo "Client deleted successfully!"
        else
            echo "$name | $id | $account" >>"$temp_file"
        fi
    done <"$DB_FILE"

    if [[ $found -eq 1 ]]; then
        mv "$temp_file" "$DB_FILE"
    else
        echo "Client ID not found!"
        rm "$temp_file"
    fi
}
