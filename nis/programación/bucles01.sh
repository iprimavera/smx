#!/bin/bash

L=100

for d in $(/home/ ); do
	if [ -d $d ]; then
	mb=$(du $d)

		if [ $mb -gt $L ]; then
		echo "La carpeta $d ha superado el límite de $L MB (tamaño: $mb MB)."
		fi
	fi
done
