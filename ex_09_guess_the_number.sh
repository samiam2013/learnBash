#!/bin/bash
# Write a guessing game where the user has to guess a
#   secret number. After every guess the program tells
#   the user whether their number was too large or too 
#   small. At the end the number of tries needed should 
#   be printed. It counts only as one try if they input 
#   the same number multiple times consecutively.

# this ISN'T working

echo "Let's play guess the number!"
echo ">narrator: *quietly* this time we use a hammer for wrench"

target=$RANDOM
guesses=()
while true; do
    read -p "what's your guess?: " input
    let int_in=$(($input))
    
    # check if the guess has been made`
    if (( $guesses[$int_in] > 0 )); then
        let guesses[$int_in]=$int_in
    else 
        echo "you already guessed that !"
        continue
    fi
    
    if [ $int_in == $target ]; then
        echo "nice !"
        exit; # who's the real winner? 
    elif [ $int_in > $target ]; then 
        echo "lower!"
    elif [ $int_in < $target ]; then
        echo "higher!"
    fi

    echo "${#guesses[@]} guesses"
done

exit;