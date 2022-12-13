#!/bin/bash

# Bingo Number Generator

echo -e "\n~~ Bingo Number Generator ~~\n"

NUMBER=$(( RANDOM%75 +1 ))  # Random variable's range 0 to 74 plus 1 (0 to 75)
TEXT="The next number is, "


if (( NUMBER <= 15 ))     # Note the round parentheses  
then 
  echo $TEXT B:$NUMBER
elif [[ $NUMBER -le 30 ]] # Note the square brackets
then 
  echo $TEXT I:$NUMBER
elif (( NUMBER < 46 ))
then 
  echo $TEXT N:$NUMBER
elif [[ $NUMBER -lt 61 ]]
then 
  echo $TEXT G:$NUMBER
else
  echo $TEXT O:$NUMBER
fi