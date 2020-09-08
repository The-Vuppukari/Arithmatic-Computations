#!/bin/bash -x

read -p "Enter the Input 1:" Input1
read -p "Enter the Input 2:" Input2
read -p "Enter the Input 3:" Input3

i=0

ArthematicOperation1=$(( Input1 + Input2 * Input3 ))

ArthematicOperation2=$(( Input1 * Input2 + Input3 ))

ArthematicOperation3=$(( Input3 + Input1 / Input2 ))

ArthematicOperation4=$(( Input1 % Input2 + Input3 ))

declare -A Dictionary

Dictionary[comp1]=$ArthematicOperation1
Dictionary[Comp2]=$ArthematicOperation2
Dictionary[Comp3]=$ArthematicOperation3
Dictionary[Comp4]=$ArthematicOperation4

for value in `echo ${Dictionary[@]}`
do
	ComputeArray[((i++))]=$value
done

for (( i=0; i<4; i++ ))
do
	for (( j=0; j<4-i-1; j++ ))
	do
		if [[ ${ComputeArray[j]} -lt ${ComputeArray[$((j+1))]} ]]
		then
			temp=${ComputeArray[j]}
			ComputeArray[$j]=${ComputeArray[$((j+1))]}
			ComputeArray[$((j+1))]=$temp
		fi
	done
done

