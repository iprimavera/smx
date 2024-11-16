#!/bin/bash
echo "Dame una radio"
read r
echo "La area es"
echo "3.141592*$r^2"|bc
echo "La circunfernacia es"
echo "3.141592^2*$r" |bc
echo "El volumen es"
echo "(4*3.141592*$r^3)/3" |bc
exit 0

