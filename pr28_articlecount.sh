#!/bin/bash
file=$1
x=0 
if [ $# -ne 1 ]
then
	echo "$0 fileName"
	exit 1
fi
if [ ! -f $file ]
then
	echo "$file not a file"
	exit 2
fi
while read line
do
  l=$(echo $line | tr [:upper:] [:lower:])
for word in $l
if [[$word == "a"] || [$word == "an"] || [$word == "the"]] 
then
	((x++))
fi
done
done < $file
echo "articles : $x"
