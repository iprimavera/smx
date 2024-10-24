#!/bin/bash

# Debemos crear un Script que genere un número aleatorio de cachorros (ver fragmento del SCRIPT más
# adelante para obtener pistas), por cada uno de los dias del año (no importa si es bisiesto).

# Además debemos contar cuantas veces se ha cumplido la maldición de Shub-Niggurath a lo largo del
# año, el número de cachorros que nacen de una perra es múltiplo de 3, mostrando al final del Script
# cuantas veces se ha ido realizando.

# El Ritual de Expiación consiste en mostrar por pantalla cuantos Cachorros han nacido este año en
# TOTAL, hasta ese momento.

# Además es importante tener en cuenta que si el día en el que nacen los cachorros es luna llena, no se
# debe realizar el ritual, sino que debe mostrar el mensaje:
# SALVADOS POR LA CABRA, SALVADOS POR SHUB-NIGGURATH
# Podéis tener en cuenta que el día 1 de Enero siempre es luna llena.

NUMERO_CACHORROS=$(($RANDOM%9+1))
echo $NUMERO_CACHORROS



exit 0
