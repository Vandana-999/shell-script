#!/bin/bash

StartTime=$(date +%s)

echo "Current Time $StartTime"

sleep 10

END_TIME=$(date +%s)
echo " $END_TIME"

Total_time=$(($StartTime-$END_TIME))

echo " difference $Total_time"