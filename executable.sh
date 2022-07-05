#!/bin/bash
IFS=:
for folder in /usr/bin
do
echo "$folder:"
for file in $folder/*
do
if [ -x $file ]
then
echo " $file"
fi
done
done > executable.txt
echo "Finished, look executable.txt"

