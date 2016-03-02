#!/bin/bash
file=$1
while read line
do
    echo $line | grep HEAD
done < $1
