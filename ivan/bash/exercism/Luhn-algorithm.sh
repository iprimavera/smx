#!/bin/bash

#Given a number determine whether or not it is valid per the Luhn formula.
#The Luhn algorithm is a simple checksum formula used to validate a variety of identification numbers, such as credit card numbers and Canadian Social Insurance Numbers.
#The task is to check if a given string is valid.
#Validating a Number
#Strings of length 1 or less are not valid. Spaces are allowed in the input, but they should be stripped before checking. All other non-digit characters are disallowed.
#Example 1: valid credit card number
#4539 3195 0343 6467
#The first step of the Luhn algorithm is to double every second digit, starting from the right. We will be doubling

#4539 3195 0343 6467
#↑ ↑  ↑ ↑  ↑ ↑  ↑ ↑  (double these)
#If doubling the number results in a number greater than 9 then subtract 9 from the product. The results of our doubling:
#8569 6195 0383 3437
#Then sum all of the digits:
#8+5+6+9+6+1+9+5+0+3+8+3+3+4+3+7 = 80
#If the sum is evenly divisible by 10, then the number is valid. This number is valid!

read -p "give me a number of a credit card: " credit

credit=$(echo $credit | tr -d " ")
mapfile -t array < <(fold -w1 <<< $credit)
last=()

#if ! [ ${#credit} -eq 16 ]; then
#	echo "tarjeta de credito no valida para calcular resultado"
#	exit 1
#fi

#TODO cambiar el if i%2==0 porque no funciona en todas las situaciones por el numero total de digitos

for i in $(seq 0 $((${#credit}-1))); do
	if ((i%2==0)); then
		sum=$((${array[$i]}*2))
		if (($sum>9)); then
			let sum=$sum-9		
		fi
		last+=($sum)
		continue
	fi
	last+=(${array[$i]})
done

sum=0

for i in ${last[@]}; do
	((sum+=i))
done

if ((sum%10==0)); then
	echo "la tarjeta de credito es valida"
else
	echo "la tarjeta de credito NO es valida"
fi

#echo ${last[@]}
#echo $sum

exit 0
