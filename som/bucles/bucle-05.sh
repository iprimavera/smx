#!/bin/bash

read -p "Indique las toneladas de uva: " uva

uva_decimal=${uva#*.}
uva_entero=${uva%.*}

primer_decimal=$(cut -c 1 <<< "$uva_decimal")

if ((primer_decimal >= 5)); then
	((uva_entero ++))
fi

echo "*	Modelo Titan (tecla t)
*	Modelo Paquidermo (tecla p)
*	Modelo Albatros (tecla a)"
while true; do
	read -n1 modelo
	echo ""
	if [[ $modelo =~ [tpa] ]]; then
		break
	else
		echo "*** Modelo incorrecto"
	fi
done

transporte() {
	let vagones=$uva_entero/$1
	if ((uva_entero%$1 != 0)); then
		((vagones ++))
	fi
	echo "se necesitan $vagones vagones"
}

case $modelo in
	a)
		transporte 300
		;;
	t)
		transporte 1200
		;;
	p)
		transporte 900
		;;
esac

exit 0
