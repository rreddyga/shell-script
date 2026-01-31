#!/bin/bash

NUM1=100
NUM2=300
SUM=$((NUM1+NUM1))

SUM=$(($NUM1+$NUM1))
echo "sum of two numbers: $SUM"

# ARRAYS

FRUITS=("Apple" "Banana" "Mango" "Watermilan")
echo "All Fruits are  : ${FRUITS[@]}"
echo "First Fruits is : ${FRUITS[0]}"
echo "Second Fruit is : ${FRUITS[1]}"
echo "Third Fruit is  : ${FRUITS[2]}"
echo "Fourth Fruit is : ${FRUITS[3]}"