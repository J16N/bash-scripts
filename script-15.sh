#!/bin/bash

# script-15 : Print Pascal Triangle
# Author    : Mr. Rabbit

read -p "Lines: " lines
echo

for ((n = 0; n < lines; ++n)); do
    for ((i = 0; i < lines - n - 1; ++i)); do
        printf "%2s" " "
    done

    for ((k = 1, r = 0; r <= n; ++r)); do
        printf "%3d " "$k"
        k=$(( k * (n - r) / (r + 1) ))
    done
    echo
done
