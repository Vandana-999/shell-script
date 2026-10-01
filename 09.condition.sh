#!/bin/bash

#NUM=$1

echo " Please enter Number "
read NUM
if (($NUM > 20)); then
  echo " number greater then 20 "
elif (($NUM < 20 )); then
  echo " number less then 20 "
else
  echo "Number is equal to 20 "
fi