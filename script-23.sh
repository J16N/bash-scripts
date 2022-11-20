#!/bin/bash

# script-23 : Grade Calculator
# Author    : Mr. Rabbit

usage()
{
    echo "usage: ${0##*/} <result_file>"
    exit 1
}

[[ -z "$1" ]] && usage

printf "%-7s\t%-10s\t%-8s\t%s\n" "Roll" "Name" "Marks" "Grade" > "result_grade.txt"

while read roll name marks; do
    case $marks in
        100|9[0-9]) grade="O" ;;
        8[0-9]) grade="E" ;;
        7[0-9]) grade="A" ;;
        6[0-9]) grade="B" ;;
        5[0-9]) grade="C" ;;
        4[0-9]) grade="D" ;;
        *) grade="F" ;;
    esac
    
    printf "%-7s\t%-10s\t%-8s\t%s\n" "$roll" "$name" "$marks" "$grade" >> "result_grade.txt"
done < <(tail -n +2 "$1")

echo -e "Result:\n"
cat "result_grade.txt"
