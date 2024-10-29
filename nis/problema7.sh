#!/bin/bash

echo "Dame una palabra"
read palabra

vocales=$(echo $palabra | grep -o -i "[aeiou]" | wc -l )
	echo "$palabra tiene $vocales vocales"
exit 0
