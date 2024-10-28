#!/bin/bash

echo "Indique su nombre de usuario:"
read nombre

echo  "El nombre introducido es $nombre"
mkdir /tmp/$nombre 

echo "El directorio se ha creado satisfactoriamente"

exit 0
