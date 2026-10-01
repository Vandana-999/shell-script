#!/bin/bash

USER=$(id -u)

if (($USER != 0)); then
   echo "please use root access to run the command"
   exit 1
fi

echo installing ngnix
dnf install nginx -y

if(($?==0)); then 
  echo "Installing nginx is SUCCESS"
else
  echo "Installing nginx is FAILURE "
fi

dnf install mysql11 -y

if(($?==0)); then 
  echo "Installing mysql is SUCCESS"
else
  echo "Installing mysql is FAILURE "
fi