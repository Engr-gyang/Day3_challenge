#!/bin/bash

# Function to handle errors
error_handler() {
    echo "An error occurred. Exiting the script."
    exit 1
}

# Trap errors and call the error_handler function
trap 'error_handler' ERR

# Check if the file exists
check_file_exists() {
    if [ ! -f myfile.txt ]; then
        echo "File does not exist. Exiting."
        exit 1
    else
        echo "File exists."
    fi
}

# Avoid writing to the file
avoid_write_to_file() {
    echo "Write operation avoided."  # We do not write anything to the file.
}

# Avoid reading from the file
avoid_read_from_file() {
    echo "Read operation avoided."  # We do not read from the file.
}

# Avoid deleting the file
avoid_delete_file() {
    echo "Delete operation avoided."  # We do not delete the file.
}

# Main script logic
check_file_exists
avoid_write_to_file
avoid_read_from_file
avoid_delete_file

echo "Script completed successfully."

