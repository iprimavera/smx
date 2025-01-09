#!/bin/bash
# Haz un Shell Script que compruebe que todos los binarios ejecutables del
# paquete coreutils tienen un manual asociado y que además es un
# fichero que puede ser leído por el usuario. En caso de que alguno de los
# binarios no tenga manual, mostrar un mensaje que lo indique.

read -p "escribe el paquete que comprobar: " elegido

#if [ $(dpkg -l) ]

paquetes=$(dpkg -L $elegido)
cosos=$(dpkg -L $elegido | grep '/man1/')

for i in $paquetes; do
	
	if [[ $i == *'/bin/'* ]]; then
		binarios+=(${i##*/})
	fi
	
	if [[ $i == *'/man1/'* ]]; then
		base=${i##*/}
		manes+=(${base%.1.*})

	fi
	
done
for x in ${binarios[@]}; do

	encontrado="no"
	
	for i in ${manes[@]}; do			
		if [[ "$x" == "$i" ]]; then
			encontrado="si"	
		fi
	done
	
	if [ $encontrado == "no" ]; then
		echo "no se ha encontrado el manual de " $x
		exit 1
	fi

done

for i in $cosos; do
	if [ ! -r $i ]; then
		echo "el manual $i no es legible por el usuario"
		exit 1
	fi
done

echo "el paquete contiene todos sus manuales y es legible"

exit 0
