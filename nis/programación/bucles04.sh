#!/bin/bash

read -p "Introduce el numero de toneladas (sin decimales):" to
echo "Eligue un vagón:"
echo "Titán (t)"
echo "Paquidaremo (p)"
echo "Albatros (a)"
read r
if [ "$r" = "t" ]; then
	let resto=$to/1200
	let x=$to%1200
		if [ $x -eq 0 ]; then
			echo "$resto"
		else
			let y=$resto+1
			echo "$y"
		fi
fi

if [ "$r" = "p" ]; then
	let resto=$to/900
	let x=$to%900
		if [ $x -eq 0 ]; then
			echo "$resto"
		else
			let y=$resto+1
			echo "$y"
		fi
fi

if [ "$r" = "a" ]; then
	let resto=$to/300
	let x=$to%300
		if [ $x -eq 0 ]; then
			echo "$resto"
		else
			let y=$resto+1
			echo "$y"
		fi
fi
exit 0 
