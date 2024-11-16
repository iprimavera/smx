#!/bin/bash

N=1
while [ -e /tmp/semaforo.txt ]; do
	sleep 1
	echo "Tenemos que estar parados: $N"
	let N=$N+1
done
echo "Palante"
exit 0
