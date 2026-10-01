#!/bin/bash

NUM1=100
#NUM2=200
NUM2=Vandana

SUM=$(($NUM1+$NUM2))

echo "Sum $SUM"

#array 
FRUITS=("Apple" "banana" "fig")
echo " All fruits ${FRUITS[@]} "
echo " First Fruits ${FRUITS[0]} "
echo " Second Fruits ${FRUITS[1]}"