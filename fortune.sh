#!/bin/bash
# Program to tell a persons fortune

echo -e "\n~~ Fortune Teller ~~\n"

RESPONSES=("Yes" "No" "Maybe" "Outlook good" "Don't count on it" "Ask again later")
N=$(( RANDOM%6 )) # Random number range 0 to 5

GET_FORTUNE(){
  if [[ ! $1 ]] # If no arguments passed
  then 
    echo "Ask a yes or no question:"
  else 
    echo "Try again. Make sure it ends with a question mark: "
  fi
  read QUESTION
}

GET_FORTUNE
until [[ $QUESTION =~ \?$ ]]    # regular expression to check if ends with ?
do
  GET_FORTUNE again
done

echo -e "\n${RESPONSES[$N]}"
