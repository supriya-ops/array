#!/bin/bash 


isPresent=1
randomCheck=$((RANDOM%2))

if [ $isPresent -eq $randomCheck ]
then
		empRatePerHr=20
		empHrs=4
		salary=$(( $empHrs * $empRatePerHr ))
		echo Employee wage is $salary

fi
