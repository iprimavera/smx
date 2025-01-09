#!/bin/bash

ls $HOME

echo " Indique el Nombre de la Carpeta: "
read carpeta

echo " El Nombre introducido es $carpeta"
touch $HOME/$carpeta/EstuvoAqui.txt

echo " El fichero se ha creado"

 exit 0
