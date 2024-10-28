#!/bin/bash

echo -n "Dime un año:"
read ano

let x=$ano%4 
let x1=$ano%100
let x2=$ano%400


if [ $x2 -eq 0 -a $x1 -eq 0 -a $x -eq 0 ]; then
echo "Es bisiesto"
else
echo "No es bisiesto" 

fi
exit 0
