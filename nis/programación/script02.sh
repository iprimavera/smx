#!/bin/bash

# Este Script debe preguntar por nuestro nombre de usuario
# y crear una carpeta en /tmp/
# que tenga ese nombre.

echo " Indique su nombre de usuario : "
read NOMBRE

echo " El Nombre introducido es $NOMBRE "
mkdir /tmp/$NOMBRE

echo " El directorio se ha creado satisfactoriamente"

exit 0
