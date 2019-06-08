#!/usr/bin/env bash
# File: guessinggame.sh
# Assignment for The Unix Workbench


echo "Welcome to my Guessing game!"

function ask {
	echo "Please enter the number of files that you think there are in the current directory:"
	read guess
    files=$(ls -1 | wc -l)
}

ask

while [[ $guess -ne $files ]]
do
	if [[ $guess -lt $files ]] 
	then
		echo "Guess too low."
	else
		echo "Guess too high."
	fi
	ask
done

echo "Congratulations! It is the correct answer and these are the files in current directory::"
echo "---" && ls -1
