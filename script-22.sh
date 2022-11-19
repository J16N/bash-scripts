#!/bin/bash

# script-22 : Draw the given triangle
# Author    : Mr. Rabbit

read -p "Lines: " lines

(($lines <= 1)) && echo "Lines must be greater than 1 to make a triangle" && exit 1

echo
range=$(eval echo {1..$lines})
for i in ${range[@]}; do
    for ((j = 0; j < $lines - i; ++j)); do echo -n " "; done
    
    for ((j = 0; j < i; ++j)); do
        if ((j == 0 || j + 1 == i || i == lines)); then
            echo -n "* "
        else
            echo -n "  "
        fi
    done
    
    echo
done
