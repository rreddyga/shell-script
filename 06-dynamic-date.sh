#!/bin/bash

TIMESTAMP= $(date +%s)

echo "Script executed at : $TIMESTAMP"

#script execution time taken in the seconds

START_TIME=$(date +%s)

sleep 10

END_TIME=$(date +%s)
TOTAL_TIME=$((END_TIME-START_TIME))
echo "Total time taken to execute the script : $TOTAL_TIME"


#another approach

echo "another approach----------"
START_TIME1=$(date +%s)

echo "Script executed at: $START_TIME1"

sleep 10

END_TIME1=$(date +%s)
TOTAL_TIME1=$(($END_TIME1-$START_TIME1))

echo "Script executed in: $TOTAL_TIME1 seconds"