#!/bin/bash

# we need to check the root user or not 

USERId=$(id -u)

if [ $USERId -ne 0 ]; then
    echo "please run  this script  with the root user access"
    exit 1
fi
echo "installing nginx "
dnf install nginx -y

if [ $? -ne 0]; then
 echo "Installing nginx... Failure"
 exit 1
else
    echo "Installing nginx... Success"