#!/bin/bash
n=$1
r=$(($n%2))
if [ $r -eq 0 ]
then
  echo "$n is an even number"
else
  echo "$n is an odd number"
fi
