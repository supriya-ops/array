#!/bin/bash 

declare -A empDailyWage  
isPartTime=1
isFullTime=2
maxHrsInMonth=10
empRatePerHr=20
noWorkingDays=20

# Var
totalWorkHrs=0
totalWorkingDays=0
function getWorkingHrs() {
		case $1 in
		$isFullTime)
		workHrs=8 ;;
		$isPartTime)
		workHrs=4 ;;
		*)
	       workHrs=0 ;;
		esac
echo $workHrs
}
 
function dailyWage() {
	local workHrs=$1
	wage=$(( $workHrs * $empRatePerHr ))
	echo $wage
}

while [[ $totalWorkHrs -lt $maxHrsInMonth && $totalWorkingDays -lt $noWorkingDays ]]
do
	(( totalWorkingDays++ ))
	workHrs="$( getWorkingHrs $(( RANDOM%3 )) )"
	totalWorkHrs=$(( $totalWorkHrs + $workHrs ))
	empDailyWage[ Day$totalWorkingDays ]="$( dailyWage $workHrs )"
done

totalSalary="$( dailyWage $totalWorkHrs )"
echo "Daily Wage " ${empDailyWage[@]}
echo "All Keys " ${!empDailyWage[@]}
