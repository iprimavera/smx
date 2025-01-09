
#!/bin/bash

#read -p "Dime un número:" num

num=$1

	if [ $# -ne 1 ]; then
	echo "Error : Necesito un unico argumento"
	exit 1
	fi

	let limite=$num-1

echo "El numero indicado es: $num"

Divisor=2
primo="si"


while [ $primo = "si" -a  $Divisor -le $limite ]; do
	let Resto=$num%$Divisor
		if [ $Resto -eq 0 ]; then
		primo="no"
		fi

	let Divisor=$Divisor+1
done
if [ $primo = "si" ]; then
	echo "Es primo"
else
	echo "No es primo"
fi

exit 0
