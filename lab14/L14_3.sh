#!/bin/bash

alphabet="abcdefghijklmnopqrstuvwxyz"

length=$(($RANDOM % 100 + 1))

result=""

for ((i=0; i<length; i++))
do
    index=$(($RANDOM % 26))
    letter="${alphabet:$index:1}"
    result+="$letter"
done

echo "Строка: " $result

