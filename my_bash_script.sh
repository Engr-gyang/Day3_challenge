#!/bin/bash

# Function to handle errors
error_handler() {
    echo "An error occurred. Exiting the script."
    exit 1
}

# Trap errors and call the error_handler function
trap 'error_handler' ERR

# Create a file
create_file() {
    touch myfile.txt || { echo "Failed to create file."; exit 1; }
    echo "File created successfully."
}

# Write to the file
write_to_file() {
    echo "Hello, World!" > myfile.txt || { echo "Failed to write to the file."; exit 1; }
    echo "Data written to file."
}

# Read from the file
read_from_file() {
    cat myfile.txt || { echo "Failed to read the file."; exit 1; }
}

# Delete the file
delete_file() {
    rm myfile.txt || { echo "Failed to delete the file."; exit 1; }
    echo "File deleted."
}

# Main script logic
create_file
write_to_file
read_from_file
delete_file

echo "Script completed successfully."
