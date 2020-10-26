#!/bin/bash  
echo "enter the number"
read num
#var
a=0
b=0
temp=$num
while [ $temp -ne 0 ]
do
a=$(($temp%10))
b=$(($b*10+$a))
temp=$(($temp/10))
done
if [ $b -eq $temp ]
then
 echo "pelindome"
else
 echo "not pelindrome"
fi

even=0
odd=0

for (( i=2;i<=$num*$num;i++ ))
do
while [ $(($num%i)) -eq 0 ]
do  
if [ $((i%2)) -eq 0 ]
then
 num[even]=$i
 ((even++))
fi
done
if [ $(($i%2)) -ne 0 ]
then
num2[$odd]=$i
 ((odd++))
fi

num=$((num/$i))
done
echo "even factor ${num[@]}"
echo "odd factor ${num2[@]}"

