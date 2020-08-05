#!/bin/bash 
read -p "enter  the number of times you want to flip the coin" n
hc=0
tc=0
for (( i=0; i<$n; i++))
do
z=$((RANDOM%2))
if [ $z == 0 ]
then
(( hc++ ))
#echo " head"
else
(( tc ++ ))
#echo "tails"
fi
done
echo " no of head " $hc
echo "no of tails "$tc 
