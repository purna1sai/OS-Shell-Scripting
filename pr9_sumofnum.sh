#!/bin/bash
n=$1
s=0
while [ $n -gt 0 ]
do
mod=$((n % 10))
s=$((s + mod))
n=$((n / 10))
done
echo "The sum of digits in $n is $s"
