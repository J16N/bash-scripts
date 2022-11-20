#!/bin/bash

# script-26 : Pay-slip calculator
# Author    : Mr. Rabbit

echo "Pay-slip Calculator"
read -p "Basic pay: " bp

da=$(echo "scale=2; 0.45 * $bp" | bc)
hra=$(echo "scale=2; 0.15 * $bp" | bc)
pf=$(echo "scale=2; 0.1 * $bp" | bc)
gs=$(echo "scale=2; $bp + $da + $hra + $pf" | bc)

printf "%-10s\t%-10s\t%-10s\t%-10s\t%-10s\n" "Basic Pay" "D.A" "H.R.A" "P.F" "Gross Salary" > pay_slip.txt
printf "%-10s\t%-10s\t%-10s\t%-10s\t%-10s\n" "$bp" "$da" "$hra" "$pf" "$gs" >> pay_slip.txt

echo
cat pay_slip.txt
