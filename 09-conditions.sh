#!/bin/bash

NUMBER=$1

# -gt -> grearthan
# -lt -> lessthan
# -eq -> equal
# -ne -> not equal

if [ $NUMBER -gt 20 ]; then
    echo "Given number $NUMBER is greater than 20"
else 
    echo "Given number $NUMBER is less than 20"
fi

echo "given number is even or odd"

NUMBER1=$2

if [ $((NUMBER1 % 2)) -eq 0 ]; then
    echo "given number is Even : $NUMBER1"
else
    echo "given number is Odd  : $NUMBER1"
fi


