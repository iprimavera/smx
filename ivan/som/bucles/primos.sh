#!/bin/bash
# dado un numero devuelve si es primo
# un argumento te pide que digas desde donde empieza a contar
# otro argumento te pide que digas cuantos numeros primos te debe dar desde ese
# getops

numero=$1
divisor=$2
divinicial=$2
cuantos_primos=$3
primo=1
let max=$numero-1
encontrados=0

if [ $# -ne 3 ]; then
	echo "se necesitan tres argumentos"
	exit 1
fi
buscar() {
	while [ $primo -eq 1 -a $divisor -le $max ]; do
		if ! ((numero%divisor)); then
#			echo "el numero $numero no es primo porque es divisible entre $divisor"
			primo=0
		fi
		((divisor ++))
	done
	if [ $primo -eq 1 ]; then
		echo "*** el numero $numero es primo si empiezas a contar desde el $divinicial"
		((encontrados ++))
	fi
}

while [ $encontrados -lt $cuantos_primos ]; do
	buscar
	divisor=$divinicial
	((numero ++))
	let max=$numero-1
	primo=1
done

exit 0
