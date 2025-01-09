#!/bin/bash

echo "Dame un radio:"
read radio

echo "El area es "
echo "3.141592*$radio*$radio"|bc
echo "El volumen es"
echo "(4*3.141592*$radio*$radio*$radio)/3"|bc
echo "La circunferencia es"
echo "3.141592*2*$radio"|bc

exit 0
