#!/bin/bash

# script-08 : Menu driven program
# Author    : Mr. Rabbit
# Comments  : Check script-31 for a better alternative to this

menu()
{
    echo
    echo "<1> Get random number."
    echo "<0> Exit"
    echo
}

echo "A sample menu driven program."

while (( 1 )); do
    menu
    read -p "Reply:> "
    
    case "$REPLY" in
        0) break ;;
        1) echo -e "\nRandom: $RANDOM" ;;
        *) echo -e "Invalid Choice."
    esac
done
