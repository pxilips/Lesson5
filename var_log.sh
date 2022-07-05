#!/bin/bash
for file in $(find /var/log -maxdepth 1 -type f -print0 |
xargs -0 du -h |
sort -rh)
do
echo $file
done > var_log.txt
echo "Finished, look var_log.txt"

