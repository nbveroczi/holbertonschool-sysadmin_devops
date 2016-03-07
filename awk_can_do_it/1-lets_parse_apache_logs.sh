l#!/bin/bash
list=$1
awk '{print $1, $9}' $list
