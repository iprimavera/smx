#!/bin/bash

#• La entrada del Manicomio está al final de College St.
#• Debe evitar encontrarse con la patrulla, pero debe hacer el recorrido más
#corto posible.
#• A la patrulla le cuesta 1 hora realizar el recorrido, con lo que sólo
#debemos tener en cuenta los minutos.
#• Cada calle es revisada en 15 minutos y el recorrido es el siguiente:
#1. Boundary Street.
#2. Crane Street.
#3. West Street.
#4. Paralela a Crane Street (numero 19).

WEST_STREET_NUMPASOS="100"
BOUNDARY_STREET_NUMPASOS="200"
CRANE_STREET_NUMPASOS="50"
PARALELA_CRANE_STREET_NUMPASOS="50"
COLLEGE_STREET_NUMPASOS="300"

TOTAL_NUMPASOS=0

let d=$(date | cut -d ":" -f 2)

#Donde estan

if [ $d -le 15 ]; then
	ruta="west st. - college st."
	let TOTAL_NUMPASOS=$($WEST_STREET_NUMPASOS+$COLLEGE_STREET_NUMPASOS)
	echo "Estan en Boundary Street y tu total de pasos son $TOTAL_NUMPASOS"

elif [ $d -le 30 ]; then

	ruta="west st. - college st."
	let TOTAL_NUMPASOS=$($WEST_STREET_NUMPASOS+$COLLEGE_STREET_NUMPASOS)
	echo "Estan en Crane Street y tu total de pasos son $TOTAL_NUMPASOS"

elif [ $d -le 45 ]; then

	ruta="boundary st. - college st."
	let TOTAL_NUMPASOS=$($BOUNDARY_STREET_NUMPASOS+$COLLEGE_STREET_NUMPASOS)
	echo "Estan en West Street y tu total de pasos son $TOTAL_NUMPASOS"

else
	ruta="west st. - college st."
	let TOTAL_NUMPASOS=$WEST_STREET_NUMPASOS+$COLLEGE_STREET_NUMPASOS
	echo "Estan en Paralela de Crane y tu total de pasos son $TOTAL_NUMPASOS"
fi

#echo " * Son las $(date) y debes coger la Ruta: $RUTA"
#echo " * Te costara : $TOTAL_NUMPASOS"


exit 0
