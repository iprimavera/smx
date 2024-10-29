#!/bin/bash

if [ $# -ne 1 ]; then
	echo "Error: Necesito un unico argumento"
	exit 1
fi

NUM=$1
	echo "El numero indicado es: $NUM"

let limite=$NUM-1
Divisor=2
PRIMO="si"
while [ $PRIMO = "si" -a $Divisor -le $limite ]; do

	let RESTO=$NUM%$Divisor

	if [ $RESTO -eq 0 ]; then
		PRIMO="no"
	fi

	let Divisor=$Divisor+1

done

if [ $PRIMO = "si" ]; then
	echo "$NUM es primo"
else
	echo "$NUM no es primo"
fi

exit 0
