#!/bin/bash -x

read -p "Enter the Input 1:" Input1
read -p "Enter the Input 2:" Input2
read -p "Enter the Input 3:" Input3

ArthematicOperation1=$(( Input1 + Input2 * Input3 ))

ArthematicOperation2=$(( Input1 * Input2 + Input3 ))

ArthematicOperation3=$(( Input3 + Input1 / Input2 ))

ArthematicOperation2=$(( Input1 % Input2 + Input3 ))
