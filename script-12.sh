#!/bin/bash

# script-12 : Display list of processes of users
# Author    : Mr. Rabbit

users=$(tr '\n' ' ' < <(cat /etc/passwd | grep '/home' | cut -d : -f 1))

for user in ${users[*]}; do
    echo "Process of $user: "
    echo "------------------"
    ps -o 'pid,%cpu,%mem,stat,start,comm' -u "$user"
    echo
done
