#!/bin/bash
# Haz un Shell Script que compruebe que todos los binarios ejecutables del
# paquete coreutils tienen un manual asociado y que además es un
# fichero que puede ser leído por el usuario. En caso de que alguno de los
# binarios no tenga manual, mostrar un mensaje que lo indique.

paquetes=$(dpkg -L coreutils)
bina=$(dpkg -L coreutils | grep '/bin/')

for i in $paquetes; do
	
	if [[ $i == *'/bin/'* ]]; then
		a+=(${i##*/})
	fi
	
	if [[ $i == *'/man1/'* ]]; then
		b+=(${"${i##*/}"%.*})

	fi
	
done

contador=0

for i in ${a[@]}; do
	echo ${b[$contador]}
	echo $i
	if [[ ${b[$contador]} == "$i" ]]; then
		echo si
	fi
	((contador++))
done

echo ${#a}
echo ${#b}

exit 0
