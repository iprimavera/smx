#!/bin/bash

echo "Dame una hora"
read h
echo "Dame los minutos"
read m
mt=$((h*60 +m))
if [ mt % 21 == 0 ]; then
	echo "Hora: $h | Minuto: $m  -> la parada esta permitida"
else
	echo "Hora: $h | Minuto: $m  -> la parada no esta permitida"
fi
