#!/bin/bash

# we need to check the root user or not 

USERId=$(id -u)
LOGS_FOLDER="/var/log/shell-script"
LOGS_FILE=$LOGS_FOLDER/$0.log

if [ $USERId -ne 0 ]; then
    echo "please run  this script  with the root user access" | tee -a $LOGS_FILE
    exit 1
fi
VALIDATE()
{
    if [ $1 -ne 0 ]; then
        echo "$2... Failure" | tee -a $LOGS_FILE
        exit 1
    else
        echo "$2... Success" | tee -a $LOGS_FILE
    fi
}

for package in $@ # sudo sh 14-loops.sh mysql nodejs gcc
do
    dnf install $package -y &>>LOGS_FILE
    VALIDATE $? "$package installation"
done