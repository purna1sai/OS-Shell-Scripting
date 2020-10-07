!/bin/bash
n1=$1
n2=$2
n3=$3
if [[ $n1 == 0 || $n2 == 0 || $n3 == 0 ]]
then
    echo "Arguments are missing"
elif [ $n1 -gt $n2 ] && [ $n1 -gt $n3 ]
then
    echo "$n1 is the biggest number"
elif [ $n2 -gt $n1 ] && [ $n2 -gt $n3 ]
then
    echo "$n2 is the biggest number"
else
    echo "$n3 is the biggest number"
fi
