#!/bin/bash

while true ;do
	hola=$(ls /proc | wc -l)
	echo $hola
	if [ $hola -le 2000 ]; then
	echo "esta bien"
	else
	echo "estado critico"
	fi
	sleep 10
done

exit 0
