#!/bin/bash

echo "All args passed to the script $@"
echo "Number of variables passed to the script $#"
echo "script name $0"
echo "present working directory $PWD"
echo "who is running $USER"
echo "home directorry of current user $HOME"
echo "PID of the script $$"

sleep 10 
echo "PID of the recently executed background process $!"
echo "All args passed to the script $*"

echo "previous command status check $?"