#!/bin/bash

mkdir -p $HOME/Arkham/Hangares/Terrar
mkdir -p $HOME/Arkham/Hangares/Profur
mkdir -p $HOME/Arkham/Hangares/Medea

MINU=$(date | cut -d ":" -f 2)

let t=$MINU/5

if [ $t -eq 0 -o $t -eq 3 -o $t -eq 6 -o $t -eq 9 ]; then

	rm -r $HOME/Arkham/Hangares/Medea -a $HOME/Arkham/Hangares/Profur

elif [ $t -eq 1 -o $t -eq 4 -o $t -eq 7 -o $t -eq 10 ]; then

	rm -r $HOME/Arkham/Hangares/Medea -a $HOME/Arkham/Hangares/Terrar

else

	rm -r $HOME/Arkham/Hangares/Terrar -a $HOME/Arkham/Hangares/Profur

fi

#ls -l $HOME/Arkham/Hangares/Habilitado

exit 0
