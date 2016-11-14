#!/bin/bash

printf "\n"
echo "-------List of Failed Log-in for today..-------"
printf "\n"

now="$(date)"
printf "Current date and time :  %s\n" "$now"
printf "\n"


## path of log file.. 
##for ubuntu system change path to '/var/log/auth.log'
LOG=/var/log/secure 


#awk '$2 ~ /user/ {print $3}' $LOG

#if [ -n "$1" ]
#then
#NEWUSER="$1"
#else
#NEWUSER="root"
#fi

echo "Failed password attempts for :"
printf "\n"

grep  -i "authentication failure" "$LOG" | awk '{ print $1" "$2" "$3" "$4" "$15" "$16 }'

#awk '$2 ~ /authentication failure/ {print $3}' $LOG

printf "\n"

