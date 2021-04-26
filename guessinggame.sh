#!/usr/bin/env bash
# File: guessinggame.sh

total_number=$(ls | wc -l)
function checkifitmatches {
if [ $# -lt 2 ]
  then
    echo 0
elif [[ $1 -eq $2 ]]; then
   echo 1
  else
    echo 0
    fi
}
function upordown {

    if [[ $# -lt 2 ]] || ! [[ "$1" =~ ^[-]*[0-9]+$ ]];
    then echo "Please enter a number or enter q to quit the program. Argument cannot be empty or non-numeric"
    elif [[ $1 -lt 0 ]]; then
    echo "Please enter a natural number. Argument cannot be a negative number or enter q to quit the program:"
    elif [[ $1 -lt $2 ]];then
    echo "Your guess is low. Try again or enter q to quit the program: "
    elif [[ $1 -gt $2 ]];then
    echo "Your guess is high. Try again or enter q to quit the program:"
    fi
}

echo "Guess how many files are in this directory:"
read response
while [[ $(checkifitmatches $response $total_number) -eq 0 ]] ; do
  if [[ $response = "q" ]]; then
    break
    fi
  upordown $response $total_number
  read response

done

if [[  $response != "q" ]]; then
    echo "Bingo! The right answer is $total_number."
fi




