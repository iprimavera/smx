#!/bin/bash

S_2="Ambar"
S_6="Ambar"
S_8="Ambar"

echo " Bienvenido al sistema de Trafico de Arkham "
echo " --> Accediendo a RiverStreet"
sleep 0.5
echo " --> Indique que semaforo desea establecer a Verde"
echo " 2)"
echo " 6)"
echo " 8)"
echo -n " Numero de Semaforo? : "
read S_A
case $S_A in
2)
	S_2="Verde"
	S_6="Rojo"
	S_8="Rojo"
esac

case $S_A in
6)
	S_2="Rojo"
	S_6="Verde"
	S_8="Rojo"
esac
case $S_A in
8)
	S_2="Rojo"
	S_6="Rojo"
	S_8="Verde"

esac

echo " Semaforo Calle 2 : $S_2"
echo " Semaforo Calle 6 : $S_6"
echo " Semaforo Calle 8 : $S_8"

exit 0
