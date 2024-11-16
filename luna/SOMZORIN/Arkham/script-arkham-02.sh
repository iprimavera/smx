#!/bin/bash

rm -r  $HOME/Arkham/Hangares/Habilitado

mkdir -p $HOME/Arkham/Hangares/Habilitado
mkdir -p $HOME/Arkham/Hangares/Profur
mkdir -p $HOME/Arkham/Hangares/Terrar
mkdir -p $HOME/Arkham/Hangares/Medea

MINU=$(date | cut -d ":" -f 2)

let t=$MINU/5

if [ $t -eq 0 -o $t -eq 3 -o $t -eq 6 -o $t -eq 9 ]; then

	ln -s $HOME/Arkham/Hangares/Terrar $HOME/Arkham/Hangares/Habilitado

elif [ $t -eq 1 -o $t -eq 4 -o $t -eq 7 -o $t -eq 10 ]; then

	ln -s $HOME/Arkham/Hangares/Profur $HOME/Arkham/Hangares/Habilitado

else
	ln -s $HOME/Arkham/Hangares/Medea $HOME/Arkham/Hangares/Habilitado

fi


ls $HOME/Arkham/Hangares/Habilitado

exit 0
