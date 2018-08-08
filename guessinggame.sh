#!/usr/bin/env bash
# File: guessinggame.sh

echo "How many files are in the current directory?"

col=$(ls -l | wc -l)
exitFlag=0

function check {
	if [[ $1 -gt $col ]]
	then
		echo "Your guess is too high"
	elif [[ $1 -eq $col ]]
	then
		echo "Congratulations!!!!!!"
		let exitFlag=1
	else
		echo "Your guess is too low"
	fi
}

while [[ $exitFlag -ne 1 ]]
do
	echo "Your guess:"
	read data
	check $data
done
