#!/bin/bash

echo "Please enter your username:: "
read USER_NAME
echo " user name is: $USER_NAME"

echo "Please enter your password::"
read -s PASSWORD
# passwords not suppose to print in the console
echo "password is: $PASSWORD"