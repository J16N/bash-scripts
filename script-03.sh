#!/bin/bash

# script-03 : Find GCD of list of numbers
# Author    : Mr. Rabbit

gcd()
{
    c=$(($2 % $1))
    if (( c > 0 )); then
        gcd $c $1
    else
        echo $1
    fi
}

echo "Get G.C.D of list of numbers."
read -p "Enter numbers (space-seperated): " -a numbers
numbers=($(echo ${numbers[*]} | tr ' ' '\n' | sort -n | tr '\n' ' '))

ans=$(gcd ${numbers[0]} ${numbers[1]})
for ((i = 2; i < ${#numbers[*]}; ++i)); do
    ans=$(gcd $ans ${numbers[$i]})
    if (( ans == 1 )); then break; fi
done

echo -e "G.C.D: $ans"
