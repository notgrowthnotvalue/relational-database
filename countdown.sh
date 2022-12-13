#!/bin/bash

# Program that counts down to zero from a given argument
echo -e "\n~~ Countdown Timer ~~\n" # \n adds new lines to the beginning and end
if [[ $1 -gt 0 ]] # If argument greater than 0
then 
: '
  for (( i = $1; i>=0; i--))
  do 
    echo $i
    sleep 1
  done
'
I=$1
while [[ $I -ge 0 ]]
do 
  echo $I
  (( I-- )) # decrement by one
  sleep 1   # one second pause
done
else 
  echo Include a positive integer as the first argument.
fi