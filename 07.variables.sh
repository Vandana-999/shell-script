#!/bin/bash

echo "All variables passed $@"
echo " Number of variables passed $# "
echo "Script name : $0 "
echo " Present working directory : $PWD "
echo "Who is running : $USER "
echo "Home directory of current user $HOME"
sleep 100 &
echo " PID for recently executed backgorund command : $!" 
