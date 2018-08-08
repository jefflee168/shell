#!/bin/bash

file="test1.txt"

for i in `cat $file`
do
    echo "The next number is $i"
done
