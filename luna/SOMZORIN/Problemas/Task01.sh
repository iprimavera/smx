#!/bin/bash

read -p "Dame un número:" numero

if [ -d /$HOME/exam-task01 ]; then
	read -p " La Carpeta ya existe, quieres eliminarla? (si/no)" respuesta
	
	if [ $respuesta = "si" ]; then
		rm -r /$HOME/exam-task01/
		echo "Ya esta borrada"
	else 
		echo "No la quieres borrar"
		exit 0
	fi
fi

mkdir /$HOME/exam-task01

	for carpeta in $( seq 1 $numero ); do
	mkdir /$HOME/exam-task01/sub-folder-$carpeta
	done

echo $(ls /$HOME/exam-task01/)



