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
if [[ $n -le 43 &&  $hc -ge 21 || $tc -ge 21 ]]
then
if [[ $hc -gt $tc ]]
then
sum=$(( $hc - $tc ))
echo " win with head by difference of "$sum
else
sum=$(( $tc - $hc ))
echo " win with the tail by differnece of "$sum
fi
elif [[ $hc -eq $tc ]]
then 
echo"draw"
elif  [[ $hc -gt $tc ]]
then
sum=$(( $hc - $tc ))
echo " win with head by difference of "$sum
else
sum=$(( $tc - $hc ))
fi

