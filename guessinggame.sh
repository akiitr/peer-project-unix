#!/usr/bin/env bash
#File: guessinggame.sh
#Author: Anubhav

num=1
no_of_files=$(ls -ap | grep -v / | wc -l)

function guess {
        echo "Can you guess how amny files are in the current directory?"
        read input
}
guess
while [[ $input != $no_of_files ]]; do
        let num=$num+1
                if [[ $input < $no_of_files ]]; then
                                echo ""
                                echo "Guess a little higher."
                                guess
                elif [[ $input > $no_of_files ]]; then
                                echo ""
                                echo "Guess a little lower."
                                guess
		else
			echo ""
			echo "Unidetified input Enter a no!!"
			guess
                fi
done
echo "Hey! you finally guessed correctly in $num trials."
echo ""
