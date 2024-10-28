#!/bin/bash

while true ; do

l=$(ls /proc/|wc -l)

echo " Vamos por aqui: $l"

	if [ $l -ge 293 ]; then
		echo "El sistema se encuentra en un estado crítico"
	else
		echo "El sistema se encuentra en buen estado"
	fi

sleep 10

done

exit 0
