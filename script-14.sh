#!/bin/bash

# script-14 : Print Fibonacci sequence
# Author    : Mr. Rabbit

read -p "No. of terms: " n
echo "The fibonacci sequence upto n terms are as follows: "

for ((i = 0, a = 0, b = 1; i < n; ++i)); do
    if ((i == 0)); then echo -n "$a ";
    elif ((i == 1)); then echo -n "$b ";
    else
        c=$((a + b))
        echo -n "$c "
        a=$b
        b=$c
    fi
done
