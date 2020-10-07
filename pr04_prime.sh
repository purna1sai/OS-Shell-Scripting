#!/bin/bash
num=$1
i=2
f=0
while [ $i -le `expr $num / 2` ]
do
if [ `expr $num % $i` -eq 0 ]
then
f=1
fi
i=`expr $i + 1`
done
if [ $f -eq 1 ]
then
echo "$num is not a Prime Number"
else
echo "$num is a Prime Number"
fi

