#!/bin/bash

total=0
ritual=0
luna=0

for i in $(seq 365); do

	NUMERO_CACHORROS=$(($RANDOM%9+1))
	let total=$total+$NUMERO_CACHORROS

	if ((i % 28 == 0)) || ((i == 1)); then
		luna=1
	else
		luna=0
	fi

	#Múltiplo
	if (( $NUMERO_CACHORROS % 3 == 0 )); then
		if (( luna == 1 )); then
			echo "SALVADOS POR LA CABRA, SALVADOS POR SHUB-NIGGURATH"
		else
			((ritual=$ritual+1))
		fi
	fi
done

echo "Numero de cachorros totales: $total"
echo "Numero de rituales cumplidos: $ritual"

exit 0
