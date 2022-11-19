#!/bin/bash

# script-19 : Find prime numbers between given range
# Author    : Mr. Rabbit

is_prime()
{
    last_el=$(echo "sqrt($1) + 1" | bc)
    for ((i = 2; i < last_el; ++i)); do
        if (($1 % $i == 0)); then
            return 1
        fi
    done
    
    if (( $1 > 1 )); then return 0; fi
    return 1
}


read -p "Range (space seperated): " a b
echo -e "\nThe prime numbers between $a and $b are: "
    
for (( n = a; n <= b; ++n )); do
    if is_prime $n; then echo -n "$n "; fi
done 
