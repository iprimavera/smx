#!/bin/bash
# ^^^^^^^^^ -> Interprete

echo " Bienvenido al generador de edad"
echo " ¿Cual es tu edad?"
read EDAD
echo " Tienes $EDAD"

if [ $EDAD -lt 18 ]; then
echo  "No puedes entrar a la discoteca"
else echo "Si puedes entrar a la discoteca"
exit 0
fi
