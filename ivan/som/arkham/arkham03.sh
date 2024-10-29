#!/bin/bash

# se empieza desde el 7 (iglesia del oeste)

# • La entrada del Manicomio está al final de College St.

# • Debe evitar encontrarse con la patrulla, pero debe hacer el recorrido más corto posible.

# • A la patrulla le cuesta 1 hora realizar el recorrido, con lo que sólo debemos tener en cuenta los
# minutos.

# • Cada calle es revisada en 15 minutos y el recorrido es el siguiente:
# 	1. Boundary Street.
# 	2. Crane Street.
# 	3. West Street.
# 	4. Paralela a Crane Street (numero 19).


WEST_STREET_NUMPASOS="100"
BOUNDARY_STREET_NUMPASOS="200"
CRANE_STREET_NUMPASOS="50"
PARALELA_CRANE_STREET_NUMPASOS="50"
COLLEGE_STREET_NUMPASOS="300"

TOTAL_NUMPASOS=0

#####

fecha=$(date | cut -d ":" -f 2)

if [ $fecha -le 43 -a $fecha -ge 28 ]; then
	ruta="boundary street - paralela crane street - college street"
	let TOTAL_NUMPASOS=$BOUNDARY_STREET_NUMPASOS+$PARALELA_CRANE_STREET_NUMPASOS+$COLLEGE_STREET_NUMPASOS
else
	ruta="west street - college street"
	let TOTAL_NUMPASOS=$WEST_STREET_NUMPASOS+$COLLEGE_STREET_NUMPASOS
fi

#####

echo " * Son las $(date) y debes coger la Ruta: $ruta"
echo " * Te costara : $TOTAL_NUMPASOS"

exit 0
