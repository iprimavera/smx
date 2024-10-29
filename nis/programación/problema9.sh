#!/bin/bash

pv=90
gv=54
	echo "¿Tipo de locomotora? (p o g)"
read tipo
	echo "Km de viaje:"
read km

case $tipo in
p)
tiempo=$(echo "$km / $pv" | bc -l )
esac
case $tipo in
g)
tiempo=$(echo "$km / $gv" | bc -l )

esac
	echo "El tiempo que le costara a $tipo realizar el trayecto es de $km km  en $tiempo horas"



