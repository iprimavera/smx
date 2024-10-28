#!/bin/bash

read -p "Dime un número:" base

read -p "Dime otro número:" multiplicando

read -p "Dime un último número:" repeticiones 

let m=$base*$multiplicando

for i in $( seq $repeticiones ); do
	echo "Tu multiplicación es: $m"
done

exit 0
