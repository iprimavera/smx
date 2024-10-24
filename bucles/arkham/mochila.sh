#!/bin/bash

#lista de numeros sin repetir entre el 10 100, 40 num
#dado un numero de cosas por el usuario decir cuales son las x cosas de mayor valor

lista=()

for i in $(seq 40); do
	r=$((RANDOM%100+1))
	echo "$r"
done

echo ${lista[@]}

exit 0
