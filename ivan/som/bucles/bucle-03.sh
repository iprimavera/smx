#!/bin/bash

read -p "Dime la base: " base
read -p "Dime el multiplicando: " mult
read -p "Dime las repeticiones: " rep

for i in $(seq $rep); do
	echo $((base*mult))
done

exit 0
