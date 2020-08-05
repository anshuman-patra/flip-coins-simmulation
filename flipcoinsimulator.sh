#!/bin/bash 

z=$((RANDOM%2))
if [ $z == 0 ]
then
echo " head"
else
echo "tails"
fi

