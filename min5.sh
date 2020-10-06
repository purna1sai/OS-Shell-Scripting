#!/bin/bash
str=$1
len=`echo $str | wc -c`
len=`echo $len - 1 |bc`
if [ $len -lt 5 ]
then
echo "There are less than 5 character"
fi
