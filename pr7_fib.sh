#!/bin/bash
n=$1
a=0
b=1
echo "The Fibonacci series of $n is "
for (( i=0; i<n; i++ ))
do
echo "$a"
fn=$((a + b))
a=$b
b=$fn
done

