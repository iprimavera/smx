#!/bin/bash

for l in $( ls -1 /home/ ); do
	b=$( du -sm  /home/$l )
	b=$(echo $b|cut -d " " -f1)
	if [ $b -ge 100 ]; then
		echo "Ha superado el límite de espacio: $b"
	else
		echo "Esta correcto $b"
	fi
done

if [ $(du /root/) -ge 100 ]; then
	echo "Has superado la capacidad"
else
	 echo "Esta correcto"
fi

exit 0
