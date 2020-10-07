#!/bin/bash
file=$1
counter=0
evenout="evenfile.txt"
oddout="oddfile.txt"
while read line
do
isEvenNo=$( expr $counter % 2 )
if [ $isEvenNo -ne 0 ]
then
echo $line >> $evenout
else
echo $line >> $oddout
fi
(( counter ++ ))
done < $file
echo "Even file - $evenout"
echo "Odd file - $oddout"
