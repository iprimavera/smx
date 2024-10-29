#!/bin/bash

for d in $( ls -1 /home/ ); do
	if [ -d  "$d/Escritorio" -o -d "$d/Desktop" ]; then
		cp  fichero.txt "$d/Escritorio"
	elif [ -d "$d/Desktop" ]; then
		cp fichero.txt "$d/Desktop"
	else
		echo "Error"
	fi
done
