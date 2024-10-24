#!/bin/bash

SEMAFORO_2="Ambar"
SEMAFORO_6="Ambar"
SEMAFORO_8="Ambar"

echo " * Bienvenido al sistema de Trafico de Arkham "
echo " --> Accediendo a RiverStreet"
sleep 0.5
echo " --> Indique que semaforo desea establecer a Verde"
echo " 2)"
echo " 6)"
echo " 8)"
echo -n " Numero de Semaforo ? : "
read SEMAFORO_ACTUAL

case $SEMAFORO_ACTUAL in
	2)
		SEMAFORO_2="Verde"
		SEMAFORO_6="Rojo"
		SEMAFORO_8="Rojo"
	;;
	6)
		SEMAFORO_2="Rojo"
		SEMAFORO_6="Verde"
		SEMAFORO_8="Rojo"
	;;
	8)
		SEMAFORO_2="Rojo"
		SEMAFORO_6="Rojo"
		SEMAFORO_8="Verde"
	;;
	*)
		echo "eso no es un semaforo valido."
		exit 1
	;;
esac

echo " Semaforo Calle 2 : $SEMAFORO_2"
echo " Semaforo Calle 6 : $SEMAFORO_6"
echo " Semaforo Calle 8 : $SEMAFORO_8"
exit 0
