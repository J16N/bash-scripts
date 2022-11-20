#!/bin/bash

# script-06 : Find palindrome words from file
# Author    : Mr. Rabbit

usage()
{
    echo "usage: ${0##*/} <word_list_file>"
    exit 1
}

[[ -z "$1" ]] && usage

read -a words < <(cat $1 | sed 's/[.,;]//g')
echo -e "Palindrome words are as follows: "

for word in ${words[*]}; do
    rev_word=$(rev <<< $word)
    if [[ $rev_word == $word ]]; then echo -n "$word "; fi
done
