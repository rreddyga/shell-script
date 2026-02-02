#!/bin/bash

# we need to check the root user or not 

USERId=$(id -u)
LOGS_FOLDER="/var/log/shell-script"
LOGS_FILE=$LOGS_FOLDER/$0.log
R="\e[31m]"
G="\e[32m]"
Y="\e[33m]"
N="\e[0m]"

if [ $USERId -ne 0 ]; then
    echo "$R please run  this script  with the root user access $N" | tee -a $LOGS_FILE
    exit 1
fi
VALIDATE()
{
    if [ $1 -ne 0 ]; then
        echo "$2... $R Failure $N " | tee -a $LOGS_FILE
        exit 1
    else
        echo "$2... $G Success $N " | tee -a $LOGS_FILE
    fi
}

for package in $@ # sudo sh 14-loops.sh mysql nodejs gcc
do
    dnf list installed  $package &>>LOGS_FILE
    if [ $? -ne 0 ]; then
        echo "$package not installed, installing now"
        dnf install $package -y &>>LOGS_FILE
        VALIDATE $? "$package installation"
    else
        echo "$package  already installed, $Y skipping now $N "
    fi
done