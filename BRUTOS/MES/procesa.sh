#! /bin/bash

for i in `ls *.txt`; do
	echo $i
	cat $i | tail -n +6 | head -n -3 | sed 's/\s\s\s*/,/g' | sed 's/^,Estado/Estado/g' | sed '/^$/d' | sed 's/(\d+) (\d+)/$1$2/g' | perl  -lpe 's/(\d\d*)\s(\d\d*)/\1\2/g;' > $i.csv
	echo "$i"
done
