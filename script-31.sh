#!/bin/bash

# script-31 : Students record DBMS
# Author    : Mr. Rabbit

add()
{
    echo
    read -p "Student roll: " roll
    read -p "Student name: " name
    read -p "Student marks: " marks
    
    student="$(grep -E ^$roll $1)"
    
    if [[ -z $student ]]; then
        printf "%-7s\t%-10s\t%s\n" "$roll" "$name" "$marks" >> $1
        echo -e "\nSuccessfully added student $roll."
    else
        echo -e "\nStudent already exists."
    fi
}

update()
{
    echo
    read -p "Student roll: " roll
    read -p "Student name: " name
    read -p "Student marks: " marks
    
    student="$(grep -E ^$roll $1)"
    
    if [[ -n $student ]]; then
        line=$(grep -nE ^$roll $1 | sed 's/:.*//g')
        head -n $((line - 1)) $1 > temp.txt
        printf "%-7s\t%-10s\t%s\n" "$roll" "$name" "$marks" >> temp.txt
        tail -n +$((line + 1)) $1 >> temp.txt
        cat temp.txt > $1
        rm temp.txt
        echo -e "\nSuccessfully updated student $roll."
    else
        echo -e "\nStudent does not exist."
    fi
}

delete()
{
    echo
    read -p "Student roll: " roll
    
    student="$(grep -E ^$roll $1)"
    
    if [[ -n $student ]]; then
        grep -v "^$roll" $1 > temp.txt
        cat temp.txt > $1
        rm temp.txt
        echo -e "\nSuccessfully deleted student $roll."
    else
        echo -e "\nStudent does not exist."
    fi
}

display()
{
    echo
    cat "$1"
}

usage()
{
    echo "usage: ${0##*/} <db_file>"
    exit 1
}

menu()
{
    echo -e "\nChoose action: "
    echo "<1> Add Student"
    echo "<2> Update Student"
    echo "<3> Delete Student"
    echo "<4> Display Database"
    echo -e "<0> Exit\n"
}

[[ -z "$1" ]] && usage

cat $1

while (( 1 )); do
    menu
    read -p "Prompt:> " c
    
    case $c in
        0) break ;;
        1) add $1 ;;
        2) update $1 ;;
        3) delete $1 ;;
        4) display $1 ;;
        *) echo -e "\nInvalid choice."
    esac
done
