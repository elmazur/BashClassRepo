#!/usr/bin/env bash
# guessinggame.sh

function highORlow {
# This function will determine if the guess is too high or too low.
    if [[ $guess -lt $fileNum ]]
    then
        echo "Your guess is too low."
        status=0
    elif [[ $guess -gt $fileNum ]]
    then
        echo "Your guess is too high."
        status=2
    else
        echo "You guessed correctly! Congratulations!"
        status=1
    fi
}

dirName=$(pwd)
echo "Directory is $dirName"
fileNum=0
status=0
for file in $(ls)
do
    let fileNum=$fileNum+1
done
echo "Guess how many files are in this directory."
read guess
while [[ $status -ne 1 ]]
do
    highORlow
    if [[ $status -ne 1 ]]
    then 
        echo "Guess again."
        read guess
    fi
done 

echo "There are $fileNum files in this directory"
