#!/bin/bash
file=$1
while read line
do 
    if [[ $line == *"HEAD"* ]]
    then
	((headReq++))
    elif [[ $line == *"GET"* ]]
    then
	((getReq++))
    fi
done < $1
echo $headReq
echo $getReq
