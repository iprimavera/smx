#!/bin/bash

# Contamos con un Script que comprueba cada vez que se ejecuta qué hora es y crea el acceso directo
# correspondiente al hangar habilitado. NO DEBEMOS PERMITIR QUE LOS OTROS HANGARES ESTÉN
# ACCESIBLES (borrando el enlace anterior será suficiente).

# usar ln para accesos directos con enlaces simbolicos

# 1 0-4 Terrar
# 2 5-9 Profur
# 3 10-14 Medea
# 4 15-19 Terrar
# 5 20-24 Profur
# 6 25-29 Medea
# 7 30-34 Terrar
# 8 35-39 Profur
# 9 40-44 Medea
# 10 45-49 Terrar
# 11 50-54 Profur
# 12 55-59 Medea

declare -A sitios

terra=(0 3 6 9)
profur=(1 4 7 10)
medea=(2 5 8 11)

sitios["Terrar"]=${terra[@]}
sitios["Profur"]=${profur[@]}
sitios["Medea"]=${medea[@]}

mkdir -p $HOME/Arkham/Hangares/Terrar
mkdir -p $HOME/Arkham/Hangares/Profur
mkdir -p $HOME/Arkham/Hangares/Medea

fecha=$(date | cut -d ":" -f 2)
let var=$fecha/5

echo "numero $var"

if ! [ $(ls -1 $HOME/Arkham/Hangares/Habilitado | wc -l) -eq 0 ]; then
	rm -r $HOME/Arkham/Hangares/Habilitado
fi

mkdir -p $HOME/Arkham/Hangares/Habilitado

for i in ${!sitios[@]}; do
	for a in ${sitios[$i]}; do
		if [ $a -eq $var ]; then
			ln -s $HOME/Arkham/Hangares/$i $HOME/Arkham/Hangares/Habilitado
			echo "$i habilitado"
			break 2
		fi
	done
done

#case $var in
#	$terra)
#		ln -s $HOME/Arkham/Hangares/Terrar $HOME/Arkham/Hangares/Habilitado ;;
#	$profur)
#		ln -s $HOME/Arkham/Hangares/Profur $HOME/Arkham/Hangares/Habilitado ;;
#	$medea)
#		ln -s $HOME/Arkham/Hangares/Medea $HOME/Arkham/Hangares/Habilitado ;;
#esac

#for i in $(seq 0 59); do
#	echo -n "minuto: $i;   "
#	let var=$i/5
#	echo $var
#done

ls $HOME/Arkham/Hangares/Habilitado

exit 0
