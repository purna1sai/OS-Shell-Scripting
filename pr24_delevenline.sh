#!/bin/bash
file=$1
counter=0
output="output.txt"
while read line
do
isEvenNo=$( expr $counter % 2 )
if [ $isEvenNo -eq 1 ] 
then
echo $line >> $output
fi
(( counter ++ ))
done < $file
4
