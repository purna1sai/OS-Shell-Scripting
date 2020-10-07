#!/bin/bash
str=$1
for i in $(seq 0 ${#str}) ; do
        revstr=${str:$i:1}$revstr
done
if [ "$str" = "$revstr" ]; then
        echo "$str is a palindrome."
else
        echo "$str is not a palindrome."
fi
