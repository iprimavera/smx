#!/bin/bash

#In this exercise, you will write a Shell Script that gathers various statistics about
#the types of files installed by the Scite package on an Ubuntu system. The goal is
#to use the dpkg -L command to list the files installed by the package and then filter
#and process the output to extract useful information.
#The script should:
#1. Categorize files by extension :
#1. .properties
#2. .styled
#3. .folded
#4. .so
#2. Count the number of files for each extension and display the percentage
#from the total.
#3. Show the disk space usage for each files located in /usr/bin.
#This exercise should take around one hour to complete.

scites=$(dpkg -L scite)

properties=$(dpkg -L scite | grep "properties$" | wc -l)
styled=$(dpkg -L scite | grep "styled$" | wc -l)
folded=$(dpkg -L scite | grep "folded$" | wc -l)
so=$(dpkg -L scite | grep "so$" | wc -l)

contando=0

for i in $(dpkg -L scite); do
	if [[ -f $i ]]; then
		((contando=contando + 1))
	fi
done

echo "scale=4; $properties/$contando*100" | bc
echo "scale=4; $styled/$contando*100" | bc
echo "scale=4; $folded/$contando*100" | bc
echo "scale=4; $so/$contando*100" | bc

for i in $(dpkg -L scite | grep "/usr/bin"); do
	if [[ -f $i ]]; then
		du $i
	fi
done

exit 0
