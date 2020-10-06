#!/bin/bash
val=$1
if [[ $val =~ ^[+-]?[0-9]+$ ]]
then
echo "It is an Integer"
exit
else
echo "It is a String"
exit
fi
