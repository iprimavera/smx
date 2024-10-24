#!/bin/bash

for i in $(ls -1 /home/); do
	b=$(du -sm /home/$i)
	b=$(echo $b|cut -d " " -f1)
	if [ $b -ge 100 ]; then
		echo "$i ha excedido la capacidad: $b"
	else
		echo "$i tiene un tamaño correcto: $b"
	fi
done
if [ $(du -sm /root/) -ge 100 ]; then
	echo "root ha excedido la capacidad: $b"
else
	echo "root tiene el tamaño correcto: $b"
fi

exit 0
