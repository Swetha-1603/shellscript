#!/bin/bash

echo "All variables: $@"
echo "Number of variables passed :: $#"
echo "script name :: $0"
echo "Current working directory: $PWD"
echo "Home directory of current user: $HOME"
echo "Which user is running this script: $USER"
echo "hostname : $HOSTNAME"
echo "Process ID of the current shell script: $$"
sleep 60 &
echo "process ID of last bgrd command : $!"
echo "exit status: $?"