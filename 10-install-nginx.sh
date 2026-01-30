#!/bin/bash

# we need to check the root user or not 

USERId=$(id -u)

if [ $USERID -ne 0 ]; then
    echo "please run  this script  with the root user"
    exit 1
fi
echo "installing nginx "
dnf install nginx -y