#!/bin/bash

touch /tmp/semaforo.txt
N=0
while [ /bin/true ]; do
	N=$N+1
	if [ $N -le 5 ];then
		echo "Semaforo en rojo $N"
	elif [ $N -le 10 ];then
		let NV=$N-5
		echo "Semaforo en verde $NV"
	elif [ $N -le 12 ];then
		let NA=$N-10
		echo "Semaforo en ambar $NA"
	else
		N=1
	fi
	sleep 1

done
exit 0
