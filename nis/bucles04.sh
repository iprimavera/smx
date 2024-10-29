#!/bin/bash

read -p "Introduce el numero de toneladas (sin decimales):" to

echo "Eligue un vagón:Titán (t) Paquidaremo (p) Albatros (a)"
read r
if $( $r = $t ); then
	let resto=$( 1200%$to )
		if $( $resto = 0); then
			echo "$resto"
		else
			echo " let $resto+1"
		fi
fi

