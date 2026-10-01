#!/bin/bash

USER=$(id -u)

if (($USER != 0)); then
   echo "please use root access to run the command"
   exit 1
fi

echo installing ngnix
dnf intsall ngnix -y