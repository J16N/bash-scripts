#!/bin/bash

# script-18 : Find total number of lines, words and characters in a given file
# Author    : Mr. Rabbit

usage()
{
    echo "usage: ${0##*/} file"
    exit 1
}

[[ -z "$1" ]] && usage
[[ ! -f "$1" ]] && echo "File '$1' does not exist." && exit 1

read lines words chars < <(cat $1 | wc)

echo "The file $1 contains: "
echo "Lines: $lines"
echo "Words: $words"
echo "Characters: $chars"
