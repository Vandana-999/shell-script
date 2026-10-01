#!/bin/bash

StartTime=$(date +%s)

echo "Current Time $StartTime"

sleep 10

END_TIME=$(date +%s)
Total_time=$(($END_TIME-$StartTime))

Echo " difference $Total_Time"