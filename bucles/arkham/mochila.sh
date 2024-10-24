#!/bin/bash
echo ""

lista=()

#lista de numeros sin repetir entre el 10 100, 40 num

while [ ${#lista[@]} -lt 40 ]; do

	r=$((RANDOM%90 + 10))

	for i in ${lista[@]}; do
		if [[ $i == $r ]]; then
#			r=$((RANDOM%100+1))
			continue 2
		fi
	done

	lista+=($r)

done

echo ${lista[@]}

#dado un numero de cosas por el usuario decir cuales son las x cosas de mayor valor

read -p "Cuantas cosas quieres llevarte?  " ncosas

cosas=0
newlista=()

for i in $(seq 100 -1 10); do
	if [ $cosas -lt $ncosas ]; then
		for a in ${lista[@]}; do
			if [ $i -eq $a ]; then
				((cosas ++))
				newlista+=($a)
			fi
		done
	fi
done

echo "las cosas que te puedes llevar son: ${newlista[@]}"

echo ""
exit 0
