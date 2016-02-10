#!/bin/bash
remainder=$(($1 % 2))

if [ $remainder -eq 0 ]; then 
   echo "Heh?"
else 
   echo "Sleep time"
fi
