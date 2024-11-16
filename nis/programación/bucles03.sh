#!/bin/bash

read -p "Indica la base:" base
read -p "Indica el multiplicando:" multiplicando
read -p "Indica las repeticiones:" repeticiones

let m=$base*$multiplicando

for i in $( seq $repeticiones); do
	echo "$m"
done
