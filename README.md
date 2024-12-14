#This Bash script performs file operations, includes error handling for each operation.
Goal: Implement trap and exit codes to manage errors effectively.

# Should you want to try this Project, either for learning purposes or in your production invironment. The following guide will be of help to you;

Project Breakdown:

1. Understand the Goal:

The goal of this project is to create a Bash script that:

Performs file operations (like creating, reading, writing, or deleting files).

Implements error handling for each operation.

Uses trap to catch unexpected errors.

Makes use of exit codes to indicate success or failure of operations.

2. Plan the Script:Before diving into coding, let's outline the steps and file operations you will implement.

Create a file: You will create a new file or check if it exists.
Write to the file: You will try to write some content to the file.
Read from the file: You will read the content from the file.
Delete the file: You will delete the file at the end.
You will add error handling after each operation to ensure the script behaves correctly when something goes wrong.

3. Outline of the Bash Script: See my_bash_script.sh
4. Walkthrough of Key Elements:
Error Handler Function (error_handler): This function will be triggered by trap whenever an error occurs (i.e., a non-zero exit code). It will display an error message and exit the script with a status code of 1.

Trap Statement: The trap command catches errors. It listens for any command returning a non-zero exit code (signifying failure) and invokes the error_handler function.

File Operations with Error Handling:

touch: Tries to create a new file. If it fails, it prints an error message and exits.

echo ... > file: Tries to write content to the file. If it fails, it prints an error message and exits.

cat: Tries to read the content of the file. If it fails, it prints an error message and exits.

rm: Tries to remove the file. If it fails, it prints an error message and exits.

Exit Codes: Each operation checks if the command succeeded or failed using || { echo "Error"; exit 1; }. If any operation fails, the script stops and returns an exit code 1.

5. Step-by-Step Implementation:
Create a new file:

Open a terminal.
Create a new Bash file: Example;

bash

touch my_bash_script.sh
Add Shebang:
At the top of your script, add the shebang line to specify the script's interpreter

Call the functions:
Call each function in order: create_file, write_to_file, read_from_file, and delete_file.

bash
create_file
write_to_file
read_from_file
delete_file
Finalize the script:

Add a success message at the end of the script if everything runs without issues. Example;
bash
echo "Script completed successfully."

6. Run the Script:
Make the script executable:

bash
chmod +x my_bash_script.sh

Execute the script:

bash
./my_bash_script.sh
7. Additional Considerations:
Exit Codes: In the script, we used exit 1 to signify errors. Exit codes can be customized based on the operation (e.g., exit 2 for a different type of error).
Advanced Error Handling: If you need to handle specific errors more effectively, you can define different traps or use set -e to exit immediately on any command failure.

8. Testing:
To ensure the error handling works:
Modify the script to make the file creation fail (e.g., remove write permissions on the directory) and see if the error handler is triggered.

Conclusion:
You’ve created a Bash script that performs file operations and includes error handling using trap, exit codes, and error messages. This script will help you understand how to effectively manage errors in a Bash environment.

SECOND SCRIPT;
In the second script (ny_bash_script2.sh), we are going to be having a direct opposite of what we had before in the first script;

If you want a script that lacks the privileges to create, write, read, or delete a file, you can simulate this by setting file permissions in such a way that each operation fails.

However, to directly simulate this in a script without modifying system-level permissions, we can structure the script so that each operation will attempt to perform an action and fail due to lack of permissions. Here's an example script that simulates the behavior:

# Main script logic
create_file
write_to_file
read_from_file
delete_file

echo "Script completed successfully."  # This line won't be reached

Key Points:
File Creation: The script attempts to create a file using touch, but this will fail if the user does not have write permissions in the current directory.
Writing to the File: If the file was somehow created (in an allowed environment), writing will fail due to lack of write permissions on the file.
Reading the File: Reading from the file will fail if the user does not have read permissions for the file.
Deleting the File: Deletion will fail if the user lacks delete permissions.
How to Simulate Lack of Permissions:
To simulate this behavior, you can adjust the permissions of the script or the file it interacts with to restrict access. For example:

bash
Copy code
chmod 000 myfile.txt   # No permissions to read, write, or execute
You can also use a directory where the user doesn't have write access to make the script fail at creating a file. For example:

bash
Copy code
chmod 000 /path/to/directory  # No write permissions in the directory
If you want to test the script in a real scenario where these actions fail, make sure the script is executed by a user without proper file permissions.




