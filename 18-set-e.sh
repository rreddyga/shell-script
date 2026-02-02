#!/bin/bash

set -e # this will be checking for errors, if errors it will exit

# we need to check the root user or not 
USERId=$(id -u)
LOGS_FOLDER="/var/log/shell-script"
LOGS_FILE=$LOGS_FOLDER/$0.log
#color codes
R="\e[31m]" # RED color
G="\e[32m]" # GREEN color
Y="\e[33m]" # YELLOW  color
N="\e[0m]"  # Normal color or default color

#if condition for user has previleges or not 
#like sudo if has then this script will execute other wise need to 
#run like this->sudo sh 18-set-e.sh

if [ $USERId -ne 0 ]; then
    echo "$R please run  this script  with the root user access $N" | tee -a $LOGS_FILE
    exit 1
fi

#validation function
VALIDATE()
{
    if [ $1 -ne 0 ]; then
        echo "$2... $R Failure $N " | tee -a $LOGS_FILE
        exit 1
    else
        echo "$2... $G Success $N " | tee -a $LOGS_FILE
    fi
}

#for loop to install list of provided s/w'rs 
for package in $@ #  user has to pass to script like this ->sudo sh 14-loops.sh mysql nodejs gcc
do
    #identifying the provided package/software installed or not

    dnf list installed  $package &>>LOGS_FILE
    #if condition to check the previous/above command if the code is equal to zero then it is not installed
    if [ $? -ne 0 ]; then
        echo "$package not installed, installing now"
        # install the provided package/ software and log into LOGS_FILE  folder
        dnf install $package -y &>>LOGS_FILE
        #valide the command response by using custom written VALIDAE()
        # for now I'm commenting as I used predefined command set -e
        # VALIDATE $? "$package installation"
        
    else
        echo "$package  already installed, $Y skipping now $N "
    fi
done