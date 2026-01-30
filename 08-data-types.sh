#!/bin/bash

NUM1=100
NUM2=300
SUM=$((NUM1+NUM1))

SUM=$(($NUM1+$NUM1))
echo "sum of two numbers: $SUM"

# ARRAYS

FRUITS=("Apple" "Banana" "Mango" "Watermilan")
echo "fruits are ${FRUITS[@]}"
echo "fruits are ${FRUITS[0]}"
echo "fruits are ${FRUITS[1]}"
echo "fruits are ${FRUITS[2]}"