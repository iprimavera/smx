#!/bin/bash

read -p "Dame una hora:" hora
read -p "Dame un minuto:" minuto

	if [ $hora -lt 8 ]; then
	echo "Demasiado pronto"
	exit 0
	fi

let s=60*60

	if [ $hora -ge 8 ]; then
	let horasrestantes=$hora-8
	let segundos=$horasrestantes*$s
	echo "Tus Segundos restantes son:$segundos"
	fi
let totalm=$minuto*60
let total=$totalm+$segundos
echo "Tu total es:$total"
exit 0
