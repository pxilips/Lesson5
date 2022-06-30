#!/bin/bash
folder=/var/log
#echo "$folder:"
for file in $folder
do
#echo "$file"
du -h $file 2>/dev/null |
sort -rn |
sed '{$D; =}' |
sed 'N; s/\n/ /' |
awk '{printf $1 ":" "\t" $2 "\t" $3 "\n"}' > var_log.txt
done
echo "Finished, look var_log.txt"
