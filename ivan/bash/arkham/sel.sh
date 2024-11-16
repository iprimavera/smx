#!/bin/bash

select opcion in "A" "B" "C"; do
    echo "Elegiste $opcion"
    break  # Salir del menú después de elegir
done

exit 0
