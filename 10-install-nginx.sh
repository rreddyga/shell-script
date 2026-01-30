#!/bin/bash

# we need to check the root user or not 

USER=$(id -u)

if [ USER -eq 0 ]; then
    echo "please run  this script  with the root user"
fi

echo "installing nginx "
dnf install nginx -y