#!/bin/bash
IFS=:
for folder in /etc
do
echo "$folder:"
for file in $folder/*
do
if [ -d $file ]
then
echo " $file"
fi
done
done > etc_dir.txt
echo "Finished, look etc_dir.txt"

