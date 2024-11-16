#!/bin/bash
echo "¿Que hora es?"
read hora
if [ "$hora" -ge 23 ] || [ "$hora" -lt 6 ]; then
	echo "De madrugada"
elif [ "$hora" -ge 6 ] && [ "$hora" -lt 11 ]; then
	echo "Buenos dias"
elif [ "$hora" -ge 12 ] && [ "$hora" -lt  19 ]; then
	echo "Buenas tardes"
else
	echo "Buenas noches"
fi

