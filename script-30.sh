#!/bin/bash

# script-29 : Compare two directories which having highest number of files
# Author    : Mr. Rabbit

usage()
{
    echo "usage: ${0##*/} dir1 dir2"
    exit 1
}

[[ -z "$2" ]] && usage

dir1=${1##*/}
dir2=${2##*/}
files1=$(find $1 -maxdepth 1 -type f | wc -l)
files2=$(find $2 -maxdepth 1 -type f | wc -l)

echo "$dir1 contains $files1 files."
echo "$dir2 contains $files2 files."

if (( files1 > files2 )); then
    echo "Hence $dir1 contains maximum files."
else
    echo "Hence $dir2 contains maximum files."
fi
