#!/bin/bash

# Pide el número de chalecos a coser
echo -n "Dime cuantos chalecos vamos a coser:"
read num_chalecos

# Inicializa el contador de chalecos perfectos
chalecos_perfectos=0

# Recorre cada chaleco
for chaleco in $( seq 1 $num_chalecos); do
    echo "Chaleco $chaleco"
    echo "- Dime cuántos botones tiene: "
    read num_botones

    # Inicializa el contador de agujeros
    total_agujeros=0

    # Recorre cada botón
    for boton in $( seq $num_botones ); do
        read -p "- Agujeros botón $boton: " agujeros
        let total_agujeros=$total_agujeros+$agujeros
    done

    # Muestra el total de agujeros y botones
    echo "Tiene $total_agujeros agujeros y $num_botones botones."

    # Verifica si el chaleco es perfecto
    if (( total_agujeros % num_botones == 0 )); then
        echo "Es un chaleco perfecto."
        chalecos_perfectos=$((chalecos_perfectos + 1))
    else
        echo "Descartado."
    fi
done

# Muestra el total de chalecos perfectos
echo "--> Hay $chalecos_perfectos chaleco(s) perfecto(s)."
