
#!/bin/bash

echo "Indique el nombre de la Carpeta:"
read carpeta

echo "El nombre introducido es $carpeta"

	if [ ! -d /tmp/nivel1/ ]; then
	mkdir /tmp/nivel1/
	fi

mkdir /tmp/nivel1/$carpeta

exit 0
