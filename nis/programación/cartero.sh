#!/bin/bash
# ^^^^^^^^^ -> Interprete

echo " Bienvenido al generador de carteros"_
echo "_¿Numero de la puerta?"
read X
let resto=$X%2

if [ $resto -eq 0 ]; then
	echo "Derecha"
else
	echo "Izquierda"
fi

exit 0



