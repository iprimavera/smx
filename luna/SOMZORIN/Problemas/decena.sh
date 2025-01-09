#!/bin/bash

echo "Dame un número:"
read numero

let unidades=$numero%10
let decena=$numero/10
let decenas=$decena*10

if [ $unidades -lt 5 ]; then
	echo "Este es el resultado $decenas"
else 
	let total=$decenas+10
	echo "Este es el resultado $total"
fi
exit 0
