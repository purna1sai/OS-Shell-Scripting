#!/bin/bash
function usr()
{
	echo "*************************************************"
}
echo "Your username : $(echo $USER)"
usr # call function
echo "Current date and time : $(date)"
usr
echo "Currently logged on users:"
who
usr