
#!/bin/bash

echo "All variables passed as separate values: $@"   # ["om" "namaha" "shivaya"]
echo "All variables as a single string: $*"         # ["om namaha shivaya"]
echo "Number of arguments passed: $#"
echo "Script name: $0"
echo "Present working directory: $PWD"
echo "Home directory of current user: $HOME"
echo "User running this script: $USER"
echo "Process ID of this script: $$"

# Run a command in the background
sleep 60 &
echo "Process ID of last background command: $!"
 echo "To check the status of previous command is: $?"   # status codes (0 to 127) , 0=sucess , 1-127=failure
