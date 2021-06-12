#!/bin/bash
# Modify the previous program such that 
#   only the users Alice and Bob are greeted 
#   with their names.

read -p "Hi! What's your name, user?: " name;

if [ ${name^^} == "BOB" -o ${name^^} == "ALICE" ]; then
    echo "Nice to see you again, $name";
fi

exit;