#!/bin/bash

TIMESTAMP= $(date)

echo "Script executed at : $TIMESTAMP"

#script execution time taken in the seconds

START_TIME=$(date +%s)

sleep 10

END_TIME=$(date +%s)
TOTAL_TIME=$((END_TIME-START_TIME))