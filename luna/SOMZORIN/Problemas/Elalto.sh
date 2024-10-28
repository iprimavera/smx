#!/bin/bash

echo "Dame un número:"
read numero1
echo "Dame un número:"
read numero2
echo "Dame un número:"
read numero3

if [ $numero1 -ge $numero2 -a $numero1 -ge $numero3 ]; then
	echo "Numero 1 : $numero1 >>>> todos"
elif [ $numero2 -ge $numero1 -a $numero2 -ge $numero3 ]; then
	echo "Numero 2 : $numero2 >>>> todos"
else
	echo "Numero 3 : $numero3 >>>> todos"
fi

exit 0
