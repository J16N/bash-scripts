#!/bin/bash

# script-20 : Pattern programming
# Author    : Mr. Rabbit

read -p "Lines: " lines

(( lines % 2 == 0 )) && echo "Number of lines must be odd." && exit 1
(( lines == 1 )) && echo "*" && exit 0

echo
olines=$((lines - 2))
range=$(eval echo {1..$lines..2} {$olines..1..-2})

for i in ${range[@]}; do 
    for ((j = 0; j < lines - i; ++j)); do
        echo -n " "
    done
    
    for ((j = 0; j < i; ++j)); do
        echo -n "* "
    done
    
    echo
done
        
