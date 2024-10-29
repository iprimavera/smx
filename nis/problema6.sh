#!/bin/bash

echo "Dame un numero entre el 1-100"
read numero
if [ $numero -ge 1 ] && [ $numero -le 100 ]; then
decena=$(( (numero + 5) / 10 * 10))
	echo "$decena"
else
	echo "El numero no es valido"
fi
