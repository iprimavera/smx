#!/bin/bash

echo "Dame un numero"
read n
if [ -d /$HOME/exam-task01 ]; then
	echo "Ya existe ¿Quieres eliminarla?"
	read r
	if [ $r = "si" ]; then
		rm -r /$HOME/exam-task01
		echo "Carpeta eliminada"

	else
		echo "No se elimina"

	fi
fi

mkdir /$HOME/exam-task01

for carpeta in $( seq 1 $n ); do

mkdir /$HOME/exam-task01/sub-folder-$carpeta

done

echo $(ls /$HOME/exam-task01/)

