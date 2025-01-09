#!/bin/bash


array=(1 3 4 7 10 25 8 5)

for i in ${array[@]}; do
	for j in ${array[@]}; do
		if (( i < j )); then
			temp=$i
			i=$j
			j=$temp
		fi
	done
done

echo "Array ordenado de menor a mayor:"
printf "%s\n" "${array[@]}" | sort -n

exit 0
